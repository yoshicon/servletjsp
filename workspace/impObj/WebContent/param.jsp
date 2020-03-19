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
<title>파라메터</title>
</head>
<body bgcolor="#666666">
<h1>초기화 파라메터 읽기</h1>
<hr />
<h2>파라메터 명 모름</h2>
logEnable : <%= application.getInitParameter("logEnable") %> <br />
debugLev : <%= pageContext.getServletContext().getInitParameter("debugLev") %>

<h2>초기화 파라메터 개수, 이름 모름</h2>
<%
	Enumeration<String> inPara = application.getInitParameterNames();
	while(inPara.hasMoreElements()){
		String inParamName = inPara.nextElement();
		out.println("초기화 파라메터"+inParamName +"의 값 : ");
		out.println(application.getInitParameter(inParamName) + "<br />");
	}
%>
<hr />
서버 : <%=application.getServerInfo() %> <br />
메이저 버전 : <%=application.getMajorVersion() %><br />
마이너 버전 : <%=application.getMinorVersion() %><br />
</body>
</html>