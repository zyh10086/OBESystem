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
        <link rel="stylesheet" href="/OBESystem/resources/dist/css/skins/_all-skins.min.css">
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <!-- ./wrapper -->
        <div class="wrapper">
            <div class="content-wrapper">
                <!-- Main content -->
                <section class="content">
                    <div class="box box-success">
                        <div class="box-header with-border">
                            <h3 class="box-title">Search Program for Program Outcomes</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <form class="form-horizontal">
                            <div class="box-body">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">College</label>
                                    <div class="col-sm-10">
                                        <select id = "select-college" class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Program</label>
                                    <div class="col-sm-10">
                                        <select id = "select-program" class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">  
                                 <a id ="confirm-btn" href ="/OBESystem/RedirectToCreatePO"><button type="button" class="btn btn-success pull-right">Confirm</button></a>
                            </div>
                            <!-- /.box-footer -->
                        </form>
                    </div>
                </section>
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
        <!--Search-->
        <script src="/OBESystem/js/search_program.js"></script>
        <!-- Page script -->
        <script>
            $(function () {
                //Initialize Select2 Elements
                $(".select2").select2();

                //Datemask dd/mm/yyyy
                $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
                //Datemask2 mm/dd/yyyy
                $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
                //Money Euro
                $("[data-mask]").inputmask();

                //Date range picker
                $('#reservation').daterangepicker();
                //Date range picker with time picker
                $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
                //Date range as a button
                $('#daterange-btn').daterangepicker(
                        {
                            ranges: {
                                'Today': [moment(), moment()],
                                'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                                'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                                'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                                'This Month': [moment().startOf('month'), moment().endOf('month')],
                                'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                            },
                            startDate: moment().subtract(29, 'days'),
                            endDate: moment()
                        },
                        function (start, end) {
                            $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
                        }
                );

                //Date picker
                $('#datepicker').datepicker({
                    autoclose: true
                });

                //iCheck for checkbox and radio inputs
                $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
                    checkboxClass: 'icheckbox_minimal-blue',
                    radioClass: 'iradio_minimal-blue'
                });
                //Red color scheme for iCheck
                $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
                    checkboxClass: 'icheckbox_minimal-red',
                    radioClass: 'iradio_minimal-red'
                });
                //Flat red color scheme for iCheck
                $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
                    checkboxClass: 'icheckbox_flat-green',
                    radioClass: 'iradio_flat-green'
                });

                //Colorpicker
                $(".my-colorpicker1").colorpicker();
                //color picker with addon
                $(".my-colorpicker2").colorpicker();

                //Timepicker
                $(".timepicker").timepicker({
                    showInputs: false
                });
            });
        </script>
    </body>
</html>
