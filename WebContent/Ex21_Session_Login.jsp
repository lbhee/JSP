<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Ex21_Session_Ok.jsp" method="get">
		<input type="text"  name="uid">
		<input type="password" name="pwd">
		<input type="submit" value="로그인">
		<input type="reset"  value="취소">
	</form>
	<hr>
	
	<a href="Ex21_Session_Member.jsp">회원전용 페이지 접속</a>
</body>
</html>