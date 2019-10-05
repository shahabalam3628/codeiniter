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
<?php // print_r($success); ?>
<body>

<div class="jumbotron text-center">
  <h1><a href="<?php echo base_url('index.php/welcome'); ?>">Goto Home</a></h1>
  <p><a href="<?php echo base_url('index.php/welcome/insertusers'); ?>">Add New Record</a></p> 
</div>
  <center><p style="color:green"><?php if(isset($message)){echo $message;} ?></p></center>
<div class="container">
	                                          
  <table class="table table-striped table-bordered table-hover table-condensed">
    <thead>
      <tr>
         <tr>
        <th>Sno</th>
        <th>Name</th>
        <th>Email</th>
        <th>Update</th>
        <th>Delet</th>
      </tr>
    </thead>
    <tbody>
     
     <?php foreach($success as $result) {?>
  
      <tr>
        <td><?php echo $result->id ?></td>
        <td><?php echo $result->name ?></td>
        <td><?php echo $result->email ?></td>
        <td><a href="<?php echo base_url('index.php/welcome/updateusers/'.$result->id); ?>">Click Here</a></td>
        <td><a href="<?php echo base_url('index.php/welcome/updateusers/'.$result->id); ?>">Click Here</a></td>
        
    </tr>
     <?php }?> 
    </tbody>
  </table>
  


  
  
</div>


