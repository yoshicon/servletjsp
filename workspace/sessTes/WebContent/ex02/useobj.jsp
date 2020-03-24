<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>오브젝트 사용</title>
</head>

<body bgcolor="#666666">
<jsp:useBean id="mi" class="domain.MemberInfo" scope="request" />
아이디 : <%= mi.getId() %> <br />
비번 : <%= mi.getPass() %> <br />
주소 : <%= mi.getAddr() %> <br />
</body>
</html>