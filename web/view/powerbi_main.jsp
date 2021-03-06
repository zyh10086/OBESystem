<%@page import="model.IGA"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<jsp:include page ="security.jsp" />
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>OBE System</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.6 -->
        <link rel="stylesheet" href="/OBESystem/resources/bootstrap/css/bootstrap.min.css" media="screen">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="/OBESystem/resources/downloads/font-awesome-4.7.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="/OBESystem/resources/downloads/ionicons-2.0.1/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="/OBESystem/resources/dist/css/AdminLTE.min.css"  media="screen">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="/OBESystem/resources/dist/css/skins/_all-skins.min.css">
        <link rel="stylesheet" href="/OBESystem/js/background.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="/OBESystem/js/printing.css"  media="print">
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">
            <div class="content-wrapper">
                <!-- Main content -->
                <section class="content">
                    <div class="box box-success">
                        <div class="box-header with-border">
                            <h3 class="box-title">Executive Dashboard</h3>
                            <a href="#" id="dashboard-info" data-toggle="popover" data-trigger="focus" data-placement="auto">
                                <button type="button" class="btn btn-success btn-xs"><i class="fa fa-info"></i></button>
                            </a>
                        </div>
                        <div id="printheader">
                            <img src="/OBESystem/resources/dist/img/dlsuLogo.png">
                            <img src="/OBESystem/resources/dist/img/ccsLogo.png">
                            <h3 class="box-title">Executive Dashboard</h3>
                            <h5>Created by: ${login.fullName}</h5>
                        </div>
                        <div id="powerbi" class="box-body">
                            <div id="powerbi-include" style="zoom: 3.55">
                            </div>
                        </div>
                        <div id="powerbi-details">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">Report For: </label>
                                <div class="col-sm-10">
                                    <input name="codeProgram" type="text" class="form-control" id="inputEmail3" placeholder="e.g. Dr. Theodre Tristan">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">Report Title: </label>
                                <div class="col-sm-10">
                                    <input name="codeProgram" type="text" class="form-control" id="inputEmail3" placeholder="e.g. Decreasing Acheivement Result for SYSDEVE">
                                </div>
                            </div>
                            <div class="form-group"><br>
                                <label class="col-sm-2 control-label">Description: </label>
                                <div class="col-sm-10">
                                    <textarea name="description" class="form-control" rows="3" placeholder="Enter a brief context summary of the report"></textarea>
                                </div>
                            </div>
                            <div class="form-group"><br>
                                <label class="col-sm-2 control-label">Analysis: </label>
                                <div class="col-sm-10">
                                    <textarea name="description" class="form-control" rows="3" placeholder="Type in the analysis or interpration of the visuals"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="box-footer">
                            <button type="button" id="button-print" class="btn btn-success pull-right"><i class="fa fa-print"></i>  Print</button>
                        </div>
                    </div>
                </section>
            </div>
        </div>

        <!-- jQuery 2.2.3 -->
        <script src="/OBESystem/resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
        <!-- Bootstrap 3.3.6 -->
        <script src="/OBESystem/resources/bootstrap/js/bootstrap.min.js"></script>
        <!-- Slimscroll -->
        <script src="/OBESystem/resources/plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="/OBESystem/resources/plugins/fastclick/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="/OBESystem/resources/dist/js/app.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="/OBESystem/resources/dist/js/demo.js"></script>
        <script src="/OBESystem/js/powerbi_main.js"></script>
        <script src="/OBESystem/js/instructions.js"></script>
    </body>
</html>
