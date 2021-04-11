<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
	Server(웹서버 WAS)
	1. server memory : session객체(사이트에 접속하는 사용자마다 부여하는 고유한 식별값), 서버 리부팅, 서버정지하면 데이터 소멸
	2. server memory : Application객체(사이트에 접속하는 모든 사용자가 공유하는 객체), 서버 리부팅, 서버정지하면 데이터 소멸
	
	
	session객체 : 웹서버에서 접속한 사용자마다 고유하게 부여하는 객체이다.
				 고유함을 보장하기 위해서 중복되지 않는 key를 만든다.(아파치톰캣이 만든다.)
				 필요한 정보를 담거나 가져올 수 있다. [고유한 정보]
				 ex) 로그인한 id(게시판에 글을 쓰면 자동으로 id), 쇼핑몰(구매상품목록), 처음접속시간, 마지막접속시간 등
				 
				 100명이 접속하면 100개 생성
				 소멸방법 : 로그아웃, 브라우저종료 .. 등
					  			 
 -->
 
<%
	Date time = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
	<h3>세션정보</h3>
	session 객체의 식별값 : <%= session.getId() %><br>
	<hr>
	<%
		time.setTime(session.getCreationTime());
	%>
	[세션 생성된 시간] : <%=formatter.format(time) %>
	<hr>
	<%
		time.setTime(session.getLastAccessedTime());
	%>
	[세션 마지막 접속 시간] : <%=formatter.format(time) %>
</body>
</html>