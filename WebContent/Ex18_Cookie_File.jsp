<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	1. 메모리쿠기(브라우저 쿠키) : 클라이언트가 강제로 지우지 않는한 존재. 브라우저를 닫기전까지만 유효하다.
	                        소멸타입 getMaxAge() -> -1 출력
	                        
	2. 파일쿠키(소멸시간이 있다) : 클라이언트가 강제로 지우지 않는한 정해진 시간까지 유효하다. (2050년 12월 21일)
	                        setMaxAge(60) -> 60초 유효
	                        setMaxAge(30*24*60*60) -> 30일 유효[일, 시, 분, 초]                                           
 -->
 <%
	Cookie co = new Cookie("hi", "hong");
 	co.setMaxAge(30*24*60*60);
 	response.addCookie(co);
 %>
</body>
</html>