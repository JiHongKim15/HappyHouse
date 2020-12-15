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
<%@include file="../nav.jsp" %>
<c:if test="${userpassword != null}">
<h3>당신의 비밀번호는 (쉿) ${userpassword} 입니다.</h3>
</c:if>
<%@include file="../footer.jsp"%>
</body>
</html>