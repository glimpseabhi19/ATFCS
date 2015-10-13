/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.controller;

import com.t8.model.Operator;
import com.t8.utility.SchedulerMaster;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.quartz.SchedulerException;

/**
 *
 * @author Earth
 */
public class LoginController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public LoginController() {
        super();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("operatorId");
        String password = request.getParameter("password");
        RequestDispatcher rd = null;

        //Authenticator authenticator = new Authenticator();
        String result = authenticate(username, password);
        if (result.equals("success")) {
            rd = request.getRequestDispatcher("/index.jsp");
            Operator user = new Operator();
            request.setAttribute("user", user);
//            SchedulerMaster schedulerMaster = new SchedulerMaster();
//            try {
//                schedulerMaster.scheduler();
//            } catch (SchedulerException ex) {
//                Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
//            }
        } else {
            request.setAttribute("message", "Invalid User Id or Password, try again.");
            rd = request.getRequestDispatcher("/login.jsp");
        }
        rd.forward(request, response);
    }

    public String authenticate(String username, String password) {
        String flag = "failuer";
        if (("admin".equalsIgnoreCase(username)) && ("password123".equals(password))) {
            return "success";
        } else {
            return "failure";
        }

    }

}
