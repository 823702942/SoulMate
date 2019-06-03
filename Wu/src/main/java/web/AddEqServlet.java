package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ActivityDAO;
import dao.EquipmentDAO;
import entity.Activity;
import entity.Equipment;

public class AddEqServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		String company=request.getParameter("company");
		String name=request.getParameter("name");
		String type=request.getParameter("type");
		String number=request.getParameter("number");
		int num=Integer.parseInt(number);
		String address=request.getParameter("address");
		String charge=request.getParameter("charge");
		EquipmentDAO dao=new EquipmentDAO();
		try {
			Equipment eq=new Equipment();
			eq.setCompany(company);
			eq.setName(name);
			eq.setType(type);
			eq.setNumber(num);
			eq.setAddress(address);
			eq.setCharge(charge);
			dao.save(eq);
			response.sendRedirect("equipment.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		  out.println("系统繁忙，请稍后再尝试");
		}
		}
}
