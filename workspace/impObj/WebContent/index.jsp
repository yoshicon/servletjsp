<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"
    buffer="8kb" autoFlush="false"%>
<%
	request.setCharacterEncoding("utf-8");

	out.print( "<!DOCTYPE html>" );
	out.print( "<html lang=\"ko\">" );
	out.print( "<head>" );
	out.print( "<meta charset=\"UTF-8\">" );
	out.print( "<title>바보</title>" );
	out.print( "</head>" );
	
	out.print( "<body bgcolor=\"#666666\">" );
	out.print("<h1> 구와아아악 </h1>");

	out.print("버퍼 크기 : "+out.getBufferSize());
	out.print( "</body>" );
	out.print( "</html>" );
%>