package com.servlet.serveletbeginner;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

public class SquareServelet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) {
        PrintWriter out = null;
        try {
            out = res.getWriter();

            Integer sum = (Integer) req.getAttribute("sum");
            if (sum == null) {
                out.println("please provide number ");
            }
            int sqr = sum * sum;
            System.out.println(sqr);
            out.println(" hello to square servlet : " + sqr);

        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
