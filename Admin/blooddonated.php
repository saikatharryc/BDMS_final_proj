<?php if(!isset($_SESSION)) {session_start();}  ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Untitled Document</title>
<link href="StyleSheet.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

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

     $( function() {
    $( "#datepicker" ).datepicker();
  } );

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

       <form method="post" enctype="multipart/form-data">
<table border="0" align="center" width="400" height="300px" class="shaddoww">
<tr><td colspan="2" align="center" class="toptd">Add Donar Details </td></tr>
<tr><td colspan="2">&nbsp;</td></tr>
<tr><td class="lefttd">Donar Name</td><td><input type="text" name="t1" required="required" pattern="[a-zA-Z0-9 ]{5,15}" title="please enter donar name"></td></tr>
</td></tr>

<tr><td class="lefttd">Gender</td><td><input type="radio" name="r1" value="male" checked="checked" />Male <input type="radio" name="r1" value="female"/>Female</td></tr>
</td></tr>

<tr><td class="lefttd">Unit</td><td><input type="number" name="t2" required="required" pattern="[a-zA-Z0-9 ]{5,15}" title="please enter blood unit"></td></tr>
</td></tr>

<tr><td class="lefttd">Select Camp </td><td><select name="s1" required><option value="">Select</option>

<?php
$cn=makeconnection();
$s="select * from camp";
    $result=mysqli_query($cn,$s);
    $r=mysqli_num_rows($result);
    //echo $r;
    while($data=mysqli_fetch_array($result))
    {
        if(isset($_POST["show"])&& $data[0]==$_POST["s1"])
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

</td></tr>
<tr><td class="lefttd">Donation Date</td><td><input type="date" name="t3" required="required"  id="datepicker" title="please enter donation date"></td></tr>

</td></tr>
<tr><td class="lefttd">Contact No</td><td><input type="number" name="t4" required="required" pattern="[a-zA-Z0-9 ]{5,15}" title="please enter donar contact no"></td></tr>
</td></tr>
</td></tr>

</td></tr>
<tr><td class="lefttd">Adhaar No</td><td><input type="number" name="t5" required="required" pattern="[a-zA-Z0-9 ]{5,15}" title="please enter donar adhaar no"></td></tr>
</td></tr>
</td></tr>

<tr><td>&nbsp;</td><td><input type="submit" value="SAVE" name="sbmt"></td></tr>
</table>
</form>
       </div>



   </div>
    </center>

    <?php
if(isset($_POST["sbmt"])) 
{

    $cn=makeconnection();
            $s="insert into blooddonated(name,gender,unit,camp,date,contact,adhaar) values('" . $_POST["t1"] ."','" . $_POST["r1"] . "','" . $_POST["t2"] . "','" . $_POST["s1"] . "','" . $_POST["t3"] . "','" . $_POST["t4"] . "','" . $_POST["t5"] . "')";
            
            
    $q=mysqli_query($cn,$s);
    mysqli_close($cn);
    echo "<script>alert('Record Save');</script>";

}
?>
<?php include('bottom.php'); ?>
   
</body>
</html>