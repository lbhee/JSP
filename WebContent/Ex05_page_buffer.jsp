<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page buffer="8kb" autoFlush="true" %>
<!--  명시적으로 구현하지 않아도 자동으로 8kb, true이다. -->    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out과 buffer</title>
</head>
<body>
	<%
		//out객체(내장객체) -> 자바의 System.out.println()과 동일한 역할
		for(int i = 0; i < 10; i++) {
			out.print("<b>" + i +"<b><br>");
		}
		//이 내용을 buffer에 담아서 출력.(8kb가 되지않아도 출력이 가능)
		//jsp페이지에 더이상 buffer에 담을 내용이 없으면 자동으로 flush(자바는 flush명시해주었어야했다.)
	%>
</body>
</html>