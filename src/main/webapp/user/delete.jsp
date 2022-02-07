<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp" %>

<section>
	<div align="center">
		<h3>기존 비밀번호를 입력하세요</h3>
		<form action="delete_ok.jsp" method="post">
			<input type="password" name="pw" required>
			<input type="submit" value="탈퇴하기">
		</form>
	</div>
</section>


<%@ include file="../include/footer.jsp" %>