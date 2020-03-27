<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1 style="color:skyblue;">CARE_LAB</h1>
	<h3>저희 사이트에 방문해 주셔서 감사합니다</h3>
	<%
		boolean boo = false;
	
		Cookie cookieArr[] = request.getCookies();
		if(cookieArr != null){
			for(Cookie c : cookieArr){
				if(c.getValue().equals("quizCookie")){
					boo = true;
				}
			}
		}
	%>
	<% if(!boo){ %>
	<script type="text/javascript">
		window.open("popup.jsp", "", "width= 300, height= 500, top= 500, left= 500");
	</script>
	<% }%>
</body>
</html>