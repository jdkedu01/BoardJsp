<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Board.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- JSP Action Tag 사용 --%>
<jsp:useBean id="dao" class="Board.BoardDao"/>

<% 
	String id = request.getParameter("id");
	BoardVo vo = dao.selectOne(id);
	pageContext.setAttribute("vo", vo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세부 내용</title>
</head>
<body>
<h3>고객 세부 정보</h3>
<p>고객ID : ${vo.id}</p>
<p>고객이름 : ${vo.name}</p>
<p>고객나이 : ${vo.age}</p>
<p>고객등급 : ${vo.grade}</p>
<p>고객직업 : ${vo.job}</p>
<p>고객적립금 : ${vo.point}</p>
<br>
<button>수정</button>
<button>삭제</button>

</body>
</html>