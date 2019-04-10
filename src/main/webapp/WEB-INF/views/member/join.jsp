<%@   page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"
%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" 
%><%@ taglib uri="http://www.springframework.org/tags" prefix="spring"
%><%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"
%><%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"
%><%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" 
%>
<h5 class="panel-header">이메일로 가입하기</h5>

<div class="panel-body">
    <div class="row">
        <div class="col-lg-6">
            <form:form role="form" commandName="registerRequest" action="/member/joinProc/" method="post">
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="fa fa-check"></i></span>
                    <form:input type="text" class="form-control" placeholder="ID" path="mem_id"/>
                    <form:errors path="mem_id"/>
                </div>
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                    <form:input type="mem_mail" class="form-control" placeholder="Email" path="mem_mail"/>
                    
                </div>
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                    <form:input type="text" class="form-control" placeholder="Name" path="mem_name"/>
                    <form:errors path="mem_name"/>
                </div>
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                    <form:password class="form-control" placeholder="Password" path="mem_pass"/>
                    <form:errors path="mem_pass"/>
                </div>
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                    <form:password class="form-control" placeholder="Password Check" path="mem_passchk"/>
                    <form:errors path="mem_passchk"/>
                </div>
                <button type="submit" class="btn btn-default">가입하기</button>
                <a href="/"><button type="button" class="btn btn-default">취소하기</button></a>
            </form:form>
        </div>
    </div>
</div>

