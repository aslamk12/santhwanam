<?php
include "header.php";
$sql=mysqli_query($con,"select * from patient");

?>
<!-- Mobile Menu end -->
<div class="breadcome-area">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="breadcome-list single-page-breadcome">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="breadcome-heading">

                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <ul class="breadcome-menu">
                                <li>Patient</a> <span class="bread-slash">/</span></li>
                                <li><span class="bread-blod">View patient</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<div class="product-status mg-b-15">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="product-status-wrap">
                    <?php
                    $sq=mysqli_query($con,"select * from login WHERE type='patient' and status='approved'");
                    if(mysqli_num_rows($sq)==0){
                        echo "<h2 style='margin-left: 35%;color:coral;font-family: Times;font-style: italic;font-size: 39px;'>No details to show</h2><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>";
                    }else {
                        ?>
                        <h4>Approved Patients</h4>

                    <div class="asset-inner">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="sparkline13-list">

                                    <div class="sparkline13-graph">
                                        <div class="datatable-dashv1-list custom-datatable-overright">
                                            <table id="table" data-toggle="table" data-pagination="true"
                                                   data-search="true">
                                                <thead>
                                                <tr>
                                                    <th data-field="id">No</th>
                                                    <th data-field="name" data-editable="true">Name</th>
                                                    <th data-field="mobile" data-editable="true">Mobile</th>
                                                    <th data-field="gender" data-editable="true">Gender</th>
                                                    <th data-field="place" data-editable="true">Place</th>
                                                    <th data-field="disease" data-editable="true">Disease</th>
                                                    <th data-field="viewmore">View More</th>
                                                    <th data-field="assign">Action</th>
                                                </tr>
                                                </thead>
                                                <tbody style="text-transform: capitalize">
                                                <?php
                                                $i = 1;
                                                $view = mysqli_query($con, "select *from login inner join patient on login.uname=patient.mobile   where login.status='approved' ");
                                                while ($row = mysqli_fetch_array($view)) {
                                                    ?>
                                                    <tr>
                                                        <td><?php echo $i ?></td>
                                                        <td><?php echo $row['pname'] ?></td>
                                                        <td><?php echo $row['mobile'] ?></td>
                                                        <td><?php echo $row['gender'] ?></td>
                                                        <td><?php echo $row['place'] ?></td>
                                                        <td><?php echo $row['disease'] ?></td>
                                                        <td>
                                                            <a href="viewmore_patient.php?id=<?php echo $row['mobile'] ?>"
                                                               data-toggle="tooltip" title="Edit"
                                                               class="pd-setting-ed"><img src="img/viewmore.png"
                                                                                          style="height: 40px;width: 39px;margin-left: -9px;"></a>
                                                        </td>
                                                        <td>
                                                            <a href="assign_nurse.php?id=<?php echo $row['mobile'] ?>"
                                                               data-toggle="tooltip" title="Edit"
                                                               class="pd-setting-ed"><img src="img/add.png"
                                                                                          style="height: 40px;width: 39px;margin-left: -9px;"></a>
                                                        </td>

                                                    </tr>
                                                    <?php
                                                    $i++;
                                                }
                                                ?>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>


                        <?php
                    }
                    ?>

                </div>
                <div class="product-status-wrap">

                    <h4>Assigned Patients</h4>

                    <div class="asset-inner">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="sparkline13-list">

                                    <div class="sparkline13-graph">
                                        <div class="datatable-dashv1-list custom-datatable-overright">
                                            <table id="table" data-toggle="table" data-pagination="true"
                                                   data-search="true">
                                                <thead>
                                                <tr>
                                                    <th data-field="id">No</th>
                                                    <th data-field="name" data-editable="true">Name</th>
                                                    <th data-field="gender" data-editable="true">Gender</th>
                                                    <th data-field="place" data-editable="true">Place</th>
                                                    <th data-field="disease" data-editable="true">Disease</th>
                                                    <th data-field="nurse" data-editable="true">Nurse</th>



                                                </tr>
                                                </thead>
                                                <tbody style="text-transform: capitalize">
                                                <?php
                                                $i = 1;
                                                $view = mysqli_query($con, "select *from patient inner join assign_nurse on patient.pid=assign_nurse.patient inner join nurse on  assign_nurse.nurse=nurse.nid where assign_nurse.ass_status='assigned' ");
                                                while ($row = mysqli_fetch_array($view)) {
                                                    ?>
                                                    <tr>
                                                        <td><?php echo $i ?></td>
                                                        <td><?php echo $row['pname'] ?></td>
                                                        <td><?php echo $row['gender'] ?></td>
                                                        <td><?php echo $row['place'] ?></td>
                                                        <td><?php echo $row['disease'] ?></td>
                                                        <td><?php echo $row['name'] ?></td>



                                                    </tr>
                                                    <?php
                                                    $i++;
                                                }
                                                ?>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>

                    <?php

                    ?>

                </div>
            </div>
        </div>
    </div>
</div>

<?php
include "footer.php";
?>


</div>


<!-- tawk chat JS
 data table JS
    ============================================ -->
<script src="js/data-table/bootstrap-table.js"></script>
<script src="js/data-table/tableExport.js"></script>
<script src="js/data-table/data-table-active.js"></script>
<script src="js/data-table/bootstrap-table-editable.js"></script>
<script src="js/data-table/bootstrap-editable.js"></script>
<script src="js/data-table/bootstrap-table-resizable.js"></script>
<script src="js/data-table/colResizable-1.5.source.js"></script>
<script src="js/data-table/bootstrap-table-export.js"></script>
<!--  editable JS
    ============================================ -->
<script src="js/editable/jquery.mockjax.js"></script>
<script src="js/editable/mock-active.js"></script>
<script src="js/editable/select2.js"></script>
<script src="js/editable/moment.min.js"></script>
<script src="js/editable/bootstrap-datetimepicker.js"></script>
<script src="js/editable/bootstrap-editable.js"></script>
<script src="js/editable/xediable-active.js"></script>
<!-- Chart JS
    ============================================ -->
<!--<script src="js/tawk-chat.js"></script>-->
</body>

</html>

