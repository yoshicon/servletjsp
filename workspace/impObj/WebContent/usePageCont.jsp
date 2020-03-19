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
<h1>받은 자료</h1>
<hr />
<%
	String irum = request.getParameter("name");
	String juso = request.getParameter("juso");
	String sex = request.getParameter("sex");
	String birt = pageContext.getRequest().getParameter("birt");
%>

이름 : <%=irum %> <br />
주소 : <%=juso %> <br />
성별 : <%
	if(sex.toUpperCase().equals("m")){
		out.println("남자");
	}else{
		pageContext.getOut().println("여자");
	}
%> <br />
생일 : <%=birt %> <br />

</body>
</html>