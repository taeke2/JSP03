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
		//session.setMaxInactiveInterval(5);	// 5�ʰ� ���� �Ŀ� ��� ������ ����˴ϴ�.
		session.invalidate();	// ��� �ٷ� ����
	%>
	<a href="setSession.jsp">setSession�̵�</a>&nbsp;&nbsp;
	<a href="getSession.jsp">getSession�̵�</a>&nbsp;&nbsp;
</body>
</html>