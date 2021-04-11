<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		실제로 값을 받는 앞단 페이지가 없어도 테스트 가능하다.
		실행 후 URL주소창에 ?type=HI&userid=HELLO 직접입력하면 가능!
		
		include태그 사이에 내용이 없으면 에러가 난다.
		공백없이   : <jsp:include page="Ex12_param.jsp"></jsp:include>
		맨뒤에 /  : <jsp:include page="Ex12_param.jsp" /> 
	*/
	request.setCharacterEncoding("UTF-8");

	String t = request.getParameter("type");
	String u = request.getParameter("userid");

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include, param</title>
</head>
<body>
	type:<%= t %><br>
	userid:<%= u %><br>
	<hr>
	<jsp:include page="Ex12_param.jsp" >
		<jsp:param value="baseball" name="hobby"/>
		<jsp:param value="1004" name="pwd"/>
	</jsp:include>
	<hr>
</body>
</html>