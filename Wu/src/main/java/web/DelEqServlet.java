package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ActivityDAO;
import dao.EquipmentDAO;

public class DelEqServlet extends HttpServlet{
@Override
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
	String ID=request.getParameter("id");
	int id=Integer.parseInt(ID);
	System.out.println("id:"+id);
	EquipmentDAO dao=new EquipmentDAO();
	PrintWriter out=response.getWriter();
	response.sendRedirect("equipment.jsp");
	try {
		dao.delete(id);
	} catch (Exception e) {
				e.printStackTrace();
				out.println("系统繁忙，请稍后再尝试");
	}
}
}
