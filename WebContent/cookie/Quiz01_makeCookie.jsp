<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie cookie = new Cookie("quizCookie", "quizCookie");
		cookie.setMaxAge(10);
		response.addCookie(cookie);
	%>
	<script type="text/javascript">
		window.close();
	</script>
</body>
</html>