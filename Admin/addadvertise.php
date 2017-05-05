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
   <div style="width:1000px; height700px; box-shadow:-10px 10px 5px #CCC">
       <div style="width:200px; float:left;">
       <?php include('left.php'); ?>
       </div>
       <div style="width:800px;float:left">
<br /><br />

<?php include('function.php'); ?>

       <form method="post" enctype="multipart/form-data">
<table border="0" align="center" width="400" height="300px" class="shaddoww">
<tr><td colspan="2" align="center" class="toptd">Add Advertisement </td></tr>
<tr><td colspan="2">&nbsp;</td></tr>
<tr><td class="lefttd">Camp Title</td><td><input type="text" name="t3" required="required" pattern="[a-zA-Z0-9 _]{5,35}" title="please enter only character or numbers between 5 to 35 for camp title"/></td></tr>
<tr><td class="lefttd">Organized By</td><td><input type="text" name="t2" required="required" pattern="[a-zA-Z0-9 _]{5,35}" title="please enter only character or numbers between 5 to 35 for organizer name" /></td></tr>

</td></tr>
<tr><td class="lefttd">Uplode Pic</td><td><input type="file" name="t1" required="required"/></td></tr>
<tr><td class="lefttd">Detail</td><td><textarea name="t4"></textarea></td></tr>
<tr><td>&nbsp;</td><td><input type="submit" value="SAVE" name="sbmt"></td></tr>
</table>
</form>
       </div>



   </div>
    </center>
    
    <?php
if(isset($_POST["sbmt"])) 
{
$target_dir = "pic/";
$target_file = $target_dir . basename($_FILES["t1"]["name"]);
$uploadOk = 1;
$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image

    $check = getimagesize($_FILES["t1"]["tmp_name"]);
    if($check !== false) {
      //  echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk = 0;
    }

// Check if file already exists
if (file_exists($target_file)) {
    echo "Sorry, file already exists.";
    $uploadOk = 0;
}
//aloow certain file formats
	if($imageFileType != "jpg" && $imageFileType !="png" && $imageFileType !="jpeg" && $imageFileType !="gif"){
		echo "sorry, only jpg, jpeg, Png & gif files are allowed.";
		$uploadok=0;
	}else{
		if(move_uploaded_file($_FILES["t1"]["tmp_name"], $target_file)){
		$cn=makeconnection();
			$s="insert into advertisement(camp_title,org_by,pic,detail) values('" . $_POST["t3"] ."','" . $_POST["t2"] . "','" . basename($_FILES["t1"]["name"]) . "','" . $_POST["t4"] ."')";
	mysqli_query($cn,$s);
	mysqli_close($cn);
	echo "<script>alert('Record Save');</script>";
			
		} else{
			echo "sorry there was an error uploading your file.";
		}	
	
	}
}
?> 
<?php include('bottom.php'); ?>
   
</body>
</html>