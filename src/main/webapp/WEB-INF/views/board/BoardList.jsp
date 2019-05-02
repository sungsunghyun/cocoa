<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="/WEB-INF/include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Cocoa Board</title>
</head>
<body>
<div class="container">
	<table class="table table-bordered table-hover">
		<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>날짜</th>
			<th>조회수</th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<td>3</td>
			<td>코코아 게시판3</td>
			<td>송성현</td>
			<td>2019.05.02</td>
			<td>648</td>
		</tr>
		<tr>
			<td>2</td>
			<td>코코아 게시판2</td>
			<td>송성현</td>
			<td>2019.05.02</td>
			<td>648</td>
		</tr>
		<tr>
			<td>1</td>
			<td>코코아 게시판</td>
			<td>송성현</td>
			<td>2019.05.02</td>
			<td>648</td>		
		</tr>
		</tbody>
	</table>
	<hr/>
	<a class="btn btn-default pull-right">글쓰기</a>
	
	<div class="text-center">
		<ul class="pagination">
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
		</ul>
	</div>
</div>
</body>
</html>