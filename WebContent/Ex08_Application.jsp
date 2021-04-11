<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application</title>
</head>
<body>
	<%
		/*
			webproject를 생성하면 기본폴더 구조제공 >> web.xml(App환경설정) 제공
			web.xml(환경설정 파일은 서버가 시작되면 가장먼저 해석되고 실행된다.)
			<welcome-file>default.html</welcome-file> 웹사이트 기본페이지 설정.
			
			WebJSP >> 웹프로젝트 이름, 가상디렉토리, context root(문맥 흐름 전체)
			>> 웹경로(가상경로)  ->  http://localhost:8090/WebJSP
			>> 실경로         ->  D:\bit2021\WEB(Back)\WebLabs\WebJSP
			
			WebJSP 웹프로젝트가 서비스하는 파일의 기본경로(defult)
			>>D:\bit2021\WEB(Back)\WebLabs\WebJSP\WebContent
			>>192.168.0.028:8090/WebJSP >> WebContent안에 자원을 서비스하겠다
			
			>> 자원(서비스하는 파일) : html, htm, css, js, json, txt, jsp
			>> WebContent -> a.jsp , b.jsp , c.jsp 3개의 페이지가 공유할 수 있는 자원은 어디에 만들어야 할까?
				* 모든자원은 페이지가 scope 
					a.jsp -> <% String s="A"... -> s변수는 a.jsp가 scope
					b.jsp -> <% String s="A"... -> s변수는 b.jsp가 scope
					c.jsp -> <% String s="A"... -> s변수는 c.jsp가 scope
				* 우리가 원하는 것은 a,b,c에서 모두 같은 자원을 쓰는 것...
				  Web.xml에다가 자원을 만들어놓으면 그 자원은 모두가 공유해서 쓸 수 있다!
				  
				  <context-param>
				  	<description>개발자마음..아무거나</description>
				  	<param-name>email</param-name>
				  	<param-value>webmaster@bit.or.kr</param-value>
				  </context-param>
				  
				  Aplication객체(WAS제공)는 web.xml설정한 자원을 읽을 수 있는 함수이다.
		*/
		
		/*
			WebContent > WEB-INF > lib
						 WEB-INF > web.xml
				         a.jsp
				         b.html
			WEB_INF폴더는 보안폴더이다. 클라이언트가 주소를 알고있더라도 접근이 불가하다.	
			
			* 실제현업 개발코드는 WebContent에 없다. 
			   1. 클라이언트가 직접 요청하는 파일 -> main.html , login.html , register.htm 등등 -> WebContent에 만든다.
			   2. 클라이언트가 직접 요청해서는 안되는 파일 ->  WEB-INF > views > member > register.jsp
			   									                    > admin > admin.jsp	 
		*/	
	%>
</body>
	<%
		String param = application.getInitParameter("email");
		out.print("<h3>" + param + "</h3>");
		
		String param2 = application.getInitParameter("FilePath");
		out.print("<h3>" + param2 + "</h3>");
	%>
</html>