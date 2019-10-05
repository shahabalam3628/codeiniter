<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Reusibility extends CI_Model {
    function __construct() 
	{
        $this->tableName = 'all_users';
        $this->primaryKey = 'id';
    }
	
	public function insertRow($tableName,$fielsName)
	{
		$this->db->insert($tableName,$fielsName);
	}
    
   
   
}