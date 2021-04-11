<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//한글처리
	request.setCharacterEncoding("UTF-8");

	//데이터받기
	String uid = request.getParameter("uid");
	String pwd = request.getParameter("pwd");
	
	//업무처리(로직처리) -> DB연결 - select - 회원테이블 - id, pwd 존재파악 - 판단
	//여기서는 id, pwd가 같으면 로그인성공으로 보자.
	boolean success = false;
	if(uid.equals(pwd)) {
		//로그인성공하면 session객체에 변수를 생성하고 id를 담자
		//이 session객체의 scope은 WebAPP전체(어떤페이지든 사용가능)
		session.setAttribute("memberid", uid);
		success = true;
	}
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(success == true){
			out.print("<b>로그인 성공</b><br>");
			String user = (String)session.getAttribute("memberid");
			out.print(user + "님 로그인 되었습니다<br>");
			out.print("<a href='Ex21_Session_Member.jsp'>회원전용 페이지 접속</a>");
		}else{
	%>
		<script type="text/javascript">
			alert("다시 로그인 해주세요");
			window.history.go(-1); 	//location.href="Ex21_Session_Login.jsp"; 같은코드!	
		</script>	
	<%		
		}
	 %>
</body>
</html>