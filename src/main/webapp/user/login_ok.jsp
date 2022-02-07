<%@page import="com.myweb.user.model.UsersVO"%>
<%@page import="com.myweb.user.model.UsersDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 로그인 페이지에서 넘어오는 id, pw를 받습니다.
	2. 반환유형UserVO login메서드에 (id, pw)를 매개변수로 넘깁니다.
	   id, pw기반으로 로그인검증 해서 결과가 있다면, UserVO에 select결과를 저장합니다.
	   없다면 null을 반환합니다.
	   
	3. login_ok에서는 UserVO가 null이 아니면(로그인 성공) UserVO를 세션에 저장후에
		mypage.jsp로 리다이렉트
		
	4. null이라면 실패를 의미하므로, script로 "아이디 비밀번호를 확인하세요"를 출력한 후에
	   다시 로그인 페이지로 이동
	*/

	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	UsersDAO dao = UsersDAO.getInstance();
	UsersVO vo = dao.login(id, pw);
	
	if(vo == null) {
%>
	<script>
		alert("아이디 비밀번호를 확인하세요");
		history.go(-1);
	</script>

<%		 
	} else {
		session.setAttribute("userVO", vo); //세션에 저장
		response.sendRedirect("mypage.jsp");	
	}
%>




