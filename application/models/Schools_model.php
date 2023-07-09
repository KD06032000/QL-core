<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Schools_model extends APS_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->table = "schools"; // alias A
        $this->table_trans = "schools_translations";//bảng bài viết // alias B
        $this->table_category = "schools_category";//bảng bài viết // alias D
        $this->column_order = array("$this->table.id", "$this->table.id", "$this->table_trans.title", "$this->table.is_status", "$this->table.order", ); //thiết lập cột sắp xếp
        $this->column_search = array("$this->table.id", "$this->table_trans.title"); //thiết lập cột search
        $this->order_default = array("$this->table.created_time" => "DESC"); //cột sắp xếp mặc định
    }
}