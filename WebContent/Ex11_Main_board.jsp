<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시판</title>
	<style type="text/css">
	      table , tr , td {border: 2px solid black; border-collapse: collapse; }
	</style>
</head>
<body>
	<table style="width: 700px">
		<tr>
			<td colspan="2">
					<jsp:include page="commonmodule/Top.jsp"></jsp:include>
			</td>
		</tr>
		<tr>
			<td style="width: 100px">
				<jsp:include page="commonmodule/Left.jsp"></jsp:include>
			<td style="width:600px">
					게시판 내용 출력
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<jsp:include page="commonmodule/bottom.jsp"></jsp:include>
			</td>
		</tr>
	</table>
</body>
</html>