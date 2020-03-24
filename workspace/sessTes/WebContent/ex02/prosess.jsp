<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>프로세스 어쩌구</title>
</head>

<body bgcolor="#666666">
<jsp:useBean id="mi" class="domain.MemberInfo" scope="request" />
<jsp:setProperty property="*" name="member"/>
<jsp:forward page="useobj.jsp" />
</body>
</html>