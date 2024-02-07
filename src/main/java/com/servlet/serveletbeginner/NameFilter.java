package com.servlet.serveletbeginner;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;
import java.io.PrintWriter;

@WebFilter("/addAlien")
public class NameFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        PrintWriter out = response.getWriter();
        String aname = req.getParameter("aname");
        System.out.println(aname);
        if (!aname.isEmpty()) chain.doFilter(request, response);
        else
            out.println("invalid input , name is required ");
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
