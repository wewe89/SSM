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
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <h2>表单控件: input</h2>
    <p>以下实例使用两个 input 元素，一个是 text，一个是 password ：</p>
    <form class="form-signin" action="/licence/common_add" method="post"  enctype="multipart/form-data">
        <div class="form-group">
            <label for="usr">用户名:</label>
            <input type="text" class="form-control" id="usr" name="name1">
        </div>
        <div class="form-group">
            <label for="pwd">密码:</label>
            <input type="password" class="form-control" id="pwd" name="name2">
        </div>
        <div class="form-group">
            <label for="exampleFormControlFile1">Example file input</label>
            <input type="file" class="form-control-file" id="exampleFormControlFile1" name="file1">
        </div>
        <button type="submit" class="btn btn-primary mb-2">上传</button>
    </form>
</div>
</body>
</html>
