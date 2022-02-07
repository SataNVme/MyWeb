<%@page import="com.myweb.user.model.UsersVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//UsersVO vo = (UsersVO)request.getAttribute("vo");
	//String id = vo.getId();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	${vo.id }<br>
	${vo.name }<br>
	${vo.email }
	
	<hr/>
	<!-- requestScope는 생략하고 많이 사용합니다 -->
	${requestScope.vo.id }<br>
	${requestScope.vo.name }<br>
	${requestScope.vo.email }
	
	
</body>
</html>