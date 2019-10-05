<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

   public function __construct()
	{
	  parent::__construct();
	  $this->load->library(array('form_validation','upload','session','encrypt','encryption'));
	  $this->load->helper(array('form','url','captcha'));
	  $this->load->model('Mymodel');
	}



   public function submit_form()
   {
      
       $this->form_validation->set_rules('name','Name','required');
       $this->form_validation->set_rules('email','Email','required');
       $this->form_validation->set_rules('mobile','Mobile','required');
       $this->form_validation->set_rules('address','Address','required');

      

      if($this->form_validation->run()==FALSE)
      {
       
          $this->load->view("students");
      }else
      {
        
      	$name = $this->input->post('name');
        $email = $this->input->post('email');
        $mobile = $this->input->post('mobile');
        $address = $this->input->post('address');

      $data=array(
                    'sname'=>$name,
                    'email'=>$email,
                    'mobile'=>$mobile,
                    'address'=>$address
                 );
           $student_inserted['success_message']=$this->Mymodel->insert_students($data);
           $student_inserted['success_message']='Record Inserted';
           //echo gettype($student_inserted['success_message']); die;
           
           $this->load->view("students",$student_inserted);

           //redirect('welcome/submit_form', 'refresh');

      }



      

   }


	public function encryption_library_demo()
	{
	  $key = $this->encryption->create_key(16);
      echo $key."<br>";
	  $plain_text = 'This is a plain-text message!';
      $ciphertext = $this->encryption->encrypt($plain_text);
	  echo $ciphertext;
	  
	  
	}
	
	public function encrypt_class_demo()
	{
	     
		$msg = 'Shahahb';
        echo "<h2>Encrypt Message</h2>";
		$encrypted_string = $this->encrypt->encode($msg);
		echo $encrypted_string;
		
		$msg="92Lyam9aGHOCFCEt6kqztWHsTr5/KQbNvP7i/nNEEvXM/e/i+fuDT0w5V+HlEwj+yVQFSJSlUH7laiGss7suYA==";
		$decryp_string = $this->encrypt->decode($msg);
		echo "<h2>Dencrypt Message</h2>";
		echo $decryp_string;
	}
	
	
	
	public function captcha_example()
	{
		
		
		     $random_number = substr(number_format(time() * rand(),0,'',''),0,6);
		     $vals = array(
             'word' => $random_number,
             'img_path' => './capcha_images/',                //   Where Store Captcha Created Images 
             'img_url' => base_url().'capcha_images/',        //   
             'font_path' => './path/to/fonts/texb.ttf',
             'img_width' => 200,
             'img_height' => 50,
             'expiration' => 7200,
			 'colors'        => array(
                                         'background' => array(500, 645, 755),
                                         'border' => array(245, 555, 555),
                                         'text' => array(0, 0, 0),
                                         'grid' => array(255, 40, 40)
                                      )
            );
      $data['captcha'] = create_captcha($vals);
      $this->session->set_userdata('captchaWord',$random_number);
	  // echo $this->session->userdata('captchaWord'); 
      $this->load->view('capcha_view',$data);
	}
	
	public function uplodad_files()
	{
	         
	   $this->form_validation->set_rules('name','Name','required');
	   $this->form_validation->set_rules('email','Email','required');
	   $this->form_validation->set_rules('mobile','Mobile','required');

	   
	   
	   
	   if($this->form_validation->run()==false)
	   {
	     
		 $this->load->view('upload_files_view');
	   }
	   else
	   {
	     //print_r($array);
		 
		 
		   		   
		   
		   
		   
		   $config['upload_path']='./images/';
           $config['allowed_types'] = 'pdf|doc|xlsx|jpg|txt'; 
           $config['max_size']      = 100; 
           $config['max_width']     = 1024; 
           $config['max_height']    = 768; 
		   $this->upload->initialize($config);
		   
		   if (!$this->upload->do_upload('image'))
		   {
            $error['error_message']= $this->upload->display_errors(); 
			//print_r($error['dd']); die();
			$array['error_message']=$error['error_message'];
			$this->load->view('upload_files_view',$array);
		   }
			
         else { 
		  
		  /*   Note:  Upload ke else part me sara code likhan hai  */
		 
		 
                 $data = array('upload_data' =>$this->upload->data());
			     $upload_data = $this->upload->data(); 
                 $file_name =   $upload_data['file_name'];
				 
				 /*   Note:  ye code hamesha sahi jagah pe likha a/c to situation $array tak ka  */
				 
				 $name=$this->input->post('name');
		         $email=$this->input->post('email');
		         $mobile=$this->input->post('mobile');
		         $gender=$this->input->post('gender');
		         $hobbies=implode(',',$this->input->post('hobbies[]'));

				 
				 $array=array(
						 'name'=>$name,
						 'email'=>$email,
						 'mobile'=>$mobile,
						 'gender'=>$gender,
						 'hobbies'=>$hobbies,
						 'user_image'=>$file_name
					   );

			 
		   $array['inserted']= $this->Mymodel->upload_image($array);
		   $array['message']= "Record Added Succesfully";
       	   $this->load->view('upload_files_view',$array);

				 
					
             } 
		   
			  
		   }

			 
			 
			 
			 
			 
	}
	
	
	public function custom_message_test()
	{
	  $this->form_validation->set_rules('name','Name','callback_form_validation_test');  //'callback' prefix must be used declation time
	  $this->form_validation->set_rules('email','Email','required|valid_email');
	  $this->form_validation->set_rules('mobile','Mobile','required');
	  
	      $name=$this->input->post('name');
	      $email=$this->input->post('email');
	      $mobile=$this->input->post('mobile');
	      $address=$this->input->post('address');

	  
	  
	  if($this->form_validation->run()==FALSE)
	  {
		  $this->load->view('custom_message_view');
	  }
	  else
	  {
		  
		  $data[]="Record Succesfully inserted";
		  $this->load->view('custom_message_view',$data);
	  }
	  
	  
	  
	
	}
	
	
	public function form_validation_test($name)
	{
	   if(empty($name))
	    {
		  $this->form_validation->set_message('form_validation_test', 'This is custom error message.');
          return FALSE; 
	    }
		
		
	}
	
	
	
	public function index()


	{
		
		$data['success']=$this->Mymodel->view_users();
		$this->load->view('index.php',$data);
	}
	
	public function List_users()
	{
		
		$data['success']=$this->Mymodel->view_users();
		$this->load->view('list',$data);
	
	}
	
	public function insertusers()
	{
	   
	   
	   $this->form_validation->set_rules('name','Name','required');
	   $this->form_validation->set_rules('email','Email','required');
	   $this->form_validation->set_rules('mobile','Mobile','required');
	   
	   
	   
	   if($this->form_validation->run()==false)
	   {
	     
		 $this->load->view('insert_users');
	   }
	   else
	   {
	     //print_r($array);
		 
		 
		   $name=$this->input->post('name');
		   $email=$this->input->post('email');
		   $mobile=$this->input->post('mobile');
		   $gender=$this->input->post('gender');
		   $hobbies=implode(',',$this->input->post('hobbies[]'));
			  
		   $array=array(
						 'name'=>$name,
						 'email'=>$email,
						 'mobile'=>$mobile,
						 'gender'=>$gender,
						 'hobbies'=>$hobbies
					   );
		   
			 
			 
		   $data['inserted']= $this->Mymodel->insert_all_users($array);
		   $data['message']= "Record Added Succesfully";
       	   $this->load->view('insert_users',$data);
	   }
	   
	   
	}
	
	public function updateusers($userid)
	{
	 
	 
	     $this->form_validation->set_rules('name','Name','required');
		 $this->form_validation->set_rules('email','Email','required|valid_email');
		 $this->form_validation->set_rules('mobile','Name','required');
		 $this->form_validation->set_rules('gender','Gender','required');
		
		 
		 
		 
		 if($this->form_validation->run()==false)
		 {

			$this->load->model('Mymodel');
	        $data['updatedata']=$this->Mymodel->selectParticulartRecord($userid);		
	        $this->load->view('update_users',$data);
		 }
		 else
		 {
              //print_r($data);
				 $name=$this->input->post('name');
				 $email=$this->input->post('email');
				 $mobile=$this->input->post('mobile');
				 $gender=$this->input->post('gender');
				 $hobbies=implode(',',$this->input->post('hobbies')); 
				 $data=array(
		              'name'=>$name,
					  'email'=>$email,
					  'mobile'=>$mobile,
					  'gender'=>$gender,
					  'hobbies'=>$hobbies
					);
					
			    $this->load->model('Mymodel');
			    $data['updated']=$this->Mymodel->updatedata($userid,$data);
			    $data['message']="Update Successfully";	
			    
			    redirect('welcome/List_users',$data);
		 }
		 
	 
	 
	 
	 
	  
	}

	
	
}
