<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("userid");
	String pw = request.getParameter("pwd");
	String rs = "";
	if(id.equals("바보")&&pw.equals("127")){
		rs = "정공";
	}else{
		rs = "돼공";
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#ffcfcf">
	아이디 : <%=id %> <br />
	비번   : <%=pw %> <br />
	이새끼 <%=rs %>임 내가 봄
</body>
</html>