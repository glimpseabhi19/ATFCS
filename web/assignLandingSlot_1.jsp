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
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header">Assign Landing Slot</h3>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <%
                
                %>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Basic Flight Details for <b><%=request.getParameter("flt_code")%></b> with Reference number <b><%=request.getParameter("ref_no")%></b>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form">
                                        <div class="form-group">
                                            <label> Airport Code </label>
                                            <input class="form-control" type="text" value="KNS" disabled="disable">
                                            <!--<p class="help-block">Example block-level help text here.</p>-->
                                        </div>
                                        <div class="form-group">
                                            <label>Parking Slot Number</label>
                                            <input class="form-control" type="text" value="">
                                            <!--<p class="help-block">Example block-level help text here.</p>-->
                                        </div>
                                                                                                           
                                     <div class="form-group">
                                            <label> Bay Code </label>
                                            <input class="form-control" type="text" value="" id="bayCode">
                                            <!--<p class="help-block">Example block-level help text here.</p>-->
                                        </div>
                                        <div class="form-group">
                                            <label> Flight Date Time Logged</label>
                                            
                                          <input class="form-control" type="datetime-local" value="" id="bayCode">
                                         
                                         </div>
                                        <div class="form-group">
                                            <label> Sequence Number </label>
                                            <input class="form-control" type="text" value="" id="dpCode">
                                            <!--<p class="help-block">Example block-level help text here.</p>-->
                                        </div>
                                         <div class="form-group">
                                            <label> Runway Code </label>
                                            <input class="form-control" type="text" value="" id="waypointfromTo" >
                                            <!--<p class="help-block">Example block-level help text here.</p>-->
                                        </div>

                                       <!-- for submit button-->
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                <div class="col-lg-6">
                                   
                                    <form role="form1">
                                        <div class="form-group">
                                            <label>Flight Expected Arrival Time </label>
                                            <input class="form-control" type="datetime-local" value="" id="reference_key">
                                            <!--<p class="help-block">Example block-level help text here.</p>-->
                                        </div>
                                        <div class="form-group">
                                            <label>Flight Actual Arrival Time</label>
                                            <input class="form-control" type="datetime-local" value="" id="reference_key">
                                         </div>
                                        <div class="form-group">
                                            <label> Slot Booked From Time </label>
                                           <input class="form-control" type="datetime-local" value="" >
                                        </div>
                                                                              
                                         <div class="form-group">
                                            <label>Slot Booked To Time</label>
                                            <input class="form-control" type="datetime-local" value="" >
                                         </div>
                                         <div class="form-group">
                                            <label>Slot Free Expected Time</label>
                                            <input class="form-control" type="datetime-local" value="" >
                                         </div>
                                         <div class="form-group">
                                            <label> Slot Free Actual Time </label>
                                            <input class="form-control" type="datetime-local" value="" >
                                            <!--<p class="help-block">Example block-level help text here.</p>-->
                                        </div>
                                         
                                        
                                        
                                    </form>
                                    <br>
                                    <!-- for submit button-->
                                     <button type="submit" class="btn btn-outline btn-primary btn-lg btn-block">     Submit    </button>
                                    <!-- <button type="reset" class="btn btn-outline btn-primary">    Reset    </button>-->
                                    
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
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
    <!-- /#wrapper -->

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
