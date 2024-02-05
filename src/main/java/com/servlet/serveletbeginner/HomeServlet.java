package com.servlet.serveletbeginner;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

public class HomeServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) {
        try {
            PrintWriter out = res.getWriter();
            out.println("Hi ");

//            using servlet context
            ServletContext ctx = req.getServletContext();
            String str = ctx.getInitParameter("phoneNumber");

//        using servlet config
            ServletConfig config = getServletConfig();
            String strConfig = config.getInitParameter("name");
            out.println(str + "and config name is : " + strConfig);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
