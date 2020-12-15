<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${ pageContext.request.contextPath }"/>
<c:set var="imgsource" value="${apt.aptName}"/>
<!DOCTYPE html>
<html>
<head>
<!-- CSS here -->
		<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/assets/css/bootstrap.min.css">

</head>
<body>

	<%@include file="../nav.jsp" %>
	
	<div align="center" style="width: 98%; height: 100%; margin: 1% 1% 1% 1%;">
<h2 align="center" style="margin:20px">검색 목록</h2>
	  <table class="pinktable">
	    <thead>
	      <tr class="table-info">
	        <th>식별번호</th>
	        <th>법적동명</th>
	        <th>아파트 이름</th>
	        <th>거래금액</th>
	        <th>건축년도</th>
	        <th>거래 년</th>
	        <th>거래 월</th>
	        <th>거래 일</th>
	        <th>전용 먼적</th>
	      </tr>
      </thead>
<c:if test="${aptlist.size() != 0}">
<c:forEach var="apt" items="${aptlist}">
	      
	      <tr style="cursor:pointer;" onClick="location.href='${root }/apt.do/detail/${apt.no}'">
                                           
	       <td>${apt.no}</td>
	        <td>${apt.dong}</td>
	        <td>${apt.aptName}</td>
	        <td>${apt.dealAmount}</td>
	        <td>${apt.buildYear}</td>
	        <td>${apt.dealYear}</td>
	        <td>${apt.dealMonth}</td>
	        <td>${apt.dealDay}</td>
	        <td>${apt.area}</td>
	      </tr>
</c:forEach>
</c:if>
	  </table>
	  <c:if test="${aptlist.size() == 0}">
	  <table class="table table-active">
	    <tbody>
	      <tr class="table-info" align="center">
	        <td>작성된 글이 없습니다.</td>
	      </tr>
	    </tbody>
	  </table>
	  </c:if>
	  </div>
	  <%@include file="../footer.jsp"%>
	  
</body>
</html>


