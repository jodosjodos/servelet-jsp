package com.servlet.serveletbeginner;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/login")
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        PrintWriter out = res.getWriter();

//        login object
        LoginDao dao = new LoginDao();

        if (email.isEmpty() || password.isEmpty()) {
            out.println("please provide email or password");
        }
        if (dao.check(email, password)) {
            HttpSession session = req.getSession();
            session.setAttribute("email", email);
            res.sendRedirect("welcome.jsp");
        } else {
            req.setAttribute("error", "invalid credentials");
            RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
            rd.forward(req, res);
        }

    }
}
