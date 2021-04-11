<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 한글처리
		request.setCharacterEncoding("UTF-8");
	//2. 데이터받기(request객체)
		String id = request.getParameter("id");
		//request객체는 (WAS내장객체)
		//192.168.0.123:8090/WebJSP/Ex04_request.jsp 요청당 객체 1개 자동생성
		//클라이언트 서버에 전송을 요청(클라이언트 수 많은 정보가 전달된다.입력값, ip, 브라우저정도, 전송방식 등.. >> 정보를 받는 객체request)
		//request 내장객체는 클라이언트에서 서버로 요청할 때 생성되는
		//HttpServletRequest 타입을 갖는 객체가 자동생성되고 그 주소를 request참조
		//HttpServletRequest request = new HttpServletRequest();
		//따라서 request를 쓰면 클라이언트의 정보를 알 수 있다!
	
	//3. 로직처리(업무에 따라서 DB연걸 등..)
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	id: <%=id %><hr>
	접속한 클라이언트 IP: <%=request.getRemoteAddr() %><hr>
	서버(요청한 인코딩): <%=request.getCharacterEncoding() %><hr>
	전송방식: <%=request.getMethod() %><hr>
	포트: <%=request.getServerPort() %><hr>
	context root(사이트명, 가상디렉토리, 홈디렉토리, 디폴트웹경로): <%=request.getContextPath() %>
</body>
</html>