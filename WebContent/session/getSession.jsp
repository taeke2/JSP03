<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>getSession</title>
</head>
<body>getSession.jsp<br>
	<%
		String id = (String)session.getAttribute("id");
		String age = (String)session.getAttribute("age");
		String name = (String)session.getAttribute("name");
	%>
	id : <%=id %><br>
	age : <%=age %><br>
	name : <%=name %><br>
	<a href="setSession.jsp">setSession�̵�</a>&nbsp;&nbsp;
	<a href="delSession.jsp">delSession�̵�</a>&nbsp;&nbsp;
</body>
</html>