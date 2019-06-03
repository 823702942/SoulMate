<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
			href="css/add.css" />
<title>add activity</title>
</head>
<body>
<div id="wrap">
			<div id="top_content">
					<%@ include file="header.jsp" %>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						添加活动
					</h1>
					<form action="add-act" method="post">
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
									活动日期
								</td>
								<td valign="middle" align="left">
									<input type="password" class="inputgri" name="date" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									活动内容
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="content" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									参加人员
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="people" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									主持者
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="host" />
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