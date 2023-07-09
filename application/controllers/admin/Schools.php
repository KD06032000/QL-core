<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Schools extends Admin_Controller
{
    protected $_data;
    protected $_name_controller;

    public function __construct()
    {
        parent::__construct();
        //tải thư viện
        $this->lang->load('schools_lang');
        $this->load->model('Schools_model');
        $this->_data = new Schools_model();
        $this->_name_controller = $this->router->fetch_class();
    }

    public function index()
    {
        $data['heading_title'] = "Trường";
        $data['heading_description'] = "Danh sách trường học";
        /*Breadcrumbs*/
        $this->breadcrumbs->push('Trang chủ', base_url());
        $this->breadcrumbs->push($data['heading_title'], '#');
        $data['breadcrumbs'] = $this->breadcrumbs->show();
        /*Breadcrumbs*/
        $data['main_content'] = $this->load->view($this->template_path . $this->_name_controller . '/index', $data, TRUE);
        $this->load->view($this->template_main, $data);
    }

    public function ajax_load($type)
    {
        $this->checkRequestGetAjax();
        $term = $this->input->get("q");
        $id = $this->input->get('id') ? $this->input->get('id') : 0;
        $params = [
            'category_studnet' => !(empty($type)) ? $type : null,
            'is_status' => 1,
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

    public function ajax_list()
    {
        $this->checkRequestPostAjax();
        $post = $this->input->post();

        $length = $post['length'];
        $no = $post['start'];
        $page = $no / $length + 1;

        if (!empty($post['status'])) {
            $params['is_status'] = intval($post['status']) - 1;
        }
        $params['page'] = $page;
        $params['limit'] = $length;

        $list = $this->_data->getData($params);
        $data = array();
        if (!empty($list)) foreach ($list as $item) {
            $no++;
            $row = array();
            $row[] = $item->id;
            $row[] = showCenter($item->id);
            $row[] = $item->title;
            $row[] = showStatus($item->is_status);
            $row[] = showOrder($item->id, $item->order);

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
        $this->returnJson($output);
    }

    //
    public function ajax_add()
    {
        $data_store = $this->_convertData();
        unset($data_store['id']);
        if ($id_post = $this->_data->save($data_store)) {
            // log action
            
            $action = $this->router->fetch_class();
            $note = "Insert $action: " . $id_post;
            $this->addLogaction($action, $note);
            $message['type'] = 'success';
            $message['message'] = $this->lang->line('mess_add_success');
        } else {
            $message['type'] = 'error';
            $message['message'] = $this->lang->line('mess_add_unsuccess');
        }
        die(json_encode($message));
    }

    public function ajax_edit($id)
    {
        $data = (array) $this->_data->getById($id);
        die(json_encode($data));
    }

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
            //Xóa translate
            $this->_data->delete(["id" => $id], $this->_data->table_trans);
 
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
    /*
    * Kiêm tra thông tin post lên
    * */
    private function _validate()
    {
        $this->checkRequestPostAjax();
        $rules = [];
        $dataPost = $this->input->post();
        if (!empty($this->config->item('cms_language'))) foreach ($this->config->item('cms_language') as $lang_code => $lang_name) {

            $rulesLang = $this->default_rules_lang($lang_code, [
                'title' => 'Trường học',
            ]);
            $required = $lang_code == 'vi' ? 'required|' : '';
            $rulesLang[] = $this->setRules('address[' . $lang_code . ']', 'Địa điểm', $required . 'trim|xss_clean|callback_validate_html');
            $rules = array_merge($rulesLang, $rules);
        }

        $rules[] = array(
            'field' => 'number',
            'label' => 'Số lượng',
            'rules' => 'trim|callback_validate_html|is_natural'
        );


        $this->form_validation->set_rules($rules);
        if ($this->form_validation->run() == false) {
            if (!empty($rules)) foreach ($rules as $item) {
                if (!empty(form_error($item['field']))) $valid[$item['field']] = form_error($item['field']);
            }
            $this->_message = array(
                'validation' => $valid,
                'type' => 'warning',
                'message' => $this->lang->line('mess_validation')
            );
            $this->returnJson();
        }
    }

    //
    private function _convertData()
    {
        $this->_validate();
        $data = $this->input->post();
        if (!in_array($data['is_status'], [0, 1])) {
            $data['is_status'] = 0;
        }
        return $data;
    }

   
}
