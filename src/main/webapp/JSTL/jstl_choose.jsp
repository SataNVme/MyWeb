<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- ifelse~ -->

	<c:choose>
		<c:when test="${param.name eq '홍길동' }">
			홍길동입니다
		</c:when>
		<c:when test="${param.name eq '이순신' }">
			이순신입니다
		</c:when>
		<c:otherwise>
			둘다 아닙니다
		</c:otherwise>
	</c:choose>

	<!-- choose문장으로 20세 이상이면 성인, 그렇지 않으면 미성년자 -->
	<c:choose>
		<c:when test="${param.age >= 20 }">
			성인입니다.
		</c:when>
		<c:otherwise>
			미성년자입니다
		</c:otherwise>
	</c:choose>



</body>
</html>