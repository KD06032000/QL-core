<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Class_model extends APS_Model
{
    public $table;
    public function __construct()
    {
        parent::__construct();
        $this->table = "class";
        // $this->table = 'class';
        $this->column_order = array('id', 'id', 'class_id', 'class_name', 'siso', 'active', 'class_subject'); //thiết lập cột sắp xếp
        $this->column_search = array('id','class_id', 'class_name', 'siso', 'active', 'class_subject'); //thiết lập cột search
        $this->order_default = array('id' => 'desc'); //cột sắp xếp mặc định
    }
    
    public function get_classroom($id) {
        $this->db->select('*');
        $this->db->from("class");
        $this->db->where('id', $id);
        $query = $this->db->get()->result();
        return $query;
    }
    
}