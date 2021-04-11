<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Include는 request객체를 공유한다.</h3>
	<%=request.getParameter("type") %><br>     <!-- Ex12_include_param과 include되어있어서 request객체를 공유한다. --> 
	<%=request.getParameter("userid") %><br>
	
	<h3>Ex12_include_param에서 액션태그로 전달된 값</h3>
	<%
		String h = request.getParameter("hobby");
		String p = request.getParameter("pwd");
		
		out.print("비번 : " + p + "<br>");
		if(h.equals("baseball")){
			out.print("<i>당신의 취미는" + h + "</i>");
		}else{
			out.print("다른 취미가 있네요");
		}
	
	%>
</body>
</html>