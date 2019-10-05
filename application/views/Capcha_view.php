<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Captcha Demo</title>
<link type="text/css" rel="stylesheet" href="<?php echo base_url('Bootstrap/css/bootstrap.min.css')?>">
<script type="text/javascript" src="<?php echo base_url('Bootstrap/jquery/jquery.min.js');?>"></script>
<script type="text/javascript" src="<?php echo base_url('Bootstrap/js/bootstrap.min.js')?>"></script>
</head>
<body>


<div class="jumbotron text-center">
  <h1><a href="<?php echo base_url('index.php/welcome'); ?>">Goto Home</a></h1>
  <p><a href="<?php echo base_url('index.php/welcome'); ?>">View Users</a></p> 
</div>

<div class="container">
  <form class="form-horizontal" method="post">
   
   <div class="form-group">
      <label class="control-label col-sm-2" for="email">Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="name" placeholder="Enter Name" name="name">
      </div>
    </div>
   <div class="form-group">
      <label class="control-label col-sm-2" for="email">Father's Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="fname" placeholder="Enter Father's Name" name="fname">
      </div>
    </div>
   <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="email" placeholder="Enter Email" name="email">
      </div>
    </div>
   
   
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Address:</label>
      <div class="col-sm-10">
        <textarea   class="form-control" id="address" placeholder="Enter Address" name="address"></textarea>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pass" placeholder="Enter password" name="pass">
      </div>
    </div>
    
    
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Captcha:</label>
      <div class="col-sm-10">          
        <img src="<?php echo base_url('capcha_images/'.$captcha['filename']); ?>">
      </div>
    </div>
    
    
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox" name="remember">Remember me</label>
        </div>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default" name="submit">Submit</button>
      </div>
    </div>
  </form>
</div>




</body>
</html>
