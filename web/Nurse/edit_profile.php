<?php
include "header.php";
//session_start();
$nmob=$_SESSION['nrs_mob'];
$z=mysqli_query($con,"select * from nurse WHERE mobile='$nmob'");
$rz=mysqli_fetch_array($z);
$z1=mysqli_query($con,"select * from login WHERE uname='$nmob'");
$sz=mysqli_fetch_array($z1);
?>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<div class="breadcome-area">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="breadcome-list">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                            <div class="breadcome-heading">

                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                            <ul class="breadcome-menu">
                                <li><a href="index.php">Home</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<div class="section-admin container-fluid" >
    <div class="row admin text-center">
        <div class="col-md-12" style="margin-top: -62px;">
            <div class="row">
                <style>
                    .ass:hover{color:#24caa1; }
                    .fac:hover{color:#eb4b4b;}
                    .ser:hover{color:#2eb7f3;}
                    .alr:hover{color:#805bbe;}
                </style>

<!--                <a href="ass_pat_view.php" class="ass">-->
<!--                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">-->
<!--                        <div class="admin-content analysis-progrebar-ctn res-mg-t-15">-->
<!--                            <h4 class="text-left text-uppercase" style="font-size: 19px;"><b>Assigned Patients</b></h4>-->
<!--                            <div class="row vertical-center-box vertical-center-box-tablet">-->
<!--                                <div class="col-xs-9 cus-gh-hd-pro">-->
<!--                                    <h2 class="text-left no-margin" style="color:#24caa1">--><?php //echo $c1=mysqli_num_rows($ass) ?><!--</h2>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div></a>-->

<!--                <a href="facility_request.php" class="fac">-->
<!--                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12" style="margin-bottom:1px;">-->
<!--                        <div class="admin-content analysis-progrebar-ctn res-mg-t-30">-->
<!--                            <h4 class="text-left text-uppercase"><b>facility request</b></h4>-->
<!--                            <div class="row vertical-center-box vertical-center-box-tablet">-->
<!--                                <div class="col-xs-9 cus-gh-hd-pro">-->
<!--                                    <h2 class="text-left no-margin" style="color: #eb4b4b">--><?php //echo $c2=mysqli_num_rows($fac) ?><!--</h2>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div></a>-->

<!--                <a href="service_request.php" class="ser">-->
<!--                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">-->
<!--                        <div class="admin-content analysis-progrebar-ctn res-mg-t-30">-->
<!--                            <h4 class="text-left text-uppercase"><b>service request</b></h4>-->
<!--                            <div class="row vertical-center-box vertical-center-box-tablet">-->
<!--                                <div class="col-xs-9 cus-gh-hd-pro">-->
<!--                                    <h2 class="text-left no-margin" style="color: #2eb7f3">--><?php //echo $c3=mysqli_num_rows($ser) ?><!--</h2>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div></a>-->
<!---->
<!--                <a href="view_notification.php" class="alr">-->
<!--                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">-->
<!--                        <div class="admin-content analysis-progrebar-ctn res-mg-t-30">-->
<!--                            <h4 class="text-left text-uppercase" style="font-size: 19px;"><b>Alert notification</b></h4>-->
<!--                            <div class="row vertical-center-box vertical-center-box-tablet">-->
<!--                                <div class="col-xs-9 cus-gh-hd-pro">-->
<!--                                    <h2 class="text-left no-margin" style="color: #805bbe">--><?php //echo $c4=mysqli_num_rows($alt) ?><!--</h2>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div></a>-->

            </div>
        </div>
    </div>
</div>

<div class="product-sales-area mg-tb-30">
    <div class="container-fluid" style="background-image: url(img/55.jpg); background-repeat: no-repeat;">
        <img src="">
        <div class="row">
            <div class="col-lg-6" style="margin-left: 250px">
                <div class="product-sales-chart" style="height: 930px;   background: #ffffff47;
    box-shadow: 0px 0px 4px 1px #777;">
                    <form method="post" action="" enctype="multipart/form-data">
                        <style>
                            .pull-right {

                                float: left !important;

                            }
                        </style>
                        <div class="sparkline12-graph">


                            <div class="form-group-inner">
                                <label>Name</label>
                                <input type="text" name="name" class="form-control" value="<?php echo $rz['name'] ?>" />
                            </div>

                            <div class="form-group-inner">
                                <label>DOB</label>
                                <input type="date" name="dob" class="form-control" value="<?php echo $rz['dob'] ?>" max="<?php echo date('Y-12-31',strtotime('-18year')) ?>"/>
                            </div>

                            <div class="form-group-inner">
                                <label>Gender</label><br>
                                <?php
                                if($rz['gender']=='Male') {
                                    ?>&nbsp;&nbsp;
                                    Male &nbsp;<input type="radio" class="radio-checked" value="Male" name="gender" checked>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    Female &nbsp;<input type="radio" class="radio-checked" value="Female" name="gender">
                                    <?php
                                }else {
                                    ?>
                                    Male &nbsp;<input type="radio" class="radio-checked" value="Male"  name="gender">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    Female &nbsp;<input type="radio" class="radio-checked" value="Female" name="gender" checked>
                                    <?php
                                }
                                ?>
                            </div>

                            <div class="form-group-inner">
                                <label>Place</label>
                                <input type="text" class="form-control" value="<?php echo $rz['place'] ?>" name="place"/>
                            </div>

                            <div class="form-group-inner">
                                <label>Address</label>
                                <input type="text" class="form-control" value="<?php echo $rz['address'] ?>" name="address" />
                            </div>
                            <div class="form-group-inner">
                                <label>Password</label>
                                <input type="text" class="form-control" value="<?php echo $sz['password'] ?>" name="password" />
                            </div>



<!--                            <div id="pwd-container1">-->
<!---->
<!--                                <div class="form-group">-->
<!--                                    <label for="password1">Password</label>-->
<!--                                    <input type="password" class="form-control example1" id="password1" placeholder="Password" value="--><?php //echo $sz['password'] ?><!--" name="password">-->
<!--                                    <button type="button" id="eye" style="background-color:white;border-color:transparent;margin-left: 530px;margin-top: 0px;">-->
<!--                                        <img src="https://cdn0.iconfinder.com/data/icons/feather/96/eye-16.png" alt="eye" />-->
<!--                                    </button>-->
<!--                                    <script>-->
<!--                                        function show() {-->
<!--                                            var p = document.getElementById('password1');-->
<!--                                            p.setAttribute('type', 'text');-->
<!--                                        }-->
<!---->
<!--                                        function hide() {-->
<!--                                            var p = document.getElementById('password1');-->
<!--                                            p.setAttribute('type', 'password');-->
<!--                                        }-->
<!---->
<!--                                        var pwShown = 0;-->
<!---->
<!--                                        document.getElementById("eye").addEventListener("click", function () {-->
<!--                                            if (pwShown == 0) {-->
<!--                                                pwShown = 1;-->
<!--                                                show();-->
<!--                                            } else {-->
<!--                                                pwShown = 0;-->
<!--                                                hide();-->
<!--                                            }-->
<!--                                        }, false);-->
<!--                                    </script>-->
<!--                                    <p style="margin-left: 22%;margin-top: -19px;font-style: italic;color:chocolate;">Its better to change the password for the security *</p>-->
<!--                                </div>-->
<!---->
<!--                                <div class="form-group">-->
<!--                                    <div class="pwstrength_viewport_progress"></div>-->
<!--                                </div>-->
<!--                            </div>-->

                            <div class="login-btn-inner">
                                <button class="btn btn-sm btn-primary pull-right login-submit-cs" type="submit" name="update">Update Profile</button>
                            </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
if(isset($_POST['update'])) {
    $name = $_POST['name'];
    $dob = $_POST['dob'];
    $gender = $_POST['gender'];
    $place = $_POST['place'];
    $password = $_POST['password'];
    $address = $_POST['address'];


    $update = "update nurse set name='$name',gender='$gender',dob='$dob',place='$place',address='$address' WHERE mobile='$nmob'";
    $result = mysqli_query($con, $update);
    $update1 = "update login set password='$password' WHERE uname='$nmob'";
    $result1 = mysqli_query($con, $update1);
    if ($result) {
        if ($result1) {

            echo "<script>alert('Profile Updated')</script>";
            echo "<script>window.location.href='index.php'</script>";
        } else {
            echo "<script>alert('Error')</script>";
            echo "<script>window.location.href='index.php'</script>";
        }
    }
}

?>
?>





<!-- jquery
    ============================================ -->
<script src="js/vendor/jquery-1.11.3.min.js"></script>
<!-- bootstrap JS
    ============================================ -->
<script src="js/bootstrap.min.js"></script>
<!-- wow JS
    ============================================ -->
<script src="js/wow.min.js"></script>
<!-- price-slider JS
    ============================================ -->
<script src="js/jquery-price-slider.js"></script>
<!-- meanmenu JS
    ============================================ -->
<script src="js/jquery.meanmenu.js"></script>
<!-- owl.carousel JS
    ============================================ -->
<script src="js/owl.carousel.min.js"></script>
<!-- sticky JS
    ============================================ -->
<script src="js/jquery.sticky.js"></script>
<!-- scrollUp JS
    ============================================ -->
<script src="js/jquery.scrollUp.min.js"></script>
<!-- mCustomScrollbar JS
    ============================================ -->
<script src="js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="js/scrollbar/mCustomScrollbar-active.js"></script>
<!-- metisMenu JS
    ============================================ -->
<script src="js/metisMenu/metisMenu.min.js"></script>
<script src="js/metisMenu/metisMenu-active.js"></script>
<!-- morrisjs JS
    ============================================ -->
<script src="js/morrisjs/raphael-min.js"></script>
<script src="js/morrisjs/morris.js"></script>
<script src="js/morrisjs/morris-active.js"></script>
<!-- morrisjs JS
    ============================================ -->
<script src="js/sparkline/jquery.sparkline.min.js"></script>
<script src="js/sparkline/jquery.charts-sparkline.js"></script>
<!-- calendar JS
    ============================================ -->
<script src="js/calendar/moment.min.js"></script>
<script src="js/calendar/fullcalendar.min.js"></script>
<script src="js/calendar/fullcalendar-active.js"></script>
<!-- plugins JS
    ============================================ -->
<script src="js/plugins.js"></script>
<!-- main JS
    ============================================ -->
<script src="js/main.js"></script>
</body>

</html>
