<%-- 
    Document   : lockScreen
    Created on : Mar 23, 2015, 4:22:39 PM
    Author     : Earth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Air Traffic Flow Control System</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.css" rel="stylesheet">
        <!--external css-->

        <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">   
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet">
    </head>
    <style type="text/css">
        .body {

            background-image: url('images/newLogo.jpg');
            background-position: 10% 10%; ;
            background-repeat: no-repeat;

        }

    </style>
    <script language="javascript" type="text/javascript">
        function openOnButtonClick()
        {
            var password = document.getElementById('password').value;
            //alert(password);
            if (password == "password123")
                window.open("index.jsp", "_self");
            else
                alert("Please enter the password");
        }
    </script>
    <body class="body" onload="getTime()">

        <div class="container">

            <div id="showtime"></div>
            <div class="col-lg-4 col-lg-offset-4">
                <div class="lock-screen">
                    <h2><a data-toggle="modal" href="#myModal"><i class="fa fa-lock fa-5x"></i></i></a></h2>
                    <p><font color="00FFFF"><b>UNLOCK</b></font></p>

                    <!-- Modal -->
                    <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title">Welcome Back, Admin</h4>
                                </div>
                                <div class="modal-body">
                                    <p class="centered"><img class="img-circle" width="80" src="images/profile_icon.png"></p>
                                    <input size="30" placeholder=" Password " id="password" name="password" type="password" value="">

                                </div>
                                <div class="modal-footer centered">
                                    <button data-dismiss="modal" class="btn btn-primary" type="button">Cancel</button>
                                    <button class="btn btn-primary" type="button" onclick="openOnButtonClick()">Login</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- modal -->


                </div><! --/lock-screen -->
            </div><!-- /col-lg-4 -->

        </div><!-- /container -->

        <!-- jQuery Version 1.11.0 -->
        <script src="js/jquery-1.11.0.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <script>
                                        function getTime()
                                        {
                                            var today = new Date();
                                            var h = today.getHours();
                                            var m = today.getMinutes();
                                            var s = today.getSeconds();
                                            // add a zero in front of numbers<10
                                            m = checkTime(m);
                                            s = checkTime(s);
                                            document.getElementById('showtime').innerHTML = h + ":" + m + ":" + s;
                                            t = setTimeout(function () {
                                                getTime()
                                            }, 500);
                                        }

                                        function checkTime(i)
                                        {
                                            if (i < 10)
                                            {
                                                i = "0" + i;
                                            }
                                            return i;
                                        }
        </script>
    </body>
</html>
