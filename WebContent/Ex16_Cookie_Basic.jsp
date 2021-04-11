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
		정보(데이터) 저장과 저장장소
		
		클라이언트(개인 로컬 PC)에 저장할 것이냐
		서버(웹서버 or DB서버)에 저장할 것이냐
		
		기준점 ?
		보안상 중요한가 아닌가에 따라서 정보의 중요성에 따라서 서버에저장, 클라이언트에저장, 소멸일시적, 영속적 결정
		
		Client(Local PC = 웹브라우저)에 저장하는 방법
		1. Cookie : 단점은 크기가 제한적, 사용이 조금불편, 보안상 좋지않음(클라이언트가 마음먹으면 모두 지울 수 있음)
		             - 메모리쿠기(브라우저를 닫으면 같이 소멸됨) -> 소멸시기가 없음
		             - 파일쿠기(영속적 저장공간 = local 디스크에 text파일 형태로 암호화되서 저장됨) -> 소멸시기를 정의함           
		2. Local storage : key, value형태로 저장가능한 구조
		            
		              
		Server(웹서버 WAS)
		1. server memory : session객체(사이트에 접속하는 사용자마다 부여하는 고유한 식별값), 서버 리부팅, 서버정지하면 데이터 소멸
		2. server memory : Application객체(사이트에 접속하는 모든 사용자가 공유하는 객체), 서버 리부팅, 서버정지하면 데이터 소멸
		3. server (영속적) : 서버가 리부팅되거나 정지되어도 남아있는 데이터 -> 파일.text (관리가 힘들다)
		4. DB server : 보안상 좋다. 영속적관리가 가능하다. 비용이 높다.
	 --> 
<%
	Cookie mycookie = new Cookie("cname", "1004");
	//쿠키 객체 생성
	// 내 사이트에 접속한 브라우저(클라이언트)에게 전달 -> response
	response.addCookie(mycookie);
%>

<a href="Ex17_Cookie_Read.jsp">Cookie read</a>
</body>
</html>