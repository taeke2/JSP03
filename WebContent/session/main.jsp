<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>main</title>
</head>
<body>main.jsp<br>
	<%
		if((String)session.getAttribute("loginUser")==null){
			response.sendRedirect("login.jsp");
		}
		String nick = (String) session.getAttribute("loginUser");
	%>
	<%=nick%> �� ȯ���մϴ�.<br>
	<a href="logout.jsp">�α׾ƿ�</a>
</body>
</html>