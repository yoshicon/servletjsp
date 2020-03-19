<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>로그 확인</title>
</head>
<body bgcolor="#666666">
<%
	for(int q='a'; q<'h'; q++){
		application.log("로그 기록" + q);
	}
%>
</body>
</html>