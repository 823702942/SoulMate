package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ActivityDAO;
import entity.Activity;

public class AddActServlet extends HttpServlet {
@Override
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
	PrintWriter out=response.getWriter();
	String company=request.getParameter("company");
	String date=request.getParameter("date");
	String content=request.getParameter("content");
	String people=request.getParameter("people");
	String host=request.getParameter("host");
	ActivityDAO dao=new ActivityDAO();
	try {
		Activity act=new Activity();
		act.setCompany(company);
		act.setContent(content);
		act.setDate(date);
		act.setHost(host);
		act.setPeople(people);
		dao.save(act);
		response.sendRedirect("activity.jsp");
	} catch (Exception e) {
		e.printStackTrace();
	  out.println("系统繁忙，请稍后再尝试");
	}
	}
}
