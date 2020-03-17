<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<%!
	public int sum(int stan, int endn){
		int s=0;
		for(int q=stan; q<=endn; q++)
			s+=q;
		return s;
	}

	public int sum2(int sn, int en){
		int s = (sn + en) * ((en - sn)+1)/2;
		return s;
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#888">
	<h2>바보아니야??</h2>
	<form action="memberCheck.jsp"method="post">
		<p>로그인</p>
		<label for="userId">@ㅏ이디</label><input type="text" name="userid" id="userId"/> <br />
		<label for="userPwd">vㅣ번</label><input type="password" name="pwd" id="userPwd"/> <br />
		<input type="submit" value="로그인"/>&nbsp;&nbsp;&nbsp;<input type="reset" value="초기화"/>
	</form>
	

1~10 합 : <%= sum(1, 10) %> <br />


11~20 합 : <%= sum2(1, 10) %>

</body>
</html>