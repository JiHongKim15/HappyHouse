<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
	$(document).ready(function(){
		$('#interest_add').click(function(){
			$.ajax({
				type:'POST',
				url: '${pageContext.request.contextPath}/interest.do/insert',
				data:{
					no: ${apt.no},
				}
			});
			alert("SUCCESSFULLY ADD IN WISH LIST");
		});
	});
	</script>
	<style>
	.button-wrapper {
        display: inline-block;
        margin: 20px 5px;
        padding: 40px;
    }
    .dark-button,
    .dark-button-2 {
        background: #333;
    }
    .button {
        background: #fff;
        border: none;
        padding: 2px;
        cursor: pointer;
        display: block;
        position: relative;
        overflow: hidden;
        transition: all .35s ease-in-out .35s;
        margin: 0 auto;
        width: 150px;
        text-align: center;
    }
    .dark-button .button,
    .dark-button .button span {
        background: #f82a6c;
        color: #fff;
    }
    .dark-button .button:after,
    .dark-button .button:before,
    .dark-button .button:hover span {
        background: #fff;
        color: #444;
    } 
    .dark-button-2 .button,
    .dark-button-2 .button span {
        background: #333;
        color: #fff;
    }
    .dark-button-2 .button:after,
    .dark-button-2 .button:before,
    .dark-button-2 .button:hover span {
        background: #fff;
        color: #444;
    } 
    span {
        display: block;
        padding: 15px 30px;
        background: #fff;
        z-index: 100;
        position: relative;
        transition: all .35s ease-in-out .35s;
    }
    .button:hover span {
        background: #f82a6c;
        color: #fff;
        transition: all .35s ease-in-out .35s;
    }
    .button:after {
        bottom: -100%;
        right: -100%;
        content: "";
        width: 100%;
        height: 100%;
        position: absolute;
        background: #f82a6c;
        transition: all .35s ease-in-out .5s;
    }
    .button:hover:after {
        right: 0;
        bottom: 0;
        transition: all ease-in-out .35s;
    }
    .button:before {
        top: -100%;
        left: -100%;
        content: "";
        width: 100%;
        height: 100%;
        position: absolute;
        background: #f82a6c;
        transition: all .35s ease-in-out .5s;
    }
    .button:hover:before {
        left: 0;
        top: 0;
        transition: all ease-in-out .35s;
    }
	
	</style>
</head>

<body>
<%@include file="../nav.jsp" %>

	<div align="center" style="margin: 5% 0 0 0" >
	<h2>상세정보</h2>
	
	<div align="right" style="margin: 0 20% 0 0">
		<div class="light-button button-wrapper">
    <div class="button"  id ="interest_add" >
        <span>
            WISH
        </span>
    </div>  
</div>
	</div>
	<table>
	<tr>
		<td>
		<table class="pinktable2">
		
			<thead>
				<tr  >
					<th>식별번호</th>
					<td width = 200>${apt.no}</td>
				</tr>
				<tr  >
					<th>법적동명</th>
					<td>${apt.dong}</td>
				</tr>
				<tr  >
					<th>아파트 이름</th>
					<td>${apt.aptName}</td>
				</tr>
				<tr  >
					<th>법정동코드</th>
					<td>${apt.code}</td>
				</tr>
				<tr  >
					<th>거래금액</th>
					<td>${apt.dealAmount}</td>
				</tr>
				<tr  >
					<th>건축년도</th>
					<td>${apt.buildYear}</td>
				</tr>
				<tr  >
					<th>거래 년</th>
					<td>${apt.dealYear}</td>
				</tr>
				<tr  >
					<th>거래 월</th>
					<td>${apt.dealMonth}</td>
				</tr>
				<tr  >
					<th>거래 일</th>
					<td>${apt.dealDay}</td>
				</tr>
				<tr  >
					<th>전용 면적</th>
					<td>${apt.area}</td>
				</tr>
				<tr  >
					<th>층</th>
					<td>${apt.floor}</td>
				</tr>
				<tr  >
					<th>지번</th>
					<td>${apt.jibun}</td>
				</tr>
				<tr  >
					<th>타입</th>
					<td>${apt.type}</td>
				</tr>
				<tr  >
					<th>임대 비용</th>
					<td>${apt.rentMoney}</td>
				</tr>
			</thead>
		</table>
		</td>
		
	
	<td>
		<div class="left-box"> 
			<img src="${root}/img/${apt.aptName}.jpg" alt="이미지 없음" style =" margin: 50px 50px 50px 50px;">
			</div>
	</td>
	</tr>
	</table>

	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>