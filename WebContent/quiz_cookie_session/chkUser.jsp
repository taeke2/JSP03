<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>chkUser</title>
</head>
<body>chkUser.jsp<br>
	<%
		String id="1", pwd="1", nickName="ȫ�浿";
		if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))){
			session.setAttribute("loginUser", nickName);
			response.sendRedirect("main.jsp");
		}else{
			response.sendRedirect("login.jsp");
		}
	%>
</body>
</html>