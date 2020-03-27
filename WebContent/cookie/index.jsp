<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>index</title>
</head>
<body>cookie폴더 -> index.jsp 생성<br>
	<!-- 쿠키와 세션 -->
	<h1 style="color:skyblue;">CARE_LAB</h1>
	<h3>방문해 주셔서 감사합니다</h3>
	<%
		boolean boo = false;
	
		Cookie cookieArr[] = request.getCookies();
		if(cookieArr != null){
			for(Cookie c : cookieArr){
				out.print("name : " + c.getName() + "<br>");
				out.print("value : " + c.getValue() + "<hr>");
				if(c.getValue().equals("myCookie")){
					boo = true;
				}
			}
		}
		
		// 쿠키는 key & value 로 설정함
		Cookie cookie = new Cookie("testCookie", "myCookie");
		// 5초 동안 살려둘것이다. setMaxAge는 쿠키를 얼마동안 살려둘것인지 정하는 메소드이다. 
		cookie.setMaxAge(5);
		response.addCookie(cookie);
		
		
	%>
	<% if(!boo){ %>
	<script type="text/javascript">
		window.open("popup.jsp", "", "width= 300, height= 500, top= 500, left= 500");
	</script>
	<% }%>
</body>
</html>