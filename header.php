<?php 
$directoryURI = $_SERVER['REQUEST_URI'];
$path = parse_url($directoryURI, PHP_URL_PATH);
$components = explode('/', $path);
$first_part = $components[1];
?>
<ul class="nav">
            <li class="<?php if ($first_part=="") {echo "active"; } else  {echo "noactive";}?>"><a href="index.php">Home</a></li>   <!-- 
            <li><a href="registration.php">Donor Registration</a></li>             -->
            <li class="<?php if ($first_part=="requests.php") {echo "active"; } else  {echo "noactive";}?>"><a href="requests.php">send Request</a></li><!-- 
            <li><a href="viewrequest.php">View Request</a></li> -->
            <li class="<?php if ($first_part=="camps.php") {echo "active"; } else  {echo "noactive";}?>"><a href="camps.php">Camps</a></li>
          <!--  <li><a href="login.php">log In</a></li>-->
            <li class="<?php if ($first_part=="contact.php") {echo "active"; } else  {echo "noactive";}?>"><a href="search.php">Search</a></li> 
            <li class="<?php if ($first_part=="contact.php") {echo "active"; } else  {echo "noactive";}?>"><a href="contact.php">Contact Us</a></li>
            <li class="<?php if ($first_part=="aboutus.php") {echo "active"; } else  {echo "noactive";}?>"><a href="aboutus.php">About</a></li>
            </ul>