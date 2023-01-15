package com.servlet.serveletbeginner;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/sq")
public class SquareServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) {
        PrintWriter out = null;
        try {
            out = res.getWriter();

//            access using session
          /*  HttpSession session= req.getSession();
//            Integer sum = (Integer) session.getAttribute("sum");*/
            Integer sum = 0;
            Cookie cookies[] = req.getCookies();
            for (Cookie c : cookies) {
                if (c.getName().equals("sum")) {
                    sum = Integer.parseInt(c.getValue());
                }
            }
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
