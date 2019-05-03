<%@   page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"
%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" 
%><%@ taglib uri="http://www.springframework.org/tags" prefix="spring"
%><%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"
%><%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"
%>
<%@include file="/WEB-INF/include/header.jsp" %>
<body>
	<div class="container" style="margin-top:100px">
		<table class="table table-bordered table-hover">
			<thead align="center">
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