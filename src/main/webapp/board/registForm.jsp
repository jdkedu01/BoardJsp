<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 등록</title>
</head>
<body>
<form action="regist.jsp" method="post">
	<input type="text" name="id" placeholder="고객아이디" required><br><br>
	<input type="text" name="name" placeholder="고객이름" required><br><br>
	<input type="text" name="age" placeholder="고객나이" ><br><br>
	<input type="text" name="grade" placeholder="고객등급" required><br><br>
	<input type="text" name="job" placeholder="직업" ><br><br>
	<input type="text" name="point" placeholder="적립금" ><br><br><br><br>
	<input type="submit" value="등록">
</form>	
</body>
</html>