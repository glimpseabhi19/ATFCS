<%-- 
    Document   : testTranslate
    Created on : Mar 3, 2015, 11:59:41 AM
    Author     : Earth
--%>

<html>
      <head>
       <title>Bing Translator Test</Title>
      </head>
     <body>
      
      <div id="englishText">
      Hello
      </div>
    <div id="arabicText">
     Arabic: 
     </div>
     
    <input type="button" value="en 2 ar" onClick="translate();"/>
    <script type="text/javascript">
    var text = document.getElementById("englishText").innerHTML ;
    function translate() {
   window.doneCallback = function(response) {
   document.getElementById("arabicText").innerHTML +=response; }
   var s = document.createElement("script");
    s.src = "http://api.microsofttranslator.com/V2/Ajax.svc/Translate?oncomplete=doneCallback&appId=MyAppID&
   from=en&to=ar" + "&text=" + text;
     document.getElementsByTagName("head")[0].appendChild(s);
    }
    </script>
     
    </body>
   </html>
