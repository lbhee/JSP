<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		<요청에 대한 흐름제어>
		1. include
		2. forward
		
		- 공통점 : request 객체를 공유한다. 
		- 차이점 : 제어권 
				 include는 제어권을 가지고 있다. (넘겨준 후 다시 가지고 온다.)
				 forward는 제어권을 넘겨준다.(주소는 동일한데 다른페이지의 내용을 서비스한다.)
	*/
	
	// 실행 후 URL창에 ?code=A , ?code=B , ?code=C 입력 후 테스트해보자!!!
	String c = request.getParameter("code");
	String viewurl = null;
	
	if(c.equals("A")){
		viewurl ="/forward/A.jsp";
	}else if(c.equals("B")){
		viewurl ="/forward/B.jsp";
	}else if(c.equals("C")){
		viewurl ="/forward/C.jsp";
	}
	// jsp에서는 /슬러시하나가 WebContent를 가리킨다.
	
%>    
<jsp:forward page="<%=viewurl %>"></jsp:forward> 
<!-- 
	실제로 클라이언트가 요청한 페이지는 forward_main이지만, 요청에 응답받는 페이지는 정보는 A,B,C.jsp이다.
	
	원리는 buffer에 있다!
	
	forward는 viewurl값을 받은 페이지로 이동하고 돌아오지않는다.
	여기에 디자인을 해봤자 소용이없다.
	클라이언트가 이런 입력값을 입력하면, 이런 요청을하면 해당 페이지로 이동한다.
	forward는 클라이언트가 요청을 하면 요청페이지는 버퍼를 만든다. 
	자신의 페이지 내용을 담고, 포워드를 만나면 응답페이지로 가서 
	기존의 버퍼의 내용을 모두 비운다음에 다른페이지정보를 담은 후 그대로 서비스한다.
	
	include는 자신의 buffer에 내것도 다른애것도 담아서 보낸다.
	내페이지의 디자인요소를 적용가능하다.
	include는 자신의 내용을 자신의 버퍼에 담고,
	인크루드를 만나면 응답페이지의 내용을 버퍼에 이어서 담고,
	다시 자신의 페이지로 넘어와서 담을 내용이 더 있으면 이어서 담은 후 서비스한다.	
-->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>여기는 forward_main 페이지 입니다. 디자인이 의미가 없습니다. 사실 선언부와 서버코드만 필요한 것이다.</h3>
</body>
</html>