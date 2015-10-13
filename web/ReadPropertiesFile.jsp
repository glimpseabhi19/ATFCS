<%@ page language="java" %>
<%@ page session="true"%>
<%@ page import="java.util.Properties"%>
<%@ page language="java" %>
<%@ page import="java.io.FileInputStream"%>
<%@ page language="java" %>
<%@ page import="java.io.FileNotFoundException"%>
<%@ page language="java" %>
<%@ page import="java.io.IOException"%>
<%@ page import="java.io.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
 <%!
     
     public String getValue(String language_code, String strKey)
     {
         Properties config = new Properties();
         FileInputStream fis;
         InputStream is;
         try 
         {
            
             
            // String fileName = Thread.currentThread().getContextClassLoader().getResourceAsStream("TranslationLabels_"+language_code+".properties").toString();
             //System.out.println("File path: "+fileName);
             //config.load(Thread.currentThread().getContextClassLoader().getResourceAsStream("TranslationLabels_"+language_code+".properties"));
             /*ClassLoader cls = Thread.currentThread().getContextClassLoader();
             System.out.println(cls.toString());
             is = cls.getResourceAsStream("TranslationLabels_"+languageCode+".properties");
             config.load(is);*/
             //config.load(getServletContext().getResourceAsStream("/WEB-INF/properties/"+"TranslationLabels_"+language_code+".properties"));
             
            //System.out.println("Context Path :"+getServletContext().getContextPath()+"/web/properties/TranslationLabels_" +language_code+ ".properties");//getRealPath("file"));
            // String fileName = "D:\\PPT\\WTW\\TranslationLabels_" + "en" + ".properties" ;
            // HttpSession session;
             //String fileName = "D:\\PPT\\WTW\\TranslationLabels_" + session.getAttribute("language_code").toString() + ".properties" ;
             String fileName = "C:\\properties\\TranslationLabels_" +language_code+ ".properties" ;
            // String fileName = getServletContext().getRealPath("TranslationLabels_" + language_code + ".properties") ;
            //System.out.println("Real Path :"+getServletContext ().getRealPath ("TranslationLabels_" + language_code + ".properties")) ; 
           // String fileName = getServletContext().getContextPath()+"/web/properties/TranslationLabels_" +language_code+ ".properties" ;
           // String fileName = getServletContext().getContextPath()+"/web/WEB-INF/properties/TranslationLabels_" +language_code+ ".properties";
             //System.out.println("File  Path :"+fileName);
             // config.load(new FileInputStream(fileName));
             fis = new FileInputStream(fileName);
             config.load(fis);
             fis.close();
             
             
     
         } 
         catch (FileNotFoundException e) 
         {
             // TODO Auto-generated catch block
             e.printStackTrace();
             return "";
         }
         catch (IOException e) 
         {
             // TODO Auto-generated catch block
             e.printStackTrace();
             return "";
         }

         String strvalue = config.getProperty(strKey);
         //config.clear();
         return strvalue;
     }
       
 %>
