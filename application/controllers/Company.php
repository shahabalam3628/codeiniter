<?php
class Company extends CI_Controller
{

	public function __construct()
	{
        parent::__construct();
        $this->load->library(array('form_validation','upload','session','encrypt','encryption'));
        $this->load->helper(array('form','url','captcha'));


	}

	public function index()
	{
       //$this->load->view('company_view');
	   echo "Base url ".base_url()."<br>";
	   echo "Site url ".site_url()."<br>";
	   
	}

	public function insert_company()
	{
		echo "GGGGGGGGGGGGGGGGGGG";
	}
}

 ?>