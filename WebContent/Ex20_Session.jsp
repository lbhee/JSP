<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
	****************************
	서버자원 활용하기(WAS 메모리 사용하기)
	
	1. Session 객체 : 고유한 자원 -> 접속하는 사용자(브라우저)마다 sessionID가 고유하게 부여되는 객체이다.
					 ex) 접속한 사용자 마다 session.setAttribute("id", request.getParameter("id"));
					     3명접속
					     session객체   ,   session객체   , session객체
					     식별값:AA1         식별값:BB1       식별값:CC1
					     [id, lee]        [id, kim]      [id, hong]
	
	2. Application 객체 : 전역자원 -> 접속하는 모든 사용자가 다룰 수 있는 자원을 뜻한다.
						 사이트에 접속하는 모든 세션이 가지고 노는 객체
						  ex) 전체 사이트 접속자 수에 활용
						      application.setAttribute("total", 0); -> total은 모든 사용자가 다룰 수 있는 전역자원이 된다.
						      사이트에 접속할 때마다 total+=1;을 한다.
 -->    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>세션변수(set)</h3>
	<%
		String userid = request.getParameter("userid");
		session.setAttribute("id", userid);
		//session.setAttribute(String name,Object value)
		//                      ("emp", new Emp())  --> 가능! 
	%>
	
	<h3>세션변수(get)</h3>
	<%
		String id = (String)session.getAttribute("id");
		out.print("당신의 아이디는 <b>" + id + "</b> 입니다.");
	%>
</body>
</html>