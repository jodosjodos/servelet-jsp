package com.servlet.serveletbeginner;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/addAlien")
public class HomeServlet2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        PrintWriter out = res.getWriter();
        String aname = req.getParameter("aname");
        int aid = Integer.parseInt(req.getParameter("aid"));
        out.println("welcome : " + aname + " with  id  " + aid);
    }
}
