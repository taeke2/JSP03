<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>index</title>
</head>
<body>cookie���� -> index.jsp ����<br>
	<!-- ��Ű�� ���� -->
	<h1 style="color:skyblue;">CARE_LAB</h1>
	<h3>�湮�� �ּż� �����մϴ�</h3>
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
		
		// ��Ű�� key & value �� ������
		Cookie cookie = new Cookie("testCookie", "myCookie");
		// 5�� ���� ����Ѱ��̴�. setMaxAge�� ��Ű�� �󸶵��� ����Ѱ����� ���ϴ� �޼ҵ��̴�. 
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