<%@   page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%><%@ taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><%@ taglib
	uri="http://www.springframework.org/tags" prefix="spring"%><%@ taglib
	uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%><%@ taglib
	uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page session="false"%>
<html>
<head>
<!-- 헤더에  한글깨짐설정 -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>COCOA</title>
</head>
<body>
	<img src="/resources/img/logo.png" />
	<h1>COCOA pront</h1>

	<P>현재시간 : ${serverTime}.</P>
	<P>
		<strong>차가운 모니터속 따듯한 코코아 한잔처럼 마음을 녹여줄 개발자들의 커뮤니티</strong>
	</P>


	<table style="border: 1px solid #ccc">
		<colgroup>
			<col width="10%" />
			<col width="*" />
			<col width="15%" />
			<col width="20%" />
		</colgroup>
		<thead>
			<tr>
				<th scope="col">글번호</th>
				<th scope="col">제목</th>
				<th scope="col">조회수</th>
				<th scope="col">작성일</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="data" items="${list}" varStatus="sts">
			<tr>
				<td>${data.SEQ}</td>
				<td>${data.SUBJECT}</td>
				<td>${data.HITS}</td>
				<td>${data.REGDATE}</td>
			</tr>
		</c:forEach>
		<c:if test="${empty list}">
			<tr>
				<td colspan="4"><strong style="text-align:center">등록된 게시물이 없습니다.</strong></td>
			</tr>
		</c:if>
		</tbody>
	</table>


</body>
</html>
