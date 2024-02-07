package com.servlet.serveletbeginner;


import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;
import java.io.PrintWriter;

@WebFilter("/addAlien")
public class IdFilter implements Filter {
    public IdFilter() {

    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse res, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        PrintWriter out = res.getWriter();
        int aid = Integer.parseInt(req.getParameter("aid"));
        if (aid > 1) chain.doFilter(request, res);
        else
            out.println("invalid input");
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
