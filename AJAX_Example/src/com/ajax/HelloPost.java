package com.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HelloPost")
public class HelloPost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HelloPost() {
        super();
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");// 設定編碼
		res.setContentType("text/html; charset=UTF-8");// 這才是瀏覽器編碼的請求
		PrintWriter out = res.getWriter();

		String name = req.getParameter("userName");
		String age = req.getParameter("userAge");
		out.print("<H1>Query Name:</H1>");
		out.println("<H3>" + name + "</H3><br>");
		out.print("<H1>Query Age:</H1>");
		out.println("<H3>" + age + "</H3><br>");
		out.println();
		
	}

}
