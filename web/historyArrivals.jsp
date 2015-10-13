<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.t8.service.Airport_Flt_DetailsServiceImpl"%>
<%@page import="com.t8.service.Airport_Flt_DetailsService"%>
<%@page import="java.util.List"%>
<%@page import="com.t8.model.Airport_Flight_Details"%>
<%@page import="java.net.URLDecoder"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
   <!-- <meta http-equiv="refresh" content="10" >-->
        <title>Air Traffic Flow Control System</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

        <!-- DataTables CSS -->
        <link href="css/plugins/dataTables.bootstrap.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>
    <style type="text/css">
.blink_text {
-webkit-animation-name: blinker;
-webkit-animation-duration: 1s;
-webkit-animation-timing-function: linear;
-webkit-animation-iteration-count: infinite;

-moz-animation-name: blinker;
-moz-animation-duration: 1s;
-moz-animation-timing-function: linear;
-moz-animation-iteration-count: infinite;

 animation-name: blinker;
 animation-duration: 1s;
 animation-timing-function: linear;
 animation-iteration-count: infinite;

 color: red;
}

@-moz-keyframes blinker {  
 0% { opacity: 1.0; }
 50% { opacity: 0.0; }
 100% { opacity: 1.0; }
 }

@-webkit-keyframes blinker {  
 0% { opacity: 1.0; }
 50% { opacity: 0.0; }
 100% { opacity: 1.0; }
 }

@keyframes blinker {  
 0% { opacity: 1.0; }
 50% { opacity: 0.0; }
 100% { opacity: 1.0; }
 }
 </style>

    <style type="text/css">
        .submitLink {
            background-color: transparent;
            text-decoration: underline;
            border: 0;
            color: blue;
            cursor: pointer;
        }
    </style>
    <script language="javascript" type="text/javascript">


 var myRefreshTimeout;

    /** Function to refresh the page at specified interval. **/
    function startRefresh(refreshPeriod) {
        myRefreshTimeout = setTimeout("window.location.reload();",refreshPeriod);
    }

    /** Function to stop refreshing the page. **/
    //id="ref_key" onclick="stopRefresh();"
    function stopRefresh() {
        //document.getElementById(id).value
        // alert("Stop refresh called");
        clearTimeout(myRefreshTimeout);
        window.location.hash = 'stop' ;
    }
</script>
    <body onload="startRefresh(45000);">

        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"> <img onclick="openOnImageClick()" src="images/SA_logo.jpg" alt="Shift Logo" style="width:185px;height:30px"> &emsp;&emsp;&emsp;&emsp;&nbsp;<b>Air Traffic Flow Control System</b> </a>
                </div>
                <!-- /.navbar-header -->

                <ul class="nav navbar-top-links navbar-right">
                     <b>  Welcome Admin, </b> 
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-messages">
                            <li>
                                <a href="#">
                                    <div>
                                        <strong>Flight Info 1</strong>
                                        <span class="pull-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>An operator or pilot of a general aviation aircraft is required to report international or Channel Islands journeys to or from the UK...</div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <strong>Flight Info 2</strong>
                                        <span class="pull-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>An operator or pilot of a general aviation aircraft is required to report international or Channel Islands journeys to or from the UK...</div>
                                </a>
                            </li>
                           
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>Read All Messages</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                        <!-- /.dropdown-messages -->
                    </li>
                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-tasks fa-fw"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-tasks">
                            <li>
                                <a href="#">
                                    <div>
                                        <p>
                                            <strong>Task 1</strong>
                                            <span class="pull-right text-muted">40% Complete</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                <span class="sr-only">40% Complete (success)</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <p>
                                            <strong>Task 2</strong>
                                            <span class="pull-right text-muted">20% Complete</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                                <span class="sr-only">20% Complete</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <p>
                                            <strong>Task 3</strong>
                                            <span class="pull-right text-muted">60% Complete</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                <span class="sr-only">60% Complete (warning)</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <p>
                                            <strong>Task 4</strong>
                                            <span class="pull-right text-muted">80% Complete</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                                <span class="sr-only">80% Complete (danger)</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>See All Tasks</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                        <!-- /.dropdown-tasks -->
                    </li>
                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <span class="blink_text"><i class="fa fa-bell fa-fw"></i> </span><i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-alerts">
                             <li>
                            <a href="notifications.jsp">
                                <div>
                                    <font color="red">
                                    <i class="fa fa-plane fa-fw"></i> Flight Alert
                                    <span class="pull-right text-muted small">2 minutes ago</span>
                                    </font>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                    <div>
                                        <i class="fa fa-comment fa-fw"></i> New Comment
                                        <span class="pull-right text-muted small">10 minutes ago</span>
                                    </div>
                                </a>
                        </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                        <span class="pull-right text-muted small">12 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-envelope fa-fw"></i> Message Sent
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-tasks fa-fw"></i> New Task
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>See All Alerts</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                        <!-- /.dropdown-alerts -->
                    </li>
                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                            </li>
                            <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                            </li>
                            <li><a href="lockScreen.jsp"><i class="fa fa-lock fa-fw"></i> Lock Screen</a>
                        </li>
                            <li class="divider"></li>
                            <li><a href="login.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                            </li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                    <!-- /.dropdown -->
                </ul>
                <!-- /.navbar-top-links -->

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li class="sidebar-search">
                                <div class="input-group custom-search-form">
                                    <input type="text" class="form-control" placeholder="Search...">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </span>
                                </div>
                                <!-- /input-group -->
                            </li>
                            <li>
                                <a href="index.jsp"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                            </li>

                            <li>
                                <a href="tables.jsp"><i class="fa fa-table fa-fw"></i> Scheduled<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                   <li>
                                        <a href="tables.jsp?mode=Arrivals">Arrivals</a>
                                    </li>
                                   
                                    <li>
                                        <a href="tables.jsp?mode=enRoute">En Route</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="forms.jsp"><i class="fa fa-edit fa-fw"></i> Registration<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    
                                    <li>
                                        <a href="forms.jsp">Register Approach Slot</a>
                                    </li>
                                    
                                </ul>
                            </li>
                            
                            <li>
                                <a href="assignLandingSlot.jsp?mode=assignSlot"><i class="fa fa-check-square fa-fw"></i> Assign Approach Slot</a> 
                            </li>
                            <li>
                                <a href="notifications.jsp"><i class="fa fa-warning fa-fw"></i> Notification</a> 
                            </li>
                            <li>
                                <a href="historyArrivals.jsp"><i class="fa fa-history fa-fw"></i>Recent Performance Record</a> 
                            </li>
                        </ul>
                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            </nav>

            <div id="page-wrapper">
                <br><br>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <b>  Flight History  <%//=request.getParameter("mode")%></b>
                            </div>
                            <!-- /.panel-heading -->
                           
                            <%
                        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                          //DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss z");                      
                        Date date = new Date();             
                         %>
                            
                            <div class="panel-body">
                                <div class="table-responsive">
                                   
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                        <thead>
                                            <tr>
                                                
                                                <th>Airline Code</th>
                                                <th>Flight Code</th>
                                                <th>Arrival Time</th>
                                                <th> Actual Departure</th>
                                                <th>Parking Bay </th>
                                                 <th>Max Park Time</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                          
                                            <tr class="odd gradeX">
                                                
                                                
                                                <td>
                                                    <button class="submitLink" data-toggle="modal" data-target="#myModal1" id="ref_key1" onclick="stopRefresh();" value="">
                                                       ANA
                                                    </button></td>
                                                <td>ANA403</td>
                                                <td><%= Timestamp.valueOf(dateFormat.format(System.currentTimeMillis() - 10 * 60 * 1000)) %></td>
                                                <td><%= Timestamp.valueOf(dateFormat.format(System.currentTimeMillis() - 5 * 60 * 1000)) %></td>
                                                <td>PB10</td>
                                                <td>5 mins.</td>
                                               
                                            </tr>
                                            <tr class="odd gradeX">
                                                
                                                
                                                <td>
                                                    <button class="submitLink" data-toggle="modal" data-target="#myModal1" id="ref_key1" onclick="stopRefresh();" value="">
                                                       JAL
                                                    </button></td>
                                                <td>JAL501</td>
                                                <td><%= Timestamp.valueOf(dateFormat.format(System.currentTimeMillis() - 20 * 60 * 1000)) %></td>
                                                <td><%= Timestamp.valueOf(dateFormat.format(System.currentTimeMillis() - 2 * 60 * 1000)) %></td>
                                                <td>PB19</td>
                                                <td>18 mins.</td>
                                               
                                            </tr>
                                            
                                        </tbody>
                                    </table>
                               
                                     
                                </div>
                                <!-- /.table-responsive -->

                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-12 -->
                </div>



                <!-- /.row -->
            </div>
            <!-- /#page-wrapper -->

        </div>
                                        
                                        
                                        
        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">Flight Detail For -KNS0015</h4>
                    </div>
                    <div class="modal-body">
                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                            <thead>
                                <tr>
                                 <th>Reference Key</th>
                                  <th>Flight Code</th>
                                  <th>Waypoint From-To</th>
                                  <th>Duration</th>
                                 <th>Progress</th>
                                  <th>Type</th>
                            </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>KNS0015</td>
                                    <td>ANA403</td>
                                    <td>WP04 - WP01</td>
                                    <td>4.5 min.</td>
                                    <td>Ontime</td>
                                    <td>Boeing 757</td>
                                </tr>
                            </tbody>
                        </table>
                        
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal" onclick="startRefresh(10000);">Close</button>
                        <button type="button" class="btn btn-primary">Register Flight Plan</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>                             
<!-- End of Model  -->
        
                <!-- Modal 1 -->
        <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">Assigned landing Slot Details</h4>
                    </div>
                    <div class="modal-body">
                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                            <thead>
                                <tr>
                                 <th>Airline Code</th>
                                  <th>Flight Code</th>
                                  <th>Waypoint From-To</th>
                                  <th>Runway Code</th>
                                 <th>Progress</th>
                                  <th>Seq No</th>
                            </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>ANA</td>
                                    <td>AN403</td>
                                    <td>WP04 - WP01</td>
                                    <td>RC01</td>
                                    <td>Ontime</td>
                                    <td>1001</td>
                                </tr>
                            </tbody>
                        </table>
                        
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="startRefresh(10000);">  Close  </button>
                        
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div> 
        <!-- /#wrapper -->
       
               <!-- Modal 2 -->
        <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">Approach Fix Details for flight <b>ANA403</b> at <B>KNS</B></h4>
                    </div>
                    <div class="modal-body">
                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                            <thead>
                                <tr>
                                 <th>Seq No</th>
                                  <th>Approach Fix From</th>
                                  <th>Approach Fix From Time</th>
                                  <th>Approach Fix To</th>
                                 <th>Approach Fix To Time</th>
                                  <th>Duration</th>
                            </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>01</td>
                                    <td>AF01</td>
                                    <td><%= Timestamp.valueOf(dateFormat.format(date)) %></td>
                                    <td>AF02</td>
                                    <td><%= Timestamp.valueOf(dateFormat.format(System.currentTimeMillis() + 2 * 60 * 1000)) %></td>
                                    <td>120 sec.</td>
                                </tr>
                                <tr>
                                    <td>02</td>
                                    <td>AF02</td>
                                    <td><%= Timestamp.valueOf(dateFormat.format(System.currentTimeMillis() + 2 * 60 * 1000)) %></td>
                                    <td>AF03</td>
                                    <td><%= Timestamp.valueOf(dateFormat.format(System.currentTimeMillis() + 6 * 60 * 1000)) %></td>
                                    <td>300 sec.</td>
                                </tr>
                                <tr>
                                    <td>03</td>
                                    <td>AF03</td>
                                    <td><%= Timestamp.valueOf(dateFormat.format(System.currentTimeMillis() + 6 * 60 * 1000)) %></td>
                                    <td>AF04</td>
                                    <td><%= Timestamp.valueOf(dateFormat.format(System.currentTimeMillis() + 10 * 60 * 1000)) %></td>
                                    <td>600 sec.</td>
                                </tr>
                            </tbody>
                        </table>
                        
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="startRefresh(10000);">  Close  </button>
                        
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div> 
        <!-- /#wrapper -->

        <!-- jQuery Version 1.11.0 -->
        <script src="js/jquery-1.11.0.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="js/plugins/metisMenu/metisMenu.min.js"></script>

        <!-- DataTables JavaScript -->
        <script src="js/plugins/dataTables/jquery.dataTables.js"></script>
        <script src="js/plugins/dataTables/dataTables.bootstrap.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="js/sb-admin-2.js"></script>

        <!-- Page-Level Demo Scripts - Tables - Use for reference -->
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
        </script>

    </body>

</html>
