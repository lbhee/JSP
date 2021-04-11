<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//로그아웃(sessionID에 해당하는 session객체 소멸시키기)
	session.invalidate();
	out.print("<script>location.href='Ex21_Session_Login.jsp'</script>"); //다시 로그인창으로
%>
</body>
</html>