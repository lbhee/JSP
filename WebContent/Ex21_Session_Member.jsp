<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//이 페이지는 회원전용입니다.
	//session에서 memberid값을 가지고 왔을 때, 생성 유무를 보면된다.
	//로그인 하지 않은 사람은 memberid값을 가지지 않는다.
	String memberid = (String)session.getAttribute("memberid");
	boolean loginstate = (memberid == null) ? false : true;
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원전용 페이지</title>
</head>
<body>
	<%
		if(loginstate == true){
			out.print(memberid + "님 로그인 상태입니다.<br>");
			out.print("회원전용 페이지를 사용가능합니다.<br>");
			out.print("<a href='Ex21_Session_Logout.jsp'>로그아웃</a>");
		}else{
			out.print("<script>alert('로그인 후 사용하세요.')</script>");
			out.print("<script>location.href='Ex21_Session_Login.jsp'</script>");
		}
	%>
</body>
</html>