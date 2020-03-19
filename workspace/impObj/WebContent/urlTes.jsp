<%@page import="java.io.InputStream"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.FileReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>파일 출력</title>
</head>
<body>
<h3>ㅗㅗ - 노창</h3>
<div>
<%
	InputStream isr  = null;
	byte[] dtaArr = new byte[512];
	int len= -127;
	URL url = application.getResource("test.txt");
	System.out.println("url 형태 위치 : "+url);
	isr = url.openStream();
	
	while( (len = isr.read(dtaArr)) != -1){
		out.print(new String(dtaArr, 0, len));
	}
	
	isr.close();
%>
</div>
</body>
</html>