package com.nt.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddServlet extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("inside doGet method");
		PrintWriter pw = null;
		int val1 = 0, val2 = 0, result = 0;
		pw = res.getWriter();
		res.setContentType("text/html");
		val1 = Integer.parseInt(req.getParameter("q1"));
		val2 = Integer.parseInt(req.getParameter("q2"));
		result = val1 + val2;
		System.out.println(result);
		pw.println(result);
		pw.close();

	}

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("inside doPost method");
		doGet(req, res);

	}

}
