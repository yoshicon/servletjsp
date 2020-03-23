<%@page import="cookses.CookieUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");

	Cookie cookie = null;

	CookieUtil util = new CookieUtil(request);
	if(util.exists("viewList")){
		String oldList = util.getValue("viewList");
		cookie = new Cookie("viewList", oldList+"020101A");
	}else
		cookie = new Cookie("viewList", "020101A");

	cookie.setMaxAge(60);
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>2번</title>
</head>

<body bgcolor="#666666">

<h1>2번</h1>
<p>대충 2번 내용</p>
<p>020101</p>

</body>
</html>