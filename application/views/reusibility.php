<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="text/css" rel="stylesheet" href="<?php echo base_url('Bootstrap/css/bootstrap.min.css')?>">
<script type="text/javascript" src="<?php echo base_url('Bootstrap/jquery/jquery.min.js');?>"></script>
<script type="text/javascript" src="<?php echo base_url('Bootstrap/js/bootstrap.min.js')?>"></script>
</head>

<body>

<div class="jumbotron text-center">
  <h1><a href="<?php echo base_url('index.php/welcome'); ?>">Goto Home</a></h1>
  <p><a href="<?php echo base_url('index.php/welcome/List_users'); ?>">View Users</a></p> 
</div>

  
<div class="container">
    <center><h5 style="color:green"><?php  if(isset($message)){echo $message;}?></h5></center>
  <form  method="post" action="<?php echo site_url('CodeReusibily/getUserData') ?>">
    <div class="form-group">
      <label for="email">Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter Name" name="name"
       value="">
       <em style="color:red;font-size:10px"><?php echo form_error('name'); ?></em>
       
    </div>
    
    <div class="form-group">
      <label for="pwd">Email:</label>
      <input type="text" class="form-control" id="email" placeholder="Enter Email" name="email" 
      value="">
      <em style="color:red;font-size:10px"><?php  echo form_error('email'); ?></em>
    </div>
    
    
    <div class="form-group">
      <label for="pwd">Mobile:</label>
      <input type="text" class="form-control" id="mobile" placeholder="Enter Mobile No" name="mobile" 
      value="">
      <em style="color:red;font-size:10px"><?php echo form_error('mobile'); ?></em>
    </div>
    
    <div class="form-group">
          <label for="sel1">Gender:</label>
              <select class="form-control" id="gender" name="gender">
              
                <option value="male" >Male</option>
                <option value="female" >Female</option>
                             
              </select>
              <em style="color:red;font-size:10px"><?php echo form_error('gender'); ?></em>
   </div>    
    

    
  
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>





</body>
</html>
