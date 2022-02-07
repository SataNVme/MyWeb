<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션삭제
	session.invalidate();
	response.sendRedirect( request.getContextPath()  + "/index.jsp"); //절대경로

%>