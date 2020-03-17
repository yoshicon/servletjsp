package com.babo.haji;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/vava.yebo")
public class NowTime extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public NowTime() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}
	
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		response.setContentType("text/html; charset=utf-8");
		Date now = new Date();
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>지금 시간</title></head>");
		out.println("<body bgcolor=\"#898989\"> 서블릿 어쩌구 : ");
		out.println(now.toString());
		out.println("</body></html>");
	}

}
