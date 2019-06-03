<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
			href="css/add.css" />
<title>Insert title here</title>
</head>
<body>
		
<div id="wrap">
			<div id="top_content">
					<%@ include file="header.jsp" %>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						添加消防设施
					</h1>
					<form action="add-eq" method="post">
						<table cellpadding="0" cellspacing="0" border="0"
							class="form_table">
							<tr>
								<td valign="middle" align="right">
									所属公司:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="company" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									设施名称
								</td>
								<td valign="middle" align="left">
									<input type="password" class="inputgri" name="name" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									规格型号
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="type" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									数量
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="number" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									放置地点
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="address" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									负责人
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="charge" />
								</td>
							</tr>
						</table>
						<p>
							<input type="submit" class="button" value="确定" />
						</p>
					</form>
				</div>
			</div>
		<%@ include file="footer.jsp" %>
			</div>


		
</body>
</html>