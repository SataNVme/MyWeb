<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
    
<section>
	
	<div align="center">
		<h3>MVC1 회원가입</h3>
		<hr/>
		
		<form action="join_ok.jsp" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" placeholder="4글자이상" required pattern="\\w{4, }" ></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pw" placeholder="4글자이상"  required pattern="\\w{4, }"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" placeholder="이름은 필수입니다" required></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="email" name="email" ></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="address" ></td>
				</tr>
			</table>
			
			<input type="submit" value="회원가입" class="btn btn-default">
			<input type="button" value="로그인" class="btn btn-primary" onclick="location.href='login.jsp' ">
		</form>
	</div>
</section>

<%@ include file="../include/footer.jsp" %>    


