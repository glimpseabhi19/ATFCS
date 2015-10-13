<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Air Traffic Flow Control System</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

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
    
  function selectionchange()
{
    var date = new Date();
    var e = document.getElementById("flightSelect");
    var str = e.options[e.selectedIndex].value;
   //alert(str);
   
   var comp = str.substr(0, 2);
  // alert(comp);
   if(comp=="6E")
   {
      // alert(str.substr(0, 2));
   document.getElementById('flightType').value = 'B777-300ER [Wide Body]';
   document.getElementById('dateTime').value = date;
  document.getElementById('dpCode').value = 'XLR';
  document.getElementById('waypointfromTo').value = 'WP01 - WP04';
  document.getElementById('flightDuration').value = '2.43 min';
  document.getElementById('airlineCode').value = 'IGO';
  document.getElementById('aircraftModel').value = 'Airbus A321neo';
  document.getElementById('reference_key').value = 'BLR011';
   }
   else if (comp=="9W")
   {
       document.getElementById('flightType').value = 'ATR42 [Regional Aircraft]';
   document.getElementById('dateTime').value = date;
  document.getElementById('dpCode').value = 'AGR';
  document.getElementById('waypointfromTo').value = 'WP02 - WP04';
  document.getElementById('flightDuration').value = '3.0 min';
  document.getElementById('airlineCode').value = 'JAI';
  document.getElementById('aircraftModel').value = 'ATR 72-600';
  document.getElementById('reference_key').value = 'BLR010';
   }
    else if (comp=="AI")
   {
       document.getElementById('flightType').value = 'CRJ-700 [Regional Aircraft]';
   document.getElementById('dateTime').value = date;
  document.getElementById('dpCode').value = 'KOL';
  document.getElementById('waypointfromTo').value = 'WP03 - WP04';
  document.getElementById('flightDuration').value = '3.2 min';
  document.getElementById('airlineCode').value = 'AIC';
  document.getElementById('aircraftModel').value = 'Airbus A319-100';
  document.getElementById('reference_key').value = 'BLR002';
   }
    else if (comp=="G8")
   {
      document.getElementById('flightType').value = 'A319 [Narrow Body]';
   document.getElementById('dateTime').value = date;
  document.getElementById('dpCode').value = 'DEI';
  document.getElementById('waypointfromTo').value = 'WP02 - WP04';
  document.getElementById('flightDuration').value = '4.2 min';
  document.getElementById('airlineCode').value = 'GOW';
  document.getElementById('aircraftModel').value = 'Boeing 757';
  document.getElementById('reference_key').value = 'BLR0015'; 
   }
    else if (comp=="SG")
   {
       document.getElementById('flightType').value = 'B787 Dreamliner [Wide Body]';
   document.getElementById('dateTime').value = date;
  document.getElementById('dpCode').value = 'BOM';
  document.getElementById('waypointfromTo').value = 'WP02 - WP04';
  document.getElementById('flightDuration').value = '2.0 min';
  document.getElementById('airlineCode').value = 'SEJ';
  document.getElementById('aircraftModel').value = 'Q-400';
  document.getElementById('reference_key').value = 'BLR0012';
   }
        
}  
    
    
    
</script>
<body>

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
                        < <li>
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
            <%
                if(request.getParameter("mode").equalsIgnoreCase("alert"))
                {
                    %>
                     <div class="row">
     <div class="col-lg-12">
                    <h3 class="page-header">Flights Actual Arrival Times are same !</h3>
                </div>
                <div class="col-lg-11">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Registered Flights
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Reference Key</th>
                                            <th>Flight Code</th>
                                            <th>Flight DateTime</th>
                                            <th>Route Code</th>
                                            <th>Expected Duration</th>
                                            <th>Flight Type</th>
                                             <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>  <button class="submitLink" data-toggle="modal" data-target="#myModal" id="ref_key" value="BLR0032">
                                                        KNS0032
                                            </button></td>
                                           <!-- <td>BLR0032</td>-->
                                            <td>6E 449</td>
                                            <td><%= new java.util.Date() %></td>
                                            <td>RC02</td>
                                            <td>3.5 min</td>
                                            <td>B787 Dreamliner [Wide Body]</td>
                                            <td><a href="forms.jsp?flt_code=6E 449&ref_no=KNS0032">Reassign Approach Slot</a></td>
                                        </tr>
                                        <tr>
                                            <!--<td>BLR0032</td>-->
                                            <td> <button class="submitLink" data-toggle="modal" data-target="#myModal" id="ref_key" value="BLR0022">
                                                        KNS0022
                                            </button></td> 
                                            <td>9W2390</td>
                                            <td><%= new java.util.Date() %></td>
                                            <td>RC04</td>
                                            <td>3.5 min</td>
                                            <td>ATR42 [Regional Aircraft]</td>
                                            <td><a href="forms.jsp?flt_code=9W2390&ref_no=KNS0022">Reassign Approach Slot</a></td>
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
           
        </div>
                    <%
                }
                else{
            %>
 <div class="row">
     <div class="col-lg-12">
                    <h3 class="page-header">Assign Approach Slot</h3>
                </div>
                <div class="col-lg-11">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Registered Flights
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Reference Key</th>
                                            <th>Flight Code</th>
                                            <th>Flight DateTime</th>
                                            <th>Route Code</th>
                                            <th>Expected Duration</th>
                                            <th>Flight Type</th>
                                             <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>  <button class="submitLink" data-toggle="modal" data-target="#myModal" id="ref_key" value="BLR0032">
                                                        KNS0032
                                            </button></td>
                                           <!-- <td>BLR0032</td>-->
                                            <td>6E 449</td>
                                            <td><%= new java.util.Date() %></td>
                                            <td>RC02</td>
                                            <td>3.5 min</td>
                                            <td>B787 Dreamliner [Wide Body]</td>
                                            <td><a href="assignLandingSlot_1.jsp?flt_code=6E 449&ref_no=KNS0032">Assign Approach Slot</a></td>
                                        </tr>
                                        <tr>
                                            <!--<td>BLR0032</td>-->
                                            <td> <button class="submitLink" data-toggle="modal" data-target="#myModal" id="ref_key" value="BLR0022">
                                                        KNS0022
                                            </button></td> 
                                            <td>9W2390</td>
                                            <td><%= new java.util.Date() %></td>
                                            <td>RC04</td>
                                            <td>3.0 min</td>
                                            <td>B777-300ER [Wide Body]</td>
                                            <td><a href="assignLandingSlot_1.jsp?flt_code=9W2390&ref_no=KNS0022">Assign Approach Slot</a></td>
                                        </tr>
                                        <tr>
                                            <td><button class="submitLink" data-toggle="modal" data-target="#myModal" id="ref_key" value="BLR0012">
                                                        KNS0012
                                            </button></td>
                                            <td>AI410</td>
                                            <td><%= new java.util.Date() %></td>
                                            <td>RC04</td>
                                            <td>2.5 min</td>
                                            <td>ATR42 [Regional Aircraft]</td>
                                            <td><a href="assignLandingSlot_1.jsp?flt_code=AI410&ref_no=KNS0012">Assign Approach Slot</a></td>
                                        </tr>
                                         <tr>
                                            <td><button class="submitLink" data-toggle="modal" data-target="#myModal" id="ref_key" value="BLR0018">
                                                        KNS0018
                                            </button></td>
                                            <td>G8-193</td>
                                            <td><%= new java.util.Date() %></td>
                                            <td>RC03</td>
                                            <td>2.2 min</td>
                                            <td>CRJ700 [Regional Aircraft]</td>
                                           <td><a href="assignLandingSlot_1.jsp?flt_code=G8-193&ref_no=KNS0018">Assign Approach Slot</a></td>
                                        </tr>
                                         <tr>
                                            <td><button class="submitLink" data-toggle="modal" data-target="#myModal" id="ref_key" value="BLR0072">
                                                        KNS0072
                                            </button></td>
                                            <td>SG 18</td>
                                            <td><%= new java.util.Date() %></td>
                                            <td>RC02</td>
                                            <td>2.0 min</td>
                                            <td>A319 [Narrow Body]</td>
                                            <td><a href="assignLandingSlot_1.jsp?flt_code=SG 18&ref_no=KNS0072">Assign Approach Slot</a></td>
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
           
        </div>
                                            <% } %>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
    
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
                                    <td>AI403</td>
                                    <td>WP04 - WP01</td>
                                    <td>4.5 min.</td>
                                    <td>Ontime</td>
                                    <td>Boeing 757</td>
                                </tr>
                            </tbody>
                        </table>
                        
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Ok</button>
                        
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>                             


    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/plugins/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/sb-admin-2.js"></script>

</body>

</html>
