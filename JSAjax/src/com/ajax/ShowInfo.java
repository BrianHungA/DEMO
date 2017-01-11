package com.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ShowInfo")
public class ShowInfo extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		req.setCharacterEncoding("UTF-8");// 設定編碼
		res.setContentType("text/html; charset=UTF-8");// 這才是瀏覽器編碼的請求
		PrintWriter out = res.getWriter();
		
		String name = req.getParameter("userName");
		String age = req.getParameter("userAge");
		out.print("<h2>Hello " + name + " You are " + age + " years old.</h2>");

	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doGet(req, res);
	}

}
