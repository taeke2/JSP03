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
		<input type="text" name="id" placeholder="아이디"><br>
		<p><input type="text" name="pwd" placeholder="비 번"><br></p>
		<input type="submit" value="로그인"><br>
	</form>
	
	<%}else{
		out.print(session.getAttribute("loginUser") + "님이 로그인 상태입니다" + "<br>");
		out.print("<input type='button' value='main이동'"+" onclick=location.href='main.jsp'>");
	}
	%>
</body>
</html>