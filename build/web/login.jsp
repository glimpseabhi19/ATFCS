
<%@ page pageEncoding="UTF-8" %>
<%@ include file="ReadPropertiesFile.jsp" %>
<html>
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
        .background-image {
            background-image: url('images/logo_2.jpg');
            background-size: cover;
            display: block;
            filter: blur(5px);
            -webkit-filter: blur(5px);
            height: 800px;
            left: 0;
            position: fixed;
            right: 0;
            z-index: 1;

        }

        .content {
            position: fixed;
            left: 0;
            right: 0;
            z-index: 9999;
            margin-left: 20px;
            margin-right: 20px;
        }
        
        .body {
                      
  background-image: url('images/newLogo.jpg');
  background-position: 10% 10%; ;
  background-repeat: no-repeat;

        }

    </style>
    <script language="javascript" type="text/javascript">
    //var gRadioValue = ''; //global declared outside of function
         var label = "Please Sign In";
         
        
        function myRadioFunc() {
            var lang = document.querySelector('input[name = "language"]:checked').value;
            
       //label =  getValue(lang,"login.label.text");
          //   alert(label); 
            if (lang == "English")
            {
               
                //alert(label);
                label = "Please Sign In";
                document.querySelector('input[name = "operatorId"]').placeholder = "User Id";
                document.querySelector('input[name = "password"]').placeholder = "Password";
                document.querySelector('input[name = "language"]:checked').value = "English";
                document.querySelector('input[name = "submit"]').value = "Let me in.";
                // window.location.replace("login.jsp?language="+label); 
                document.getElementById('hidden').value = 'en';
            }
            else if (lang == "Japanese")
            {
                // alert("日本人");
                // alert(label);
                
               label = "ログインしてください";
                document.querySelector('input[name = "operatorId"]').placeholder = "ユーザー識別";
                document.querySelector('input[name = "password"]').placeholder = "パスワード";
                //document.querySelector('input[name = "label"]').value = "パスワード";
                document.querySelector('input[name = "submit"]').value = "私をしましょう​​。";
                // window.location.replace("login.jsp?language="+label); 
                document.getElementById('hidden').value = 'ja';
            }
       
        }

    </script>


    <body class="body"><!-- background="images/logo_2.jpg" style="width:1200px;height:800px"> <!--class="background-image"-->
        <%
             String lang = "";
                Object obj = "";
                    if (obj != null) {
                     lang=obj.toString();
                    }
                   // System.out.println("language selected " + lang);
                    if(lang.equals(""))
                            lang="en";
            
        %>
      <!--  <div class="background-image"></div>-->
        <div class="content">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title" id="header"><script> document.write(label);</script></h3>
                            <!--  <label>
                                 <input type="text" name="label" value="Please Sign In" >
                             </label>-->
                        </div>
                        <div class="panel-body">
                         <!--   <img src="images/logo.png" alt="Shift Logo" style="width:160px;height:38px">-->
                            <img src="images/SA_logo.jpg" alt="Shift Logo" style="width:160px;height:38px">
                            <br>
                            <%
                            
                                String message = "";
                                Object object = request.getAttribute("message");
                                if (null != object) {
                                    message = object.toString();
                                }

                            %>
                            <font color="red"><% out.println(message);%></font>
                            <br> 
                            <form role="form" action="login" method="post" name="loginForm">
                                <div class="radio">
                                        <label>
                                            <input name="language" type="radio" id="eng" value="English" onclick="myRadioFunc();" checked>English
                                        </label>
                                        &emsp;&emsp;&emsp;&emsp;&nbsp;
                                        <label>
                                            <input name="language" type="radio" id="jap" onclick="myRadioFunc();" value="Japanese">日本人
                                        </label>
                                    </div> 

                                <fieldset>

                                    <div class="form-group">
                                        <input class="form-control" placeholder="User Id" id="operatorId" name="operatorId" autofocus>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Password" id="password" name="password" type="password" value="">
                                    </div>
                                    
                                    <!-- Change this to a button or input when using this as a form -->
                                    <!-- <a href="index.jsp" class="btn btn-lg btn-success btn-block">Let me in.</a>-->
                                    <input type="submit" name="submit" id="submit" value="Let me in." class="btn btn-lg btn-success btn-block">
                                    <input type="hidden" name="hidden" id="hidden" value="">
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
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
