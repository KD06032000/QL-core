<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Students_model extends APS_Model
{
    public $table;
    public $table_school;
    public function __construct()
    {
        parent::__construct();
        $this->table = "students";
        $this->table_school = "student_school";
        $this->column_order = array("$this->table.id", "$this->table.id", "$this->table.msv", "$this->table.full_name", "$this->table.email", "$this->table.date_of_birth","$this->table.gender","$this->table.address","$this->table.created_time","$this->table.updated_time","$this->table.is_option"); //thiết lập cột sắp xếp
        $this->column_search = array("$this->table.id", "$this->table.msv", "$this->table.full_name", "$this->table.email",); //thiết lập cột search
        $this->order_default = array("$this->table.created_time" => "DESC"); //cột sắp xếp mặc định
    }

    public function get_students($id)
	{
		$this->db->select('*');
		$this->db->from("students");
		$this->db->where_in('id', $id);
		$query = $this->db->get()->result();
		return $query;
	}
    
    public function _where_custom($args)
    {
        if (!empty($args['students_info'])) {
            $this->db->join($this->table_school, "$this->table.id = $this->table_school.students_id");
            $this->db->join('schools_translations', "$this->table_school.school_id = schools_translations.id");
        }
    }

    public function getSchoolSelect2($studentId, $lang_code = null)
    {
        if (empty($lang_code)) $lang_code = $this->session->admin_lang ? $this->session->admin_lang : $this->session->public_lang_code;
        $this->db->select("$this->table_school.school_id AS id, schools_translations.title AS text");
        $this->db->from($this->table_school);
        $this->db->join("schools_translations", "$this->table_school.school_id = schools_translations.id");
        $this->db->where('schools_translations.language_code', $lang_code);
        $this->db->where($this->table_school . ".{$this->table}_id", $studentId);
        $data = $this->db->get()->result();
        return $data;
    }

}