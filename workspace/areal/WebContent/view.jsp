<%@page import="java.util.Enumeration"%>
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
	String appAreaAttInfo = (String)application.getAttribute("name");
%>

<h1>어플 영역에 있던 속성값 출력</h1>
이름 : <%=appAreaAttInfo %>

<%
	Enumeration<String> enumer = application.getAttributeNames();
	out.println("어플에 있는 속성 리스트");
	while(enumer.hasMoreElements()){
		String attName = enumer.nextElement();
		out.println("= "+ attName + "->" + application.getAttribute(attName) + "<br>");
	}
%>
</body>
</html>