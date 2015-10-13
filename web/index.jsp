<%@ page pageEncoding="UTF-8" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ include file="ReadPropertiesFile.jsp" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- <meta http-equiv="refresh" content="5" >-->
        <title>Air Traffic Flow Control System</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

        <!-- Timeline CSS -->
        <link href="css/plugins/timeline.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/sb-admin-2.css" rel="stylesheet">

        <!-- Morris Charts CSS -->
        <link href="css/plugins/morris.css" rel="stylesheet">

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


        var myRefreshTimeout;

        /** Function to refresh the page at specified interval. **/
        function startRefresh(refreshPeriod) {
            myRefreshTimeout = setTimeout("window.location.reload();", refreshPeriod);
        }

        /** Function to stop refreshing the page. **/
        //id="ref_key" onclick="stopRefresh();"
        function stopRefresh() {
            //document.getElementById(id).value
            // alert("Stop refresh called");
            clearTimeout(myRefreshTimeout);
            window.location.hash = 'stop';
        }
        
        function openOnImageClick()
        {
            window.open("http://www.shiftaviation.com");
        }
    </script>
    <body onload="startRefresh(45000);">
        <%
            String lang = "";
                Object obj = request.getParameter("hidden");
                    if (obj != null) {
                     lang=obj.toString();
                    }
                   // System.out.println("language selected " + lang);
                    if(lang.equals(""))
                            lang="en";
                    
                 %>
        
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
                    <a class="navbar-brand" href="#"> <img onclick="openOnImageClick()" src="images/SA_logo.jpg" alt="Shift Logo" style="width:185px;height:30px"> &emsp;&emsp;&emsp;&emsp;&nbsp;<b><% out.print(getValue(lang,"dashboard.appName")); %></b> </a>
               
                   </div>
                <!-- /.navbar-header -->
                
                <ul class="nav navbar-top-links navbar-right">
                    <b><%out.print(getValue(lang,"dashboard.welcome"));%> </b>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-messages">
                            <li>
                                <a href="#">
                                    <div>
                                        <strong><% out.print(getValue(lang,"dashboard.flightInfo")); %> 1</strong>
                                        <span class="pull-right text-muted">
                                            <em><% out.print(getValue(lang,"dashboard.yesterday")); %></em>
                                        </span>
                                    </div>
                                    <div>An operator or pilot of a general aviation aircraft is required to report international or Channel Islands journeys to or from the UK...</div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <strong><% out.print(getValue(lang,"dashboard.flightInfo")); %> 2</strong>
                                        <span class="pull-right text-muted">
                                            <em><% out.print(getValue(lang,"dashboard.yesterday")); %></em>
                                        </span>
                                    </div>
                                    <div>An operator or pilot of a general aviation aircraft is required to report international or Channel Islands journeys to or from the UK...</div>
                                </a>
                            </li>

                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong><% out.print(getValue(lang,"dashboard.readAllMessage")); %></strong>
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
                                            <strong><% out.print(getValue(lang,"dashboard.task")); %> 1</strong>
                                            <span class="pull-right text-muted">40% <% out.print(getValue(lang,"dashboard.complete")); %></span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                <span class="sr-only">40% <% out.print(getValue(lang,"dashboard.complete")); %> (success)</span>
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
                                            <strong><% out.print(getValue(lang,"dashboard.task")); %> 2</strong>
                                            <span class="pull-right text-muted">20% <% out.print(getValue(lang,"dashboard.complete")); %></span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                                <span class="sr-only">20% <% out.print(getValue(lang,"dashboard.complete")); %></span>
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
                                            <strong><% out.print(getValue(lang,"dashboard.task")); %> 3</strong>
                                            <span class="pull-right text-muted">60% <% out.print(getValue(lang,"dashboard.complete")); %></span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                <span class="sr-only">60% <% out.print(getValue(lang,"dashboard.complete")); %> (warning)</span>
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
                                            <strong><% out.print(getValue(lang,"dashboard.task")); %> 4</strong>
                                            <span class="pull-right text-muted">80% <% out.print(getValue(lang,"dashboard.complete")); %></span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                                <span class="sr-only">80% <% out.print(getValue(lang,"dashboard.complete")); %> (danger)</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong><% out.print(getValue(lang,"dashboard.seeAllTask")); %></strong>
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
                                        <i class="fa fa-plane fa-fw"></i> <%out.print(getValue(lang,"dashboard.flightAlert"));%>
                                        <span class="pull-right text-muted small">2 <% out.print(getValue(lang,"dashboard.minutes")); %></span>
                                        </font>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-comment fa-fw"></i> <%out.print(getValue(lang,"dashboard.newComment"));%>
                                        <span class="pull-right text-muted small">10 <% out.print(getValue(lang,"dashboard.minutes")); %></span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-envelope fa-fw"></i> <%out.print(getValue(lang,"dashboard.messageSent"));%>
                                        <span class="pull-right text-muted small">4 <% out.print(getValue(lang,"dashboard.minutes")); %></span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-tasks fa-fw"></i><%out.print(getValue(lang,"dashboard.newTask"));%>
                                        <span class="pull-right text-muted small">4 <% out.print(getValue(lang,"dashboard.minutes")); %></span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>

                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong><%out.print(getValue(lang,"dashboard.seeAllAlerts"));%></strong>
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
                            <li><a href="#"><i class="fa fa-user fa-fw"></i> <%out.print(getValue(lang,"dashboard.userProfile"));%></a>
                            </li>
                            <li><a href="#"><i class="fa fa-gear fa-fw"></i> <%out.print(getValue(lang,"dashboard.setting"));%></a>
                            </li>
                            <li><a href="lockScreen.jsp"><i class="fa fa-lock fa-fw"></i> <%out.print(getValue(lang,"dashboard.lockScreen"));%></a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="login.jsp"><i class="fa fa-sign-out fa-fw"></i> <%out.print(getValue(lang,"dashboard.logout"));%></a>
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
                                    <input type="text" class="form-control" placeholder="<% out.print(getValue(lang,"dashboard.search")); %>">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </span>
                                </div> 

                                <!-- /input-group -->
                            </li>
                            <li>
                                <a class="active" href="index.jsp"><i class="fa fa-dashboard fa-fw"></i> <% out.print(getValue(lang,"dashboard.menu.dashboard")); %></a>
                            </li>

                            <li>
                                <a href="#"><i class="fa fa-table fa-fw"></i> <% out.print(getValue(lang,"dashboard.menu.scheduled")); %><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                   <li>
                                        <a href="tables.jsp?mode=Arrivals"><% out.print(getValue(lang,"dashboard.menu.arrivals")); %></a>
                                    </li>
                                   
                                    <li>
                                        <a href="tables.jsp?mode=enRoute"><% out.print(getValue(lang,"dashboard.menu.enroute")); %></a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-edit fa-fw"></i> <% out.print(getValue(lang,"dashboard.menu.registration")); %><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">

                                    <li>
                                        <a href="forms.jsp"><% out.print(getValue(lang,"dashboard.menu.registerSlot")); %></a>
                                    </li>

                                </ul>
                            </li>

                            <li>
                                <a href="assignLandingSlot.jsp?mode=assignSlot"><i class="fa fa-check-square fa-fw"></i> <% out.print(getValue(lang,"dashboard.menu.assignSlot")); %></a> 
                            </li>
                            <li>
                                <a href="notifications.jsp"><i class="fa fa-warning fa-fw"></i> <% out.print(getValue(lang,"dashboard.menu.notification")); %></a> 
                            </li>
                            <li>
                                <a href="historyArrivals.jsp"><i class="fa fa-history fa-fw"></i><% out.print(getValue(lang,"dashboard.menu.recentPerformance")); %></a> 
                            </li>

                        </ul>
                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            </nav>


            <%
                Connection connection = null;
                Statement insertStmt = null;
                String rowCount = "";
                try {
                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                    connection = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=SIBS", "sa", "adminadmin");

                    /*insertStmt = connection.createStatement();
                     insertStmt.execute("INSERT INTO EMPLOYEE (ID,FIRST_NAME,LAST_NAME,STAT_CD) VALUES (1,'Lokesh','Gupta',5)");
                     insertStmt.execute("INSERT INTO EMPLOYEE (ID,FIRST_NAME,LAST_NAME,STAT_CD) VALUES (2,'howtodoinjava','com',5)");*/
                    insertStmt = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                    ResultSet rs = insertStmt.executeQuery("select count(*) from airport_flt_details");
                    String id = "";                // extract data from the ResultSet scroll from top
                    while (rs.next()) {
                        id = rs.getString(1);
                        //System.out.println("id=" + id);
                    }
                    // move to the end of the result set
                    rs.last();
          // get the row number of the last row which is also the row count
                    //rowCount = rs.getRow();
                    rowCount = id;
                    // System.out.println("rowCount=" + id);
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    try {

                        insertStmt.close();
                        connection.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }


            %>

            <div id="page-wrapper">
                <br><br>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-plane fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">28</div>
                                        <div><% out.print(getValue(lang,"dashboard.flightArrivalNextHour")); %> </div>
                                    </div>
                                </div>
                            </div>
                            <a href="tables.jsp?mode=Arrivals">
                                <div class="panel-footer">
                                    <span class="pull-left"><% out.print(getValue(lang,"dashboard.viewDetails")); %></span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-green">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-plane fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">28</div>
                                        <div><% out.print(getValue(lang,"dashboard.expectedOnScheduledArivals")); %></div>
                                    </div>
                                </div>
                            </div>
                            <a href="tables.jsp?mode=enRoute">
                                <div class="panel-footer">
                                    <span class="pull-left"><% out.print(getValue(lang,"dashboard.viewDetails")); %></span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-yellow">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-tasks fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">28</div>
                                        <div><% out.print(getValue(lang,"dashboard.parkingBayAllocated")); %></div>
                                    </div>
                                </div>
                            </div>
                            <a href="tables.jsp?mode=parkingBay">
                                <div class="panel-footer">
                                    <span class="pull-left"><% out.print(getValue(lang,"dashboard.viewDetails")); %></span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-red">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-support fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">43</div>
                                        <div><% out.print(getValue(lang,"dashboard.waypointInfo")); %></div>
                                    </div>
                                </div>
                            </div>
                            <a href="#">
                                <div class="panel-footer">
                                    <span class="pull-left"><% out.print(getValue(lang,"dashboard.viewDetails")); %></span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-8">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <i class="fa fa-bar-chart-o fa-fw"></i> <% out.print(getValue(lang,"dashboard.flightChart")); %> 
                                <div class="pull-right">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                            <% out.print(getValue(lang,"dashboard.option")); %>
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu pull-right" role="menu">
                                            <li><a href="#"><% out.print(getValue(lang,"dashboard.menu.arrivals")); %></a>
                                            </li>
                                            <li><a href="#"><% out.print(getValue(lang,"dashboard.scheduledArrival")); %></a>
                                            </li>
                                            <li class="divider"></li>
                                            <li><a href="#"><% out.print(getValue(lang,"dashboard.historyArrival")); %></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div id="morris-area-chart"></div>
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                 </div>
                    <!-- /.col-lg-8 -->
                    <div class="col-lg-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <i class="fa fa-bell fa-fw"></i> <% out.print(getValue(lang,"dashboard.alertPanel")); %>
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="list-group">
                                    <a href="assignLandingSlot.jsp?mode=alert" class="list-group-item">
                                        <font color="red"> <span class="blink_text">
                                            <i class="fa fa-plane fa-fw"></i> <% out.print(getValue(lang,"dashboard.flightAlert")); %>
                                            <span class="pull-right text-muted small">2 <% out.print(getValue(lang,"dashboard.minutes")); %></span>
                                        </span></font>
                                        </span>
                                    </a>

                                    <a href="#" class="list-group-item">
                                        <i class="fa fa-comment fa-fw"></i> <% out.print(getValue(lang,"dashboard.newComment")); %>
                                        <span class="pull-right text-muted small">10 <% out.print(getValue(lang,"dashboard.minutes")); %></span>
                                        </span>
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <i class="fa fa-tasks fa-fw"></i> <% out.print(getValue(lang,"dashboard.newTask")); %>
                                        <span class="pull-right text-muted small"><em>43 <% out.print(getValue(lang,"dashboard.minutes")); %></em>
                                        </span>
                                    </a>
                                   

                                </div>
                                <!-- /.list-group -->
                                <a href="#" class="btn btn-default btn-block"><% out.print(getValue(lang,"dashboard.viewAlert")); %></a>
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                        <br><br>
                       <img src="images/SA_logo.jpg" alt="Shift Logo" style="width:290px;height:50px" onclick="openOnImageClick()">

                    </div>
                    <!-- /.col-lg-4 -->
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

        <!-- Morris Charts JavaScript -->
        <script src="js/plugins/morris/raphael.min.js"></script>
        <script src="js/plugins/morris/morris.min.js"></script>
        <script src="js/plugins/morris/morris-data.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="js/sb-admin-2.js"></script>
        
 
    </body>

</html>
