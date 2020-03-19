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
	FileReader fr  = null;
	char[] dtaArr = new char[512];
	int len= -127;
	String fPath = application.getRealPath("test.txt");
						//D:\dev\servletjsp\workspace\impObj\WebContent\test.txt
	fr = new FileReader(fPath);
	while( (len = fr.read(dtaArr)) != -1){
		out.print(new String(dtaArr, 0, len));
	}
	
	fr.close();
%>
</div>
</body>
</html>