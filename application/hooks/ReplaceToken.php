<?php
class ReplaceToken {
  public function replacePlaceholderCode()
  {
      // load the instance
      $this->CI =& get_instance();
       
      // get the actual output
      $contents = $this->CI->output->get_output();
       
	   //print_r($contents);
      // replace the tokens
      $this->CI->load->helper('date');
      $contents = str_replace("[DATETIME]", standard_date(), $contents);
	  
	  // $contents = str_replace("This", 'That', $contents);
       
      // set the output
      echo $contents;
      return;
  }
}

