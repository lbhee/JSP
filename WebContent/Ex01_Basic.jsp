<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//java 코드(스크립트 릿 안에 구현하라)
	Date day = new Date();

	//jsp페이지
	// 1. UI(html+css+javascript) + JAVA코드를 함께 쓸 수 있다.
	// 2. 디자인코드 + 서버로직코드가 혼재되어 있다.
	
	//servlet(형), jsp(동생)
	//java는 처음에 웹기술이 아니였다. 계산기/그림판/윈도우프로그래밍을 만들다가 웹을 시작하면서 servlet을 만들었다.
	//servlet으로 디자인하는것이 복잡함. 이런 단점때문에 만든것이 jsp이다. 
	//jsp의 장점은 html에서 했던 모든 디자인 작업이 가능. 스크립트릿 안에 java코드도 사용가능.
	
	//현대의 프로그래밍은 둘다 사용한다.
	//servlet은 java코드구현, jsp는 ui구현을 한다. -> MVC패턴(model view controller):각자 잘하는 걸 시키자.
	//Model (DAO, DTO) : 객체만드는 것 -> java코드
	//View (UI) : 디자인하는 것 -> jsp
	//Controller (응답, 요청) : java코드 웹제어 -> servlet
	
	//중간프로젝트 : model2기반의 MVC패턴
	
	//jsp와 html 차이점
	//둘다 Tomcat(WAS)처리하는 공통점
	// 1. html : web server(클라이언트 요청이 오면 응답)
	// 2. jsp : was를 통해서 컴파일 >> class파일 생성 >> 실행할 때 가지고있는 코드를 클라이언트가 읽을 수 있게 바꿔서 전달
	//          WAS(jsp) -> compile(a.jsp.java) -> a.jsp.class -> 실행 -> 정적+동적 -> 정적파일(text, htil, script) -> 전달
	// ASP(ASPX), PHP, JSP 장점 : 코드노출이 안된다. 보안상 좋다.
	//컴파일 -> 실행(a.jsp.class)전달 >> A친구요청 >> new.jsp >> WAS는 new.jsp실행여부확인 >> 있으면 그대로서비스 , 없으면 컴파일 실행
	//개발자가 수정시 WAS가 재컴파일한다.
	
	//JSP구성요소
	// 1. 선언부      : <%@ page language="java" ..... 사용언어, 인코딩, import
	// 2. 스크립트 요소 : 스크립트릿 <% 자바코드
	//                표현식(출력방법) - 출력대상(client 브라우저) >> <%=전달내용 (=은 response라고한다.)
	//                선언부(공통자원(scope page)) : 공통함수 정의 >> <%! 공통함수
%>   
<%!
	//이 페이지에서 사용하는 공통함수 만들기
	public int add(int i , int j){
		return i+j;
	} 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 기초</title>
</head>
<body>
	<h3>JSP</h3>
	<%=day %><br>
	<%=add(10, 20) %> <br>
	<%
		int result = add(100, 200);
	%>
	합 결과 : <%=result %>
</body>
</html>
