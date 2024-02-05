package com.servlet.serveletbeginner;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class AddServelet extends HttpServlet {
public  void  doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
int nbr1= Integer.parseInt( req.getParameter("num1"));
int nbr2 = Integer.parseInt( req.getParameter("num2"));
int sum = nbr2 + nbr1;

req.setAttribute("sum",sum);

//  PrintWriter out = res.getWriter();
//  out.println("sum of 2 nbers is " +sum);

  // using dispatch
/*  RequestDispatcher rd= req.getRequestDispatcher("/sq");
  rd.forward(req,res);

 */

  // using redirect
//  res.sendRedirect("sq?sum="+sum);


//  using sessions
//  HttpSession session= req.getSession();
//  session.setAttribute("sum",sum);
//  res.sendRedirect("sq");

//  using cookie
  Cookie cookie = new Cookie("sum",sum+"");
  res.addCookie(cookie);
  res.sendRedirect("sq");
}

}