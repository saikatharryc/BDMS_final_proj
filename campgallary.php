<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Blood bank Management System</title>
<link href="css/lightbox.css" rel="stylesheet" />
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />

    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--slider-->
<link href="css/flexslider.css" rel="stylesheet" type="text/css" media="all" />
     <script src="js/jquery-1.11.0.min.js"></script>
	<script src="js/lightbox.min.js"></script>
<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="js/jquery.flexslider.js" type="text/javascript"></script>
  
 <script type="text/javascript">
     $(function () {
         SyntaxHighlighter.all();
     });
     $(window).load(function () {
         $('.flexslider').flexslider({
             animation: "slide",
             animationLoop: false,
             itemWidth: 210,
             itemMargin: 5,
             minItems: 2,
             maxItems: 4,
             start: function (slider) {
                 $('body').removeClass('loading');
             }
         });
     });
  </script>
</head>

<body>
<?php include('admin/function.php'); ?>
 <div class="h_bg">
<div class="wrap">
<div class="header">
		<div class="logo">
			<h1><a href="index.php"><img src="Images/logo.png" alt=""></a></h1>
		</div>
	</div>
</div>
</div>
<div class="nav_bg">
<div class="wrap">
		<?php require('header.php');?>
	</div>
	</div>
<div style="height:400px; width:100%; margin:auto; background-color:#f8f1e4; border:2px solid red; box-shadow:4px 1px 20px black;">
    <div class="s_bg">
<div class="wrap">
<div class="main_cont">
     <div class="main">
        <div class="content">
         
            <table cellpadding="0" cellspacing="0" width="1000px" class="tableborder" style="margin:auto" >
         <tr><td colspan="3">&nbsp;</td></tr>
        <tr><td colspan="3" align="center"><img src="Images/gallery.png" height="80px" /></td></tr>
         <tr><td colspan="3">&nbsp;</td></tr>  
            
        
             <?php
$cn=makeconnection();
$s="select * from gallary,camp where gallary.camp_id=camp.camp_id and gallary.camp_id='" . $_GET["cid"] ."'";
	$result=mysqli_query($cn,$s);
	$r=mysqli_num_rows($result);
	//echo $r;
	$n=0;
	while($data=mysqli_fetch_array($result))
	{
		if($n%3==0)
		{
		?>
    
    
            <tr>
            <?php
			
		}?>
            
            
            <td>
          
            

  <a href="Admin/pic/<?php  echo $data[3] ?>" data-lightbox="roadtrip"><img src="Admin/pic/<?php  echo $data[3] ?>" width="250px" height="200px" style="padding-left:40px" /></a>
  
    </td>
        <?php
        if($n%3==2)
	 {
	 ?>
        </tr>
        <tr><td colspan="3">&nbsp;</td></tr>
         <tr><td colspan="3">&nbsp;</td></tr>
          <tr><td colspan="3">&nbsp;</td></tr>
        <?php
	}
	$n=$n+1;
		
	}?>
    </table>
        
        
	</div></div></div></div></div>
    


      <div class="clear"></div>
<div class="ftr-bg">
<div class="wrap">
<div class="footer">
	<div class="f_nav">
		<ul>
			<li class="active"><a href="index.php">Home</a></li>			
			<li><a href="donar.php">Donor</a></li>
            <li><a href="login.php">log In</a></li>
            <li><a href="aboutus.php">About</a></li>
            <li><a href="contact.php">Contact Us</a></li>
			
            </ul>
	</div>
		<div class="copy">
			<p class="title">© All Rights Reserved </p>
		</div>
	<div class="clear"></div>
</div>
</div>
</div></div>
</body>
</html>