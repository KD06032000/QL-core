<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Student_model extends APS_Model
{
    public $table;
    public function __construct()
    {
        parent::__construct();
        $this->table = "students";
        // $this->table = 'class';
        $this->column_order = array('id', 'id', 'msv', 'full_name', 'email', 'date_of_birth', 'gender','address'); //thiết lập cột sắp xếp
        $this->column_search = array('id', 'msv', 'full_name', 'email', 'date_of_birth', 'gender','address'); //thiết lập cột search
        $this->order_default = array('id' => 'desc'); //cột sắp xếp mặc định
    }
    public function get_student($id) {
        $this->db->select('*');
        $this->db->from("students");
        $this->db->where('id', $id);
        $query = $this->db->get()->result();
        return $query;
    }
    
}