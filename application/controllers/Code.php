<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Code extends CI_Controller
{
	
	public function __construct()
	{
		parent::__construct();
		$this->load->library(array('form_validation','session'));
		$this->load->helper(array('url'));
	}
	public function addRow($tableName,$fields,$values)
	{
	  $this->load->view('reusibility');
	}
	
	
}




?>