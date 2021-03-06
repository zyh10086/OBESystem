<%@page import="model.IGA"%>
<%@page import="java.util.ArrayList"%>
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
        <link rel="stylesheet" href="/OBESystem/resources/dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="/OBESystem/resources/dist/css/skins/_all-skins.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="/OBESystem/js/background.css">
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">
            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">

                <!-- Main content -->
                <form action="EncodeIGA" method="post" name="EncodeIGA">
                    <section class="content">
                        <div class="box box-success">
                            <!-- /.box-header -->
                            <div class="box-header">
                                <h3 class="box-title">Institutional Graduate Attribute</h3>
                                <a href="#" id="iga-info" data-toggle="popover" data-trigger="focus" data-placement="auto">
                                    <button type="button" class="btn btn-primary btn-xs"><i class="fa fa-question"></i></button>
                                </a>
                                <a href="#" id="iga-instruc" data-toggle="popover" data-trigger="focus" data-placement="auto">
                                    <button type="button" class="btn btn-success btn-xs"><i class="fa fa-info"></i></button>
                                </a>
                                <br>
                            </div>
                            <!--hidden values -->
                            <input type="hidden" name="contributor" class="readonlyWhite" id="contributor" value="${login.userID}" />
                            <input type="hidden" id="posID" value="${login.posID}" />
                            <input type="hidden" id="userID" value="${login.userID}" />
                            <!--encoding IGA table-->
                            <div class="box-body table-responsive">
                                <table id="data" class="table table-hover">
                                    <tr>
                                        <th id="iga-code">Code</th>
                                        <th id="iga-title">
                                            <div class="col-sm-10">
                                                Institutional Graduate Attribute
                                            </div>
                                        </th>
                                        <th id="iga-description">
                                            <div class="col-sm-10">
                                                Description
                                            </div>
                                        </th>
                                        <th>
                                            <div class="col-sm-10">
                                                Remarks
                                            </div>
                                        </th>
                                        <th>Tools</th>
                                    </tr>
                                </table>
                            </div>
                            <div class="box-footer">  
                                <button id ="addRowButton" type="button" class="btn btn-success pull-left"><i class="fa fa-plus"></i> Add Row</button>
                                <button id ="save" type="button" class="btn btn-success pull-right" data-toggle="modal" data-target="#myModal">Save</button>
                            </div>
                            <!-- /.box-footer -->
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
                                    <p>Are you sure you want to save this? You can no longer <b>delete</b> your entry once saved.</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Review entry</button>
                                    <button type="submit" class="btn btn-success">Yes, I am sure</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
        </div>
        <!-- ./wrapper -->

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
        <!-- Delete Row -->
        <script src="/OBESystem/resources/bootstrap/js/deleteRow.js"></script>
        <script src="/OBESystem/js/create_IGA.js"></script>
        <script src="/OBESystem/js/instructions.js"></script>
    </body>
</html>
