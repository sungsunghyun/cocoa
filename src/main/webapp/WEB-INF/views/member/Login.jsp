<%@   page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"
%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" 
%><%@ taglib uri="http://www.springframework.org/tags" prefix="spring"
%><%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"
%><%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"
%>
<%@include file="/WEB-INF/include/header.jsp" %>
<body style="margin-top:100px">
<form class="px-4 py-3" action="/login" method="post">
    ID
    <input type="text" class="form-control" name="loginId" placeholder="example">
    PASSWORD
    <input type="password" class="form-control" name="loginPwd" placeholder="Password">

    <input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
    <button type="submit" class="btn btn-primary">Sign in</button>
</form>

</body>

