<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
	웹컨텐츠에 예외가 발생하면 web.xml에서 설정한 에러페이지로 처리한다.
	페이지 선언부에 에러페이지를 선언한 Ex_14_Error_local 페이지같은경우는 그것이 우선한다.
 -->  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러처리(global)</title>
</head>
<body>
	 <%
 	String data = request.getParameter("name");
 	
 	String data2 = data.toLowerCase();
 	%>
 	전달받은 내용 : <%= data %>
</body>
</html>