package com.servlet.serveletbeginner;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/demoServlet")
public class DemoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        List<Student> stds = Arrays.asList(new Student(1,"jodos"),new Student(2,"jd"), new Student(3, "patric"));
        Student s = new Student(1,"jodos");
        req.setAttribute("students", stds);

        RequestDispatcher rd = req.getRequestDispatcher("display.jsp");
        rd.forward(req, res);
    }
}
