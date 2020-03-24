<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>세션 정보 읽기</title>
</head>

<body bgcolor="#666666">
<%
	String memId = (String)session.getAttribute("mem");
	String babid = (String)session.getAttribute("babo");
%>

회원 1 : <%=memId %> <br />
회원 2 : <%=babid %> <br />
</body>
</html>