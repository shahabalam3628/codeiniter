<?php
class MY_Conroller extends CI_Controller
{

   
   public function loadViews($view_name,$data)
   {
	   
	   $this->load->view('app.header');
	   $this->load->view($view_name,$data);
   }
   
   public function insertRecord($table_name,$fields_name,$values)
   {
      
   }
   
}


?>