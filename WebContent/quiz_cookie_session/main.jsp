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
	<%=nick%> �� �ȳ��ϼ���.<br>
	���� Ȩ�������� �湮�� �ּż� �����մϴ�.<br>
	��ſ� �ð� �Ǽ���~<br>
	<input type="button" onclick="location.href='logout.jsp';" value="�α׾ƿ�">
	<input type="button" onclick="location.href='login.jsp'" value="�α���������">
</body>
</html>