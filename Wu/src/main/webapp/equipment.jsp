<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.*,entity.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/add.css"/>
<title>equipment</title>
</head>
<body>
<div id="wrap">
			<div id="top_content"> 
			<%@ include file="header.jsp" %>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>消防设施</h1>
					<table class="table">
						<tr class="table_header">
							<td>ID</td>
							<td>所属公司</td>
							<td>设施名称</td>
							<td>规格型号</td>
							<td>数量</td>
							<td>放置地点</td>
							<td>负责人</td>
							<td>操作</td>
						</tr>
				<%
				EquipmentDAO dao=new EquipmentDAO();
				List<Equipment>eqs=dao.findAll();
				for(int i=0;i<eqs.size();i++){
										Equipment eq=eqs.get(i);
									%>
				<tr class="row<%=i%2+1%>">
				<td><%=eq.getId() %></td>
				<td><%=eq.getCompany() %></td>
				<td><%=eq.getName() %></td>
				<td><%=eq.getType() %></td>
				<td><%=eq.getNumber() %></td>
				<td><%=eq.getAddress() %></td>
				<td><%=eq.getCharge() %></td>
				<td><a href="del-eq?id=<%=eq.getId()%>">删除</a></td>
				</tr>
				<%} %>
					</table>
					<p>
						<input type="button" class="button" value="添加消防设施" onclick="location='add-equipment.jsp'"/>
					</p>
				</div>
				</div>
				<%@ include file="footer.jsp" %>
				</div>
</body>
</html>