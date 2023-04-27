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
        $post = $this->input->post();
        $length = $post['length'];
        $no = $post['start'];
        $page = $no / $length + 1;
        $params['page'] = $page;
        $params['limit'] = $length;
        $list = $this->_data->getData($params);
        $data = array();
        $no = $this->input->post('start');
        
        if (!empty($list)) foreach ($list as $item) {
            $no++;
            $row = array();
            $row[] = $item->id;
            $row[] = showCenter($item->id);
            $row[] = $item->msv;
            $row[] = $item->full_name;
            $row[] = $item->email;
            $row[] = $item->gender ? '<div class="text-center"><span >Nam</span></div>' : '<div class="text-center"><span >Nữ</span></div>';
            $row[] = showCenter(formatDate($item->date_of_birth)) ;
            $row[] = $item->address;
            //thêm action
            $action = button_action($item->id);
            $row[] = $action;
            $data[] = $row;
        }
        
        $output = array(
            "draw" => $this->input->post('draw'),
            "recordsTotal" => $this->_data->getTotalAll(),
            "recordsFiltered" => $this->_data->getTotal($params),
            "data" => $data,
        );
        //trả về json
        die(json_encode($output));
    }
    
    /*
     * Ajax lấy thông tin
     * */
    public function ajax_edit($id)
    {
        $data = (array)$this->_data->getById($id);
        die(json_encode($data));
    }

    /*
     * Ajax xử lý thêm mới
     * */
    public function ajax_add()
    {
        $this->_validate();
        $data_store = $this->input->post();
        if (!empty($date_of_birth) && isDateTime($date_of_birth))
            $data_store['date_of_birth'] = convertDate($date_of_birth);
        if (($this->_data->save($data_store)) !== false) {
            // log action 
            $action = $this->router->fetch_class();
            $note = "Insert $action: " . $this->db->insert_id();
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
     * Cập nhật thông tin
     * */
    public function ajax_update()
    {
        $this->_validate();
        $data_store = $this->input->post();
        $date_of_birth = strip_tags(trim($this->input->post('date_of_birth')));
        if (!empty($date_of_birth) && isDateTime($date_of_birth))
            $data_store['date_of_birth'] = convertDate($date_of_birth);
        foreach ($data_store as $key => $val) {
            $data_store[$key] = strip_tags(trim($val));
        }
        $response = $this->_data->update(array('id' => $this->input->post('id')), $data_store);
        if ($response != false) {
            // log action
            $action = $this->router->fetch_class();
            $note = "Update $action: " . $this->input->post('id');
            $this->addLogaction($action, $note);
            $message['type'] = 'success';
            $message['message'] = $this->lang->line('mess_update_success');
        } else {
            $message['type'] = 'error';
            $message['message'] = $this->lang->line('mess_update_unsuccess');
        }
        die(json_encode($message));
    }

    /*
     * Xóa một bản ghi
     * */
    public function ajax_delete($id)
    {
        $response = $this->_data->delete(['id' => $id]);
        if ($response != false) {
            // log action
            $action = $this->router->fetch_class();
            $note = "delete $action: $id";
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

    private function _validate($ajax = true)
    {
        if (empty($this->input->post('id')) || !empty($this->input->post('full_name'))) {
            $rules_fullname = 'required|trim|min_length[3]|max_length[50]|trim|xss_clean|callback_validate_html|is_unique[students.full_name]';

        } else {
            $rules_fullname = 'trim|min_length[3]|max_length[50]|trim|xss_clean|callback_validate_html';
        }

        $rules = [
            [
                'field' => 'full_name',
                'label' => 'Họ và tên',
                'rules' => $rules_fullname
            ],
            [
                'field' => 'msv',
                'label' => 'Mã sinh viên',
                'rules' => 'trim|xss_clean|max_length[50]|callback_validate_html'
            ],
            [
                'field' => 'gender',
                'label' => 'Gioi tính',
                'rules' => 'trim|xss_clean|max_length[50]|callback_validate_html'
            ],
            [
                'field' => 'address',
                'label' => 'Địa chỉ',
                'rules' => 'trim|xss_clean|max_length[50]|callback_validate_html'
            ],
            [
                'field' => 'date_of_birthday',
                'label' => 'Ngày sinh',
                'rules' => 'trim|strip_tags|xss_clean|callback_validate_html|callback_max_time_current'
            ],
            [
                'field' => 'email',
                'label' => 'Email',
                'rules' => (empty($this->input->post('id')) || !empty($this->input->post('email'))) ? 'required|trim|valid_email|is_unique[students.email]' : 'trim|valid_email'
            ],
        ];

        $this->form_validation->set_rules($rules);
        if ($this->form_validation->run() === false) {
            $this->return_notify_validate($rules);
        }
    }
}
