<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="dao.*,entity.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/add.css"/>
<title>activity</title>
</head>
<body>
<div id="wrap">
			<div id="top_content"> 
			<%@ include file="header.jsp" %>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>社区活动列表</h1>
					<table class="table">
						<tr class="table_header">
							<td>ID</td>
							<td>所属公司</td>
							<td>活动日期</td>
							<td>活动内容</td>
							<td>参加人员</td>
							<td>主持者</td>
							<td>操作</td>
						</tr>
				<%
				int ID=1;
				ActivityDAO dao=new ActivityDAO();
				List<Activity>acts=dao.findAll();
				for(int i=0;i<acts.size();i++){
					Activity a=acts.get(i);
					ID=a.getId();
				%>
				<tr class="row<%=i%2+1%>">
				<td><%=a.getId() %></td>
				<td><%=a.getCompany() %></td>
				<td><%=a.getDate() %></td>
				<td><%=a.getContent() %></td>
				<td><%=a.getPeople() %></td>
				<td><%=a.getHost() %></td>
				<td><a href="del-ac?id=<%=ID%>">删除</a></td>
				</tr>
				<%} %>
					</table>
					<p>
						<input type="button" class="button" value="添加活动" onclick="location='add-activity.jsp'"/>
					</p>
				</div>
				</div>
				<%@ include file="footer.jsp" %>
				</div>
</body>
</html>