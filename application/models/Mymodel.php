<?php

class Mymodel extends CI_Model
{
  public function __construct()
  {
    $this->load->database();
  }

  public function insert_students($data)
  {
    $this->db->insert('students',$data);
  }
  
  
  public function upload_image($array)
  {
	 // print_r($array); die;
	  $this->db->insert('upload_file_demo',$array);
  }
  
  public function insert_all_users($array)
  {
    $this->db->insert('all_users',$array);
  }
  
  
  public function view_users()
  {
    $this->db->select("*");
	$this->db->order_by('id','DESC');
	$query=$this->db->get('all_users');
	//print_r($query->result());
	return $query->result();
  }
  public function selectParticulartRecord($userid)
  {
    $this->db->select("*");
	$this->db->where('id',$userid);
	$query=$this->db->get('all_users');
	//print_r($query->result());
	return $query->result();
  }
  
  
  
    public function updatedata($id,$data)
    {
		
		$this->db->where('id',$id);
		$this->db->update('all_users',$data);
		
    }
  
  
}

?>