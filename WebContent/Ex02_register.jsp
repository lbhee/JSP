<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	//클라이언트의 요청데이터 받기
	//Tomcat(내장된객체)
	//웹에 사용되는 전용객체 (request, reponse) >> new하지 않는다. 이미 new가되어있다.
	//request 요청객체(클라이언트의 정보를 취득할 때 사용한다:request객체를 얻는다) -> 입력데이터, ip, 브라우저버전
	//response 응답객체(서버가 가지고 있는 자원을 클라이언트에 write해주는 객체)
	String uid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String[] hobby = request.getParameterValues("hobby");
	//get방식 -> http://localhost:8090/WebJSP/Ex02_register.jsp?userid=hong&pwd=1004
    //		    http://localhost:8090/WebJSP/Ex02_register.jsp?userid=hong&pwd=1004&hobby=baseball&hobby=soccer
    
    
    /*  
    	한글처리 : Tomcat9 버전이상에서는 get방식은 깨지지않는다.
    	
    	(GET방식) - Tomcat9 버전이하일땐 설정해줘야한다.
    	1. 페이지 상단에 인코딩 : request.setCharacterEncoding("UTF-8");
        2. 서버 설정 server.xml 63라인
        <Connector  URIEncoding="UTF-8"   connectionTimeout="20000" port="8090" protocol="HTTP/1.1" redirectPort="8443"/>
        
        (POST방식)
        1. 페이지 상단에 무조건 인코딩 : request.setCharacterEncoding("UTF-8");
    */
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전송받은 데이터</title>
</head>
<body>
	ID : <%=uid %><br>
	PWD : <%=pwd %><br>
	취미 : 
	<%
		for(String str : hobby) {
	%>
			<%=str %>	
	<%			
		}
	%>
</body>
</html>