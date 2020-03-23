<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length > 0)
			for(int q=0; q<cookies.length; q++)
				if(cookies[q].getName().equals("name")){
					Cookie cooki = new Cookie("name", "noc");
					cooki.setMaxAge(0);
					response.addCookie(cooki);
				}
	else
		out.println("쿠키 특) 바뀜");
%>
</body>
</html>