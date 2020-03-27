<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>delSession</title>
</head>
<body>delSession.jsp<br>
	<%
		//session.removeAttribute("age");
		//session.setMaxInactiveInterval(5);	// 5초가 지난 후에 모든 세션이 만료됩니다.
		session.invalidate();	// 모두 바로 삭제
	%>
	<a href="setSession.jsp">setSession이동</a>&nbsp;&nbsp;
	<a href="getSession.jsp">getSession이동</a>&nbsp;&nbsp;
</body>
</html>