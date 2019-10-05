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
  <h2>Vertical (basic) form</h2>
  <form action=""  id="company_details">

    <div class="form-group">
      <label for="email">Name:</label>
      <input type="text" class="form-control" id="comp_name" placeholder="Enter email" name="comp_name">
    </div>

     <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="comp_email" placeholder="Enter email" name="comp_email">
    </div>

    <div class="form-group">
      <label for="email">Mobile:</label>
      <input type="email" class="form-control" id="comp_mobile" placeholder="Enter Mobile" name="comp_mobile">
    </div>

    <div class="form-group">
      <label for="pwd">Address:</label>
      <textarea  class="form-control" id="comp_address" placeholder="Enter Address" name="comp_address" ></textarea>  
    </div>
   
    <button type="button" class="btn btn-default" onclick="insert_company()">Submit</button>
  </form>
</div>

</body>
</html>

<script type="text/javascript">
function insert_company()
{
  $.ajax({
              type:"get",
              url:"<?php echo base_url('index.php/company/insert_company') ?>",
              data:company_details.serialized()
              success:function (response)
              {
                 alert(response);
              }

        })
}

</script>
