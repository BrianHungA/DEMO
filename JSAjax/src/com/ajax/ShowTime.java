package com.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ShowTime")
public class ShowTime extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		req.setCharacterEncoding("UTF-8");// �]�w�s�X
		res.setContentType("text/html; charset=UTF-8");// �o�~�O�s�����s�X���ШD
		PrintWriter out = res.getWriter();
		
		Date date = new Date();
		out.print("<h2>The NOWTime is " + date + "</h2>");

	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doGet(req, res);
	}

}
