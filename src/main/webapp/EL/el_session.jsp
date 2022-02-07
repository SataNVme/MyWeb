<%@page import="com.myweb.user.model.UsersVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션생성
	UsersVO vo = new UsersVO();
	vo.setId("aaa123");
	vo.setName("홍길자");
	
	session.setAttribute("vo", vo);
	session.setAttribute("auth", "y");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="el_session_ok.jsp">el확인하기</a>

</body>
</html>