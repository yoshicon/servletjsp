<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>자바 빈 쓴거</title>
</head>

<body bgcolor="#666666">
<jsp:useBean id="mi" class="domain.MemberInfo" scope="request" />
<%
	mi.setId("babo");
	mi.setPass("127");
	mi.setAddr("zip");
%>
<jsp:setProperty property="addr" name="mi" value="kor"/>
<jsp:forward page="useobj.jsp" />
</body>
</html>