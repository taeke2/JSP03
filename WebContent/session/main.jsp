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
	<%=nick%> 님 환영합니다.<br>
	<a href="logout.jsp">로그아웃</a>
</body>
</html>