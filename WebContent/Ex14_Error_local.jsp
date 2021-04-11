<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
﻿<%@ page errorPage="/error/commonerror.jsp" %>
<!-- 
	에러예외처리는 최종배포시에 써준다.
	개발시에는 예외를 봐야하니까 쓰지말자.
 -->  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러처리(local)</title>
</head>
<body>
	<!-- 페이지 마다 예외상황에 대한 처리페이지를 설정할 수 있다.-->
	<%
	 	String data = request.getParameter("name"); //name값을 입력하지 않으면 null (이것은 예외가 아니다.)
	 	String data2 = data.toLowerCase(); //data가 null값인데 이것을 소문자로 바꾸자는 함수를 쓰니까 이럴때 예외가 발생한다.
 	%>
 	name : <%= data %>
</body>
</html>