<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Students extends Admin_Controller
{
    protected $_data;
    protected $_name_controller;
    public function __construct()
    {
        parent::__construct();
        //tải thư viện
        $this->lang->load('students_lang');
        $this->load->model('Students_model');
        $this->_data = new Students_model();
        $this->_name_controller = $this->router->fetch_class();
        $this->session->category_student = $this->_name_controller;
    }

    public function index()
    {
        $data['heading_title'] = 'SINH VIÊN';
        $data['heading_description'] = "Danh sách sinh viên";
        /*Breadcrumbs*/
        $this->breadcrumbs->push('Trang chủ', base_url());
        $this->breadcrumbs->push($data['heading_title'], '#');
        $data['breadcrumbs'] = $this->breadcrumbs->show();
        /*Breadcrumbs*/
        $data['main_content'] = $this->load->view($this->template_path . $this->_name_controller . '/index', $data, TRUE);
        $this->load->view($this->template_main, $data);
    }

     /*
     * Ajax trả về datatable
     * */
    public function ajax_list()
    {
        $this->checkRequestPostAjax();
        $post = $this->input->post();
        $length = $post['length'];
        $no = $post['start'];
        $page = $no / $length + 1;
        if (!empty($post['option'])) {
            $params['is_option'] = intval($post['option']) - 1;
        }
        $params['school_id'] = !empty($post['school_id']) ? $post['school_id'] : null;
        $params['page'] = $page;
        $params['limit'] = $length;
        $list = $this->_data->getData($params);
        $data = array();
        if (!empty($list)) foreach ($list as $item) {
                    $no++;
                    $row = array();
                    $row[] = $item->id;
                    $row[] = showCenter($item->id);
                    $row[] = $item->msv;
                    $row[] = $item->full_name;
                    $row[] = $item->email;
                    $row[] = showStatusStudents($item->is_option);
                    $row[] = $item->date_of_birth;
                    //thêm action
                    $action = button_action($item->id);
                    $row[] = $action;
                    $data[] = $row;
        }
        $total = $this->_data->getTotal($params);
        $output = array(
            "draw" => $post['draw'],
            "recordsTotal" => $this->_data->getTotalAll(),
            "recordsFiltered" => $total,
            "data" => $data,
        );
        $this->returnJson($output);
    }

     /*
     * Ajax xử lý thêm mới
     * */
    public function ajax_add()
    {
        $data_store = $this->_convertData();
        unset($data_store['id']);
        if ($id_post = $this->_data->save($data_store)) {
            // log action
            $action = $this->router->fetch_class();
            $note = "Insert $action: " .$id_post;
            $this->addLogaction($action, $note);
            $message['type'] = 'success';
            $message['message'] = $this->lang->line('mess_add_success');
        } else {
            $message['type'] = 'error';
            $message['message'] = $this->lang->line('mess_add_unsuccess');
        }
        die(json_encode($message));
    }

    /*
     * Ajax lấy thông tin
     * */
    public function ajax_edit($id)
    {
        $data = (array)$this->_data->getById($id);
        $data['school_id'] = $this->_data->getSchoolSelect2($id);
        die(json_encode($data));
    }

    /*
     * Cập nhật thông tin
     * */
    public function ajax_update()
    {
        $data_store = $this->_convertData();
        $response = $this->_data->update(array('id' => $this->input->post('id')), $data_store, $this->_data->table);
        if ($response != false) {
            // log action
            $action = $this->router->fetch_class();
            $note = "Update $action: " . $data_store['id'];
            $this->addLogaction($action, $note);
            $message['type'] = 'success';
            $message['message'] = $this->lang->line('mess_update_success');
        } else {
            $message['type'] = 'error';
            $message['message'] = $this->lang->line('mess_update_unsuccess');
        }
        die(json_encode($message));
    }

    public function ajax_delete($id)
    {
        $response = $this->_data->delete(['id' => $id]);
        if ($response != false) {
            //xóa school của students
            $this->_data->delete(["{$this->_name_controller}_id" => $id], $this->_data->table_school);
            // log action
            $action = $this->router->fetch_class();
            $note = "Update $action: $id";
            $this->addLogaction($action, $note);
            $message['type'] = 'success';
            $message['message'] = $this->lang->line('mess_delete_success');
        } else {
            $message['type'] = 'error';
            $message['message'] = $this->lang->line('mess_delete_unsuccess');
            $message['error'] = $response;
            log_message('error', $response);
        }
        die(json_encode($message));
    }

    public function ajax_load()
    {
        $this->checkRequestGetAjax();
        $term = $this->input->get("q");
        $id = $this->input->get('id') ? $this->input->get('id') : 0;
        $params = [
            'is_option' => 1,
            'not_in' => ['id' => $id],
            'search' => $term,
            'limit' => 50,
            'order' => array('created_time' => 'desc')
        ];
        $list = $this->_data->getData($params);
        if (!empty($list)) foreach ($list as $item) {
            $item = (object)$item;
            $json[] = ['id' => $item->id, 'text' => $item->title];
        }
        $this->returnJson($json);
    }

    private function _validate()
    {
        $this->checkRequestPostAjax();
        $rules = [
            [
                'field' => 'full_name',
                'label' => 'Họ và tên',
                'rules' => 'trim|xss_clean|max_length[50]|callback_validate_html'
            ],
            [
                'field' => 'school_id[]',
                'label' => $this->lang->line('from_category'),
                'rules' => 'required'
            ],
            [
                'field' => 'msv',
                'label' => 'Mã sinh viên',
                'rules' => 'trim|xss_clean|max_length[50]|callback_validate_html'
            ],
            [
                'field' => 'email',
                'label' => 'Email',
                'rules' => 'required|trim|valid_email',
            ],
            [
                'field' => 'date_of_birth',
                'label' => 'năm sinh',
                'rules' => 'required|callback_date_birth|trim',
            ],
        ];
        $this->form_validation->set_rules($rules);
        if ($this->form_validation->run() === false) {
            $this->return_notify_validate($rules);
        }
    }

    private function _convertData()
    {
        $this->_validate();
        $data = $this->input->post();
        if (!in_array($data['is_option'], [0, 1, 2])) $data['is_option'] = 0;
        if (empty($data['date_of_birth']) || !isDateTime($data['date_of_birth'])) $data['date_of_birth'] = date('Y-m-d');   
        else $data['date_of_birth'] = convertDate($data['date_of_birth']);
        return $data;
    }

    public function date_birth($date)
    {
        $date = str_replace('/','-',$date);
        $time = date('Y',strtotime($date));
        $currentTime = date('Y',mktime(0,0,0,0,0,2024));
        if (!empty($time)) {
            if (($currentTime - $time) < 18) {
                $this->form_validation->set_message('date_birth', '%s ' . ' phải lớn hơn 18 tuổi');
                return false;
            }
        }
        return true;
    }
}