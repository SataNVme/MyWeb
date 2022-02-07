<%@page import="com.myweb.user.model.UsersDAO"%>
<%@page import="com.myweb.user.model.UsersVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//앞에서 비밀번호를 받았기 떄문에, 비밀번호 검증후 삭제를 진행합니다.
	/*
	1. 사용자가 입력한 pw값과 id를 기반으로 login() 메서드를 실행시켜서
	   비밀번호가 맞는지 검증합니다.
	   
	2. login() 가 null을 반환하면 "현재 비밀번호를 확인하세요" 출력 뒤로가기
	   login() 가 값을 가진다면 delete()메서드를 호출해서 삭제를 진행하면 됩니다.	
	
	3. 삭제 성공시에는 세션을 전부 지우고 index페이지로 리다이렉트
	   삭제 실패시에는 마이페이지로 리다이렉트
	*/
	
	request.setCharacterEncoding("utf-8");

	UsersVO vo = (UsersVO)session.getAttribute("userVO"); //아이디는 세션에서 얻을수 있습니다.
	String id = vo.getId(); //아이디
	
	String pw = request.getParameter("pw"); //파리미터값
	
	//id, pw값 확인
	UsersDAO dao = UsersDAO.getInstance();
	UsersVO result = dao.login(id, pw); //id, pw가 일치하면 존재하고, 그렇지 않으면 null
	
	if(result == null) {
%>		
	<script>
		alert("현재 비밀번호를 확인하세요");
		history.go(-1);
	</script>
<%
	} else {
		//탈퇴...
		int result2 = dao.delete(id);
		if(result2 == 1) { //성공
			session.invalidate();
			response.sendRedirect( request.getContextPath() );			
		} else { //실패
%>
		<script>
			alert("탈퇴에 실패했습니다. 관리자에게 문의하세요");
			history.go(-1);
		</script>
<%			
		}
	}
%>



