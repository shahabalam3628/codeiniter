<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="text/css" rel="stylesheet" href="<?php echo base_url('Bootstrap/css/bootstrap.min.css')?>">
<script type="text/javascript" src="<?php echo base_url('Bootstrap/jquery/jquery.min.js');?>"></script>
<script type="text/javascript" src="<?php echo base_url('Bootstrap/jquery/jquery.validate.js');?>"></script>
<script type="text/javascript" src="<?php echo base_url('Bootstrap/js/bootstrap.min.js')?>"></script>
</head>

<body>

<div class="container">
  <center><h2>Students form </h2></center>
  <?php if(isset($success_message)) { echo $success_message;}?>
  <form class="form-horizontal" action="" method="post" id="student_form">

    
  <div class="form-group">
      <label class="control-label col-sm-2" for="email">Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="name" placeholder="Enter Name" name="name" value="<?php echo set_value('name'); ?>">
        <em style="color:red;font-size:10px"><?php  echo form_error('name'); ?></em>
      </div>
  </div>

  <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="email" placeholder="Enter Email" name="email" value="<?php echo set_value('email'); ?>">
        <em style="color:red;font-size:10px"><?php  echo form_error('email'); ?></em>
      </div>
  </div>
  <div class="form-group">
      <label class="control-label col-sm-2" for="email">Mobile:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="mobile" placeholder="Enter Mobile" name="mobile" value="<?php echo set_value('mobile'); ?>">
        <em style="color:red;font-size:10px"><?php  echo form_error('mobile'); ?></em>
      </div>
    </div>

    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Address:</label>
      <div class="col-sm-10">
        <textarea  class="form-control" id="address" placeholder="Enter Address" name="address"><?php echo set_value('address'); ?></textarea>
        <em style="color:red;font-size:10px"><?php  echo form_error('address'); ?></em>
      </div>
    </div>  
    

    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </div>
  </form>
</div>

</body>
</html>

<script type="text/javascript">
$(document).ready(function(){
$("#student_form").validate({
rules:{
name:"required",
email:
{
required:true,
email:true
},
mobile:
{
required:true,
number:true,
minlength:10,
maxlength:10
},
address:'required'


    },
    messages:
        {
        name: "<p style='color:red'>Please Enter User Name</p>",
        email:
        {
        required:"Please Enter An Email Id",
        email:"Please Enter valid Email Id"
        },
        mobile:
        {
        required:"Must Enter Mobile Number",
        number:"Please Enter only digit",
        minlength:"Please Enter Min 10 Digits",
        maxlength:"please Enter Max 10 Digits"
        },
        address:'Please Enter Address'
        
    }
    
    
    
    
});

});
</script>
