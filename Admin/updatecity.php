<?php if(!isset($_SESSION)) {session_start();}  ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="StyleSheet.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--slider-->
<link href="css/flexslider.css" rel="stylesheet" type="text/css" media="all" />
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
<?php
if($_SESSION['loginstatus']=="")
{
	header("location:admimlogin.php");
}
?>
<?php include('topbar.php'); ?>
    <center>
   <div style="width:1000px; height:700px; box-shadow:-10px 10px 5px #CCC">
       <div style="width:200px; float:left;">
       <?php include('left.php'); ?>
       </div>
       <div style="width:800px;float:left">
<br /><br />

<?php include('function.php'); ?>
<?php
if(isset($_POST["sbmt"]))
{
	$cn=makeconnection();
	$s="update city set city_name ='" . $_POST["t3"] . "',pin_code='" .$_POST["t2"] . "',district='" .$_POST["t1"] ."',state='" .$_POST["s1"] . "' where city_id='" . $_POST["s2"] ."'";
	mysqli_query($cn,$s);
	mysqli_close($cn);
	echo "<script>alert('Record Save');</script>";
}

?>

       <form method="post">
<table border="0" align="center" width="400" height="300px" class="shaddoww">
<tr><td colspan="2" align="center" class="toptd">Update City </td></tr>
<tr><td colspan="2">&nbsp;</td></tr>
<tr><td class="lefttd">Select city </td><td><select name="s2"><option value="Select">Select</option>

<?php
$cn=makeconnection();
$s="select * from city";
	$result=mysqli_query($cn,$s);
	$r=mysqli_num_rows($result);
	//echo $r;
	while($data=mysqli_fetch_array($result))
	{
		if(isset($_POST["show"])&& $data[0]==$_POST["s2"])
		{
			echo "<option value=$data[0] selected>$data[1]</option>";
		}
		else
		{
			echo "<option value=$data[0]>$data[1]</option>";
		}
		
		
		
	}
	mysqli_close($cn);

?>



</select>
<input type="submit" value="Show" name="show" formnovalidate="formnovalidate"/>
<?php
if(isset($_POST["show"]))
{
$cn=makeconnection();
$s="select * from city where city_id='" .$_POST["s2"] ."'";
	$result=mysqli_query($cn,$s);
	$r=mysqli_num_rows($result);
	//echo $r;
	$data=mysqli_fetch_array($result);
	$city_id=$data[0];
	$city_name=$data[1];
	$pin_code=$data[2];
	$district=$data[3];
	$state=$data[4];
	
		
		
	mysqli_close($cn);
}
?>
<tr><td class="lefttd">City Name</td><td><input type="text" name="t3"  value="<?php  if(isset($_POST["show"])){ echo $city_name ;}    ?>" required="required" pattern="[a-zA-Z _]{5,18}" title="please enter only character  between 5 to 18 for city name"  /></td></tr> </td></tr></td></tr>
<tr><td class="lefttd">Pin Code</td><td><input type="number" name="t2"  value="<?php  if(isset($_POST["show"])){ echo $pin_code ;}    ?>" required="required" pattern="[0-9]{6,10}" title="please enter only numbers  between 6 to 10 for pin code"  /></td></tr> </td></tr></td></tr>
<tr><td class="lefttd">District</td><td><input type="text" name="t1"  value="<?php  if(isset($_POST["show"])){ echo $district ;}    ?>" required="required" pattern="[a-zA-Z _]{5,18}" title="please enter only character  between 5 to 18 for district"  /></td></tr> </td></tr></td></tr>
<tr><td class="lefttd">State </td><td><select name="s1" required><option value="">Select</option>

<?php
$cn=makeconnection();
$s="select * from state";
	$result=mysqli_query($cn,$s);
	$r=mysqli_num_rows($result);
	//echo $r;
	while($data=mysqli_fetch_array($result))
	{
		if(isset($_POST["show"])&& $data[0]==$state)
		{
			echo "<option value=$data[0] selected>$data[1]</option>";
		}
		else
		{
			echo "<option value=$data[0]>$data[1]</option>";
		}
		
		
		
	}
	mysqli_close($cn);

?>



</select>
<tr><td>&nbsp;</td><td><input type="submit" value="UPDATE" name="sbmt"></td></tr>
</table>
</form>
       </div>

   </div>
    </center>
<?php include('bottom.php'); ?>
   
</body>
</html>