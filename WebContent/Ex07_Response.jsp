<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response</title>
</head>
<body>
	<!-- 
		웹 환경
		client가 server에게 요청을 보낸다. (request)
		server는 요청된 정보를 read한다. request객체가 정보들을 담고 있다.
		server가 client에게 응답을 한다. (response)
		응답결과를 클라이언트 브라우져가 해석한다.
		(아파치톰켓WAS가 제공하는 자원 , javax패키지명으로 구성)
		
		response
		1. 표현식(출력) %=
		2. 페이지 이동처리 (sendRedirect)
			*자바스크립트코드 -> location.href = "Ex01_Basic.jsp" 서버에게 페이지를 재요청하는 것이다.(=F5새로고침과 같은 역할)
		   	* java코드
		   		response.sendRedirect("Ex01_Basic_jsp") 서버에서 변경(Client인지하는 코드로)
		    		>> 클라이언트 브라우저에서는 이렇게 해석>> location.href="Ex01_Basic.jsp"    
	 -->
	 
	 1. 일반적인 출력() : <%=100 + 200 + 300 %>
	 2. sendRedirect : response객체의 함수
	 <%
	 	response.sendRedirect("Ex01_Basic.jsp"); //여기서 실행해도 Ex01_Basic.jsp이 실행되는 것이다. 같은코드!
	 %>
</body>
	<script type="text/javascript">
		location.href="Ex01_Basic.jsp"; //이렇게 실행해도 Ex01_Basic.jsp가 실행되는 것이다. 같은코드!
	</script>
</html>