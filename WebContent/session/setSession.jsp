<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>setSession</title>
</head>
<body>setSession.jsp<br>
	<%
		session.setAttribute("id", "test");
		session.setAttribute("age", "23");
		session.setAttribute("name", "zzz");
	%>
	<h1>������ ���� �Ǿ����ϴ�!!!</h1>
	<a href="getSession.jsp">getSession�̵�</a>&nbsp;&nbsp;
	<a href="delSession.jsp">delSession�̵�</a>&nbsp;&nbsp;
</body>
</html>