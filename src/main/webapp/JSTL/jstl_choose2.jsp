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

	<!-- choose태그를 이용해서 점수가 
	90 -> A, 80 -> B, 70 -> C, 나머지F 
	
	중첩문장을 이용해서 95점 이상일때는 A+,
	90~95점 A로 표현
	-->
	<c:choose>
		<c:when test="${param.point >= 90 }">
			<c:choose>
				<c:when test="${param.point >= 95 }">
					A+
				</c:when>
				<c:otherwise>
					A
				</c:otherwise>
			</c:choose>			
		</c:when>
		<c:when test="${param.point >= 80 }">
			B
		</c:when>
		<c:when test="${param.point >= 70 }">
			C
		</c:when>
		<c:otherwise>
			F
		</c:otherwise>
	</c:choose>
	
	
</body>
</html>