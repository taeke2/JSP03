<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login</title>
</head>
<body>
	<%@ include file="index.jsp" %>
	
	<%if((String)session.getAttribute("loginUser")==null) {%>
	
	<form action="chkUser.jsp" method="post">
		<input type="text" name="id" placeholder="���̵�"><br>
		<p><input type="text" name="pwd" placeholder="�� ��"><br></p>
		<input type="submit" value="�α���"><br>
	</form>
	
	<%}else{
		out.print(session.getAttribute("loginUser") + "���� �α��� �����Դϴ�" + "<br>");
		out.print("<input type='button' value='main�̵�'"+" onclick=location.href='main.jsp'>");
	}
	%>
</body>
</html>