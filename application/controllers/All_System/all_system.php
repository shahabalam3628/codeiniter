<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class all_system extends CI_Controller {

   public function __construct()
	{
	  parent::__construct();
	  $this->load->library(array('form_validation','upload','session','encrypt','encryption'));
	  $this->load->helper(array('form','url','captcha'));
	  $this->load->model('Mymodel');
	}


public function index()
{
	$this->load->view('app/header');
	$this->load->view('app/index');
	$this->load->view('app/footer');
}

public function login()
{
		$this->load->view('app/header');
	    $this->load->view('app/login');
	    $this->load->view('app/footer');
		//echo "aasassas"; 
}

public function registration()
{
	

		$this->load->view('app/header');
	    $this->load->view('app/registration');
	    $this->load->view('app/footer');
	
}





}