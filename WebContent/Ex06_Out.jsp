<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체(WAS) : out</title>
</head>
<body>
    <!-- (UI작업이 자동완성되어서 편하다.) -->
	<h3>스파게티 코드</h3> 
	<%
		boolean b = true; 
		if(10 > 5){
	%>
			IF(true) : <font color="red"><%=b %></font>
	<%		
		}else{  
			b = false;
	%>		
			IF(false) : <font color="blue"><%=b %></font>
	<%
		}
	%>
	
	
	<!-- 서버코드 작업. java코드작성은 편하지만 UI작업이 문자열이라 불편하다. servlet에서 사용하는 방식 -->
	<h3>out 객체</h3>
	<%
		boolean b2 = true;
		if(10 > 5){
			out.print("IF(true) : <font color='red'>" + b2 + "</font>");
		}else{
			b = false;
			out.print("IF(false) : <font color='blue'>" + b2 + "</font>");
		}
	%>
</body>
</html>