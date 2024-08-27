<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Board.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="vo" class="Board.BoardVo"/>
<jsp:useBean id="dao" class="Board.BoardDao"/>
<jsp:setProperty name="vo" property="*"/>
<%--위의 방법은 action tag를 사용하는 방법. 아래는 일반 방법 --%>
<%--
	BoardVo vo = new BoardVo();
	BoardDao dao = new BoardDao();
	vo.id = request.getParameter("id");
	vo.name = request.getParameter("name");
    ....  
--%>
<%
	dao.insert(vo);
%>

<%-- 화면에 보여줄 것이 없으므로 Doctype Html 불필요 --%>
<%-- Redirect 구문만 추가 --%>

<% response.sendRedirect(request.getContextPath() + "/board/list.jsp"); %>
