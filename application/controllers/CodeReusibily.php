<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CodeReusibily extends CI_Controller
{
	
	public function __construct()
	{
		parent::__construct();
		$this->load->library(array('form_validation','session'));
		$this->load->helper(array('url'));
		$this->load->model(array('Reusibilty'));
	}
	public function index()
	{
	  $this->load->view('reusibility');
	}
	
	public function getUserData()
	{
		$this->form_validation->set_rules('name','Name','required|min_length[4]|max_length[255]|alpha');
		$this->form_validation->set_rules('email','Email','required|min_length[4]|max_length[255]|valid_email');
		
		if($this->form_validation->run()==false)
		{
			$this->load->view('reusibility');
		}else
		{
			$data['nane']=$this->input->post('name');
			$data['email']=$this->input->post('email');
			$data['mobile']=$this->input->post('mobile');
			$data['nane']=$this->input->post('gender');
			$data['nane']=$this->input->post('name');
			
			$this->Reusibilty->insertRow('all_users',$data);
		}
		 
	}
}




?>