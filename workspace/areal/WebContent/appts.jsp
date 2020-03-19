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
<body bgcolor="#666666">
<%
	// http://127.0.0.1/appts.jsp?attName=babo&nameVal=127
	String attName = request.getParameter("attName");
	String nameVal = request.getParameter("nameVal");
	
	System.out.println(attName);
	System.out.println(nameVal);
	
	application.setAttribute(attName, nameVal);
%>
받은 파라메터 값 -> 어플리케이션 속성, 값으로 지정
</body>
</html>