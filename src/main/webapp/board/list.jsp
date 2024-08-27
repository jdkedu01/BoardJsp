<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Board.*, java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	BoardDao dao = new BoardDao();
	List<BoardVo> ls = dao.selectAll();
	pageContext.setAttribute("ls", ls);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록</title>
</head>
<body>
<h2>게시글 목록</h2>
<table border="1">
<tr>
	<th>ID</th><th>이름</th><th>나이</th><th>등급</th><th>직업</th><th>적립금</th>
</tr>
<c:forEach var="board" items="${ls}">
<%-- <p>${board.id}</p> --%>
<tr>
	<td>${board.id}</td>
	<td><a href ="${pageContext.request.contextPath}/board/boardDetail.jsp?id=${board.id}">${board.name}</a></td>
	<td>${board.age}</td>
	<td>${board.grade}</td>
	<td>${board.job}</td>
	<td>${board.point}</td>
</tr>
</c:forEach>
</table> 
</body>


<p></p>
<%-- <a href="<c:url value="registForm.jsp"/>"><button>고객 등록</button></a> --%>
<a href="registForm.jsp"/><button>고객 등록</button></a>
<%-- 상대경로 지정 --%>
</html>