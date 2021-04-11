<%@page import="kr.or.bit.Emp"%>
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
	Tomcat(WAS)이 제공하는 기본적은 내장객체 (new할 필요가 없다)
	1. request     (요청객체) : 클라이언트의 정보를 담고 있다.
	2. response    (응답객체) : 특정페이지 이동, 정보출력, 쿠키 쓰기
	3. application (전역객체) : web.xml 자원에 접근하여 read, 전역변수
	4. session     (고유객체) : 접속한 사용자마다 부여되는 객체 
	5. out         (출력객체)
	
	
	* session객체
	  [내부에 session변수 생성 - session의 scope은 폴더전체]
	  - scope 	   : a.jsp에서 session.setAttribute("member") 변수생성
	  	 	  	     b.jsp가  session.getAttribute("member") 사용가능
	          	     session변수는 폴더안에 있는 모든 페이지에서 사용이 가능하다.
	  - Life-cycle : session변수는 session객체와 생명을 같이한다. session객체가 소멸되면 변수도 사라진다.
	  	  		     session객체의 소멸 -> 서버의 리부팅, 톰캣재실행, session.invaildate();
	
	* application객체
	  [내부에 application변수 생성 - 전역변수 : 모든 session이 공유한다.(접속한 모든 사용자)] 
	  - scope 	   : session과 같음.
	  - Life-cycle : 소멸 -> 서버의 리부팅, 톰캣재실행	
	  
	* request객체
	  [내부에 변수 생성 - request.setAttribute("type", "A");]
	  - scope      : 요청페이지 (login.jsp 실행 -> 요청당 request한개 생성 -> 페이지안에서만 사용가능)
				     **예외** 
				       : login.jsp가 ok.jsp를 include / forward하고 있다면 request객체는 ok.jsp에서도 공유된다!
	    	   
-->

<%
	//session
	Emp emp = new Emp();
	emp.setEmpno(2000);
	emp.setEname("홍길동");
	session.setAttribute("empobj", emp); //이렇게 session에 담은 변수는 어느 페이지에서나 사용가능하다!
	
	Emp e = (Emp)session.getAttribute("empobj"); //다른페이지에서 이런식으로 사용가능
	out.print(e.getEmpno() + "<br>");
	out.print(e.getEname() + "<br>");
	
	
	
	//request
	request.setAttribute("who", "hong");
	//현재페이지에서만 사용가능
	String who = (String)request.getAttribute("who");
	out.print(who);
	
	/*
		<jsp:include page=""></jsp:include>
		<jsp:forward page=""></jsp:forward>
		이렇게 include, forward하면 다른페이지에서도 사용가능.
		
		b.jsp, c.jsp에서
		application변수 사용가능
		session변수     사용가능
		request변수     사용가능 (include되어있으면)
	*/
%>

</body>
</html>