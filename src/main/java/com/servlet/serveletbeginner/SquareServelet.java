package com.servlet.serveletbeginner;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

public class SquareServelet extends HttpServlet {
public  void  doPost(HttpServletRequest req, HttpServletResponse res){
    PrintWriter out = null;
    try {
        int sum  = (int) req.getAttribute("sum");
        System.out.println(sum);
        int sqr = sum * sum;
        System.out.println(sqr);
        out = res.getWriter();
        out.println(" hello to square servlet : " +  sqr);

    } catch (IOException e) {
        throw new RuntimeException(e);
    }
}
}
