<!DOCTYPE html>
<jsp:include page ="security.jsp" />
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>AdminLTE 2 | Simple Tables</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.6 -->
        <link rel="stylesheet" href="/OBESystem/resources/bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="/OBESystem/resources/downloads/font-awesome-4.7.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="/OBESystem/resources/downloads/ionicons-2.0.1/css/ionicons.min.css">
        <!-- Theme style -->
        <!-- daterange picker -->
        <link rel="stylesheet" href="/OBESystem/resources/plugins/daterangepicker/daterangepicker.css">
        <!-- bootstrap datepicker -->
        <link rel="stylesheet" href="/OBESystem/resources/plugins/datepicker/datepicker3.css">
        <!-- iCheck for checkboxes and radio inputs -->
        <link rel="stylesheet" href="/OBESystem/resources/plugins/iCheck/all.css">
        <!-- Bootstrap Color Picker -->
        <link rel="stylesheet" href="/OBESystem/resources/plugins/colorpicker/bootstrap-colorpicker.min.css">
        <!-- Bootstrap time Picker -->
        <link rel="stylesheet" href="/OBESystem/resources/plugins/timepicker/bootstrap-timepicker.min.css">
        <!-- Select2 -->
        <link rel="stylesheet" href="/OBESystem/resources/plugins/select2/select2.min.css">
        <link rel="stylesheet" href="/OBESystem/resources/dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="resources/dist/css/skins/_all-skins.min.css">
        <link rel="stylesheet" href="/OBESystem/js/background.css">
        <link rel="stylesheet" href="/OBESystem/js/syllabus_printing.css"  media="print">
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <!-- ./wrapper -->
        <div class="wrapper">
            <div class="content-wrapper">
                <!-- Main content -->
                <section class="content">
                    <div class="box box-success">
                        <div class="box-header">
                            <h3 class="box-title non-print">View Syllabus</h3>                            
                        </div>
                        <div id="printheader">                               
                            <img src="/OBESystem/resources/dist/img/dlsuLogo.png">
                            <img src="/OBESystem/resources/dist/img/ccsLogo.png">
                            <br>
                            <h4><b>Syllabus</b></h4>
                            <br>
                            <div>
                                <b>Curriculum Followed: </b><span id="print-cf"></span><br/>
                                <b>Course: </b><span id="print-c"></span><br/>
                                <b>Academic Year: </b><span id="print-ay"></span><br/>
                                <b>Term: </b><span id="print-t"></span><br/>
                            </div>
                        </div>

                        <!-- /.box-header -->
                        <input type="hidden" name="contributor" class="readonlyWhite" id="contributor" value="${login.userID}" />
                        <div class="box-body non-print">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Curriculum Followed</label>
                                <input type="hidden" name="mapCurID" class="readonlyWhite" id="hidden-mapCurID" />
                                <div  class="col-sm-10">
                                    <input name="curriculum-title" type="text" class="form-control" id="curriculum-title" readOnly>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Course</label>
                                <div  class="col-sm-10">
                                    <input name="course-title" type="text" class="form-control" id="course-title" readOnly>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Academic Start Year</label>
                                <div class="col-sm-10">
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input name="startYear" type="text" class="form-control pull-right" id="startYear" readOnly>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Academic End Year</label>
                                <div class="col-sm-10">
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input name="endYear" type="text" class="form-control pull-right" id="endYear" readOnly>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">Term</label>
                                <div  class="col-sm-10">
                                    <input name="term" type="text" class="form-control" id="term" readOnly>
                                </div>
                            </div>
                        </div>
                        <!-- Add CO -->
                        <div class="box box-success" id="div-addCO">
                            <div class="box-header">
                                <h4><b>Course Outcomes</b></h4>
                            </div>
                            <table id="data" class="table table-hover">
                                <tr>
                                    <th>Code</th>
                                    <th>Course Outcome</th>
                                    <th>Mapped Performance Indicator</th>
                                    <th>Remarks</th>
                                </tr>
                            </table>
                            <div class="box-header">
                                <h4><b>Assessments</b></h4>
                            </div>
                            <table id="data-assessment" class="table table-hover">
                                <tr>
                                    <th>Code</th>
                                    <th>Assessment</th>
                                    <th>Mapped Course Outcome</th>
                                    <th>Description</th>
                                    <th>Weight to CO</th>
                                </tr>
                            </table>
                            <br/>
                            <!-- /.box-body -->
                            <div class="box-footer">
                                <a href="/OBESystem/RedirectToViewSyllabusList"><button type="button" class="btn btn-default pull-right">Back</button></a>
                                <button type="button" id="button-print" class="btn btn-success pull-right"><i class="fa fa-print"></i>  Print</button>
                                <button id ="firstDelete" type="button" style="display: none;" class="btn btn-danger pull-right" data-toggle="modal" data-target="#myModal">Delete</button>
                            </div>
                        </div>
                    </div>
                </section>
                <div id="myModal" class="modal fade" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Confirmation Message</h4>
                            </div>
                            <div class="modal-body">
                                <p>Are you sure you want to <b>permanently delete</b> this?</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Review entry</button>
                                <a href="/OBESystem/RedirectToViewSyllabusList"><button id="delete" type="button" class="btn btn-danger">Yes, I am sure</button></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- jQuery 2.2.3 -->
        <script src="/OBESystem/resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
        <!-- Bootstrap 3.3.6 -->
        <script src="/OBESystem/resources/bootstrap/js/bootstrap.min.js"></script>
        <!-- Select2 -->
        <script src="/OBESystem/resources/plugins/select2/select2.full.min.js"></script>
        <!-- InputMask -->
        <script src="/OBESystem/resources/plugins/input-mask/jquery.inputmask.js"></script>
        <script src="/OBESystem/resources/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
        <script src="/OBESystem/resources/plugins/input-mask/jquery.inputmask.extensions.js"></script>
        <!-- date-range-picker -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
        <script src="/OBESystem/resources/plugins/daterangepicker/daterangepicker.js"></script>
        <!-- bootstrap datepicker -->
        <script src="/OBESystem/resources/plugins/datepicker/bootstrap-datepicker.js"></script>
        <!-- bootstrap color picker -->
        <script src="/OBESystem/resources/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
        <!-- bootstrap time picker -->
        <script src="/OBESystem/resources/plugins/timepicker/bootstrap-timepicker.min.js"></script>
        <!-- SlimScroll 1.3.0 -->
        <script src="/OBESystem/resources/plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <!-- iCheck 1.0.1 -->
        <script src="/OBESystem/resources/plugins/iCheck/icheck.min.js"></script>
        <!-- FastClick -->
        <script src="/OBESystem/resources/plugins/fastclick/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="/OBESystem/resources/dist/js/app.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="/OBESystem/resources/dist/js/demo.js"></script>
        <!--self made-->
        <script src="/OBESystem/js/view_syllabus.js"></script>
    </body>
</html>
