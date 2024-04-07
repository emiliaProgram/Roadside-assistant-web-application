
<?php
include('includes/dbconnection.php');
session_start();
error_reporting(0);
 if(isset($_POST['submit'])) 
  {

$name=$_POST['name'];
    $email=$_POST['email'];
    $phone=$_POST['phone'];
    $address=$_POST['address'];
    $license=$_POST['license'];
    $servicetype=$_POST['servicetype'];
    $resume=$_POST['resume'];
    $certificate=$_POST['certificate'];
    //$bookingnumber = mt_rand(100000000, 999999999);

//THIS NEEDS TO BE CHANGED, BUT WILL WAIT UNTIL DATABASE CONFIRMATION
$sql="insert into Bookings(BookingNumber,Name,Email,PhoneNumber,PickupLoc,Destination,PickupDate,PickupTime)values(:bookingnumber,:name,:email,:phone,:pickuploc,:destination,:pickupdate,:pickuptime)";
$query=$dbh->prepare($sql);
$query->bindParam(':pickuptime',$pickuptime,PDO::PARAM_STR);
$query->bindParam(':pickupdate',$pickupdate,PDO::PARAM_STR);
$query->bindParam(':destination',$destination,PDO::PARAM_STR);
$query->bindParam(':pickuploc',$pickuploc,PDO::PARAM_STR);
$query->bindParam(':phone',$phone,PDO::PARAM_STR);
$query->bindParam(':email',$email,PDO::PARAM_STR);
$query->bindParam(':name',$name,PDO::PARAM_STR);
$query->bindParam(':bookingnumber',$bookingnumber,PDO::PARAM_STR);
 $query->execute();
$_SESSION['bookingnumber']=$result['bookingnumber'];
   $LastInsertId=$dbh->lastInsertId();
   if ($LastInsertId>0) {
   echo '<script>alert("Your vehicle breakdown assistance has been book successfully. Booking Number is "+"'.$bookingnumber.'")</script>';

echo "<script>window.location.href ='booking-request.php'</script>";
  }
  else
    {
         echo '<script>alert("Something Went Wrong. Please try again")</script>';
    }

  
}
?><!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <!-- Basic page needs
        ============================================ -->
        
        <title> Application Form </title>
       

        <!-- ============== All CSS ================ -->
        <!-- normalize css
        ============================================ -->
        <link rel="stylesheet" href="css1/normalize.css">

        <!-- animate css
        ============================================ -->
        <link rel="stylesheet" href="css1/animate.css">

        <!-- bootstrap css
        ============================================ -->
        <link rel="stylesheet" href="css1/bootstrap.min.css">

        <!-- meanmenu css
        ============================================ -->
        <link rel="stylesheet" href="css1/meanmenu.min.css">

        <!-- font-awesome css
        ============================================ -->
        <link rel="stylesheet" href="css1/font-awesome.min.css">

        <!-- icofont css
        ============================================ -->
        <link rel="stylesheet" href="css1/icofont.css">

        <!-- change-text css
        ============================================ -->
        <link rel="stylesheet" href="css1/change-text.css">

        <!-- YTPlayer css
        ============================================ -->
        <link rel="stylesheet" href="css1/jquery.mb.YTPlayer.min.css">

        <!-- main css
        ============================================ -->
        <link rel="stylesheet" href="css1/main.css">

        <!-- owl.carousel css
        ============================================ -->
        <link rel="stylesheet" href="css1/owl.carousel.css">
        <link rel="stylesheet" href="css1/owl.theme.css">
        <link rel="stylesheet" href="css1/owl.transitions.css">

        <!-- nivo-slider css
        ============================================ -->
        <link rel="stylesheet" href="lib/css/nivo-slider.css">
        <link rel="stylesheet" href="lib/css/preview.css">

        <!-- style css
        ============================================ -->
        <link rel="stylesheet" href="style.css">

        <!-- responsive css
        ============================================ -->
        <link rel="stylesheet" href="css1/responsive.css">

        <!-- modernizr js
        ============================================ -->
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
<body>
        <!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

     <?php include_once('includes/header.php');?>
        <!-- page title area start -->
        <div class="page-title-area overlay">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <!-- page title start -->
                        <div class="page-title">
                            <h2>Professional Network</h2>
                        </div>
                        <!-- page title end -->
                        <!-- page title menu start -->
                        <div class="page-title-menu">
                            <ul>
                                <li><a href="index.php">Home</a> <span> / </span> </li>
                                <li><a href="jobseeker.php">Application Form</a></li>
                            </ul>
                        </div>
                        <!-- page title menu end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- page title area end -->
		        <!-- checkout area start -->
        <div class="checkout-area section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <!-- client address start -->
                        <div class="client-address">
                            <!-- section title start -->
                            <div class="section-small-title">
                                <h3>Application for Roadside Assistance Professional Network</h3>
                            </div>
                            <!-- section title start -->
                            <!-- client address form -->
                            <div class="client-address-form">
                                <form action="" method="post"> <!--CHANGE THE NAME OF FORMS IN THE SQL-->
                                    <label style="">Name</label>
                                    <input class="form-control" type="text" placeholder="Enter name" name="name" required="true">
                                    <label class="form-label">Email</label>
                                    <input class="form-control" type="email" placeholder="Enter email" name="email" required="true">
                                   <label class="form-label">Phone</label>
                                   <input class="form-control" type="tel" placeholder="Enter phone number" name="phone" required="true" maxlength="10" pattern="[0-9]+">
                                   <label class="form-label">Address</label>
                                   <input class="form-control" type="tel" placeholder="Enter address" name="address" required="true" maxlength="10" pattern="[0-9]+">
                                   <label class="form-label">License Number</label>
                                   <input class="form-control" type="text" placeholder="Enter License" name="license" required="true"> 
                                   <label class="form-label">Service Type</label> <!--service types-->
                                        <select class="form-control" name="servicetype" required="true">                                           
                                            <option value="fuel" > Emergency Fuel </option>
                                            <option value="driver"> Driver </option>
                                            <option value="mechanic" > Mechanic </option>
                                            <option value="towing" > Towing Services </option>
                                        </select>
                                  <label class="form-label">Resume</label><!--CHANGE TO UPLOAD RESUME-->
                                  <input class="form-control" type="file" required="true" name="resume"><!--CHANGE THE TYPE to file-->
                                  <label class="form-label">Cerifications</label><!--uploading qualifications-->
                                  <input class="form-control" type="file" required="true" name="certificate">
                                   <div class="form-btn">
                                <div class="shopping-button">
                           <div class="form-btn">
                                <button class="submit-btn"  name="submit">Apply</button>
                            </div>
                        </div>
                            </div>
                                </form>
                            </div>
                        </div>
                        <!-- client address end -->
                    </div>
                   
                </div>
            </div>
        </div>
        <!-- checkout area end -->
		 <?php include_once('includes/footer.php');?>

        <!-- ============== All JS ================ -->
        <!-- jquery js
        =========================================== -->
        <script src="js/vendor/jquery-1.12.0.min.js"></script>

        <!-- bootstrap js
        =========================================== -->
        <script src="js/bootstrap.min.js"></script>

        <!-- meanmenu js
        =========================================== -->
        <script src="js/jquery.meanmenu.js"></script>

        <!-- scrollUp js
        =========================================== -->
        <script src="js/jquery.scrollUp.min.js"></script>

        <!-- wow js
        =========================================== -->
        <script src="js/wow.min.js"></script>

        <!-- owl.carousel js
        =========================================== -->
        <script src="js/owl.carousel.min.js"></script>

        <!-- change-text js
        =========================================== -->
        <script src="js/change-text.js"></script>

        <!-- YTPlayer js
        =========================================== -->
        <script src="js/jquery.mb.YTPlayer.min.js"></script>

        <!-- textillate js
        =========================================== -->
        <script src="js/jquery.lettering.js"></script>
        <script src="js/jquery.textillate.js"></script>

        <!-- nivo.slider js
        =========================================== -->
        <script src="lib/js/jquery.nivo.slider.js"></script>
        <script src="lib/home.js"></script>

        <!-- plugins js
        =========================================== -->
        <script src="js/plugins.js"></script>

        <!-- main js
        =========================================== -->
        <script src="js/main.js"></script>
</body>
</html>