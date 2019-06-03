<%@ page import="java.util.*,java.text.*" %>
<div id="header">
	<div id="rightheader">
		<p>
		<%
		Date date =new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time=sdf.format(date);
		out.println(time);
		%>
		<br />
		</p>
	</div>
	<div id="topheader">
		<h1 id="title">
			<a href="shouye.html">home</a>
		</h1>
	</div>
	<div id="navigation"></div>
</div>