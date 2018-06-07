<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>

<%@include file="common/head.jsp" %>

<!doctype html>
<html lang="zh-cn">
<head>
    <title>Title</title>
    <link href="../css/login.css" rel="stylesheet">
</head>
<body class="text-center">
<form class="form-signin" action="/user/login" method="post">
    <img class="mb-4" src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
    <h1 class="h3 mb-3 font-weight-normal">请登陆</h1>
    <label for="userid" class="sr-only">柜员号</label>
    <input type="text" id="userid" name="userid" class="form-control" placeholder="柜员号" required autofocus>
    <label for="password" class="sr-only">密码</label>
    <input type="password" id="password" name="password" class="form-control" placeholder="密码" required>
    <div class="checkbox mb-3">
        <label>
            <input type="checkbox" value="remember-me">记住我
        </label>
    </div>
    <button class="btn btn-lg btn-primary btn-block" type="submit">登陆</button>
    <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
</form>
</body>
</html>
