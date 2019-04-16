<%@   page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"
%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" 
%><%@ taglib uri="http://www.springframework.org/tags" prefix="spring"
%><%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"
%><%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"
%>
<%@ page session="false" %>
<html>
<head>
	<!-- 헤더에  한글깨짐설정 -->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>COCOA</title>
</head>
<body>
<style type="text/css">  
*{margin:0px; padding:0px;}
.container{margin:0; padding:0; width:100%; text-align:center;}
.nav_bar {border-bottom:1px solid gray; padding:5px; margin-bottom:50px; text-align:center; vertical-align:middle; position:fixed; width:100%; height:50px; left:0px; top:0px; background-color:white; z-index:1; }

.contents-box {margin-top:60px; }
.contents{width:80%; margin-left:auto; margin-right:auto; border-left:1px solid gray; border-right:1px solid gray;}
.select-contents {width:100%; height:200px; padding:20px 5px 10px 5px; margin-top:20px;}
.select-contents ul li {display:inline; margin-left:8px; margin-right:8px;}
.select-contents ul li a img{width:110px; height:110px; border-right:4px solid #d1d1d1; border-bottom:3px solid #d1d1d1; border-radius:7px;}



.footer{border-top:1px solid gray; border-bottom:1px solid gray; padding:10px;}
.footerWrap-img{display:inline-block; vertical-align:middle}
.footerWrap-Copyright {size:6px; display:inline-block; margin:0px; padding:0px; vertical-align:middle; margin-left:4px;}

/* input박스 디자인 */
.search-box{position:absolute; top:70%; width:100%;}
.search-box input{border-radius:8px; border-top:1px solid gray; border-bottom:2px solid gray; border-right:2px solid gray; width:250px; height:40px;}
   
</style>

<div class="container">
<div class="nav_bar">
	<a href="/"><img src="/resources/img/HeaderLogo.png" alt="Logo" /></a>
	<a href="/member/login/">로그인</a> 
	<a href="/member/join/">회원가입</a>
</div>


<div class="contents-box">
	<div class="contents">
		<div style="height:250px; position:relative">
			<img src="/resources/img/Main.jpg" alt="main" style="width:100%; height:100%"/>
			<div class="search-box">
				<input type="text" placeholder="검색어를 입력하세요." />&nbsp;<button type="button">돋보기아이콘</button>
			</div>
		</div>
		<div class="select-contents">
			<img src="/resources/img/leftarrow.png" alt="" />
			<ul>
				<li><a href="#"><img src="/resources/img/test1.jpg" alt="test1" /></a></li>
				<li><a href="#"><img src="/resources/img/test2.jpg" alt="test2" /></a></li>
				<li><a href="#"><img src="/resources/img/test3.jpg" alt="test3" /></a></li>
				<li><a href="#"><img src="/resources/img/test4.jpg" alt="test4" /></a></li>
				<li><a href="#"><img src="/resources/img/test5.jpg" alt="test5" /></a></li>
				<li><a href="#"><img src="/resources/img/test1.jpg" alt="test1" /></a></li>
				<li><a href="#"><img src="/resources/img/test2.jpg" alt="test2" /></a></li>
				<li><a href="#"><img src="/resources/img/test3.jpg" alt="test3" /></a></li>
				<li><a href="#"><img src="/resources/img/test4.jpg" alt="test4" /></a></li>
				<li><a href="#"><img src="/resources/img/test5.jpg" alt="test5" /></a></li>
			</ul>
			<img src="/resources/img/rightarrow.png" alt="" />
		</div>
	</div>
</div>
 

<div class="footer">
	<div class="footerWrap-img">
		<img src="/resources/img/Cocoa.png" alt="logo"/>
	</div>
	<div class="footerWrap-Copyright">
		<p style="color:gray">Copyright ⓒ 2019 <b style="color:brown">Cocoa</b> All Rights Reserved</p>
	</div> 
</div>
<br />
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</div>
</body>
</html>
 