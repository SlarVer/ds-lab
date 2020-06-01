<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE HTML>
<html>
<head>
  <meta http-equiv="Content-Type" name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" charset=ISO-8859-1">
  <title>Welcome</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link href="${contextPath}/resources/css/style.css" type="text/css" rel="stylesheet">
</head>

<body class="bg">
<div class="container-fluid">
  <div class="row">
    <div class="col-md-4 col-sm-4 col-xs-12"></div>
    <div class="col-md-4 col-sm-4 col-xs-12">
      <form class="form-container" style="text-align: center">
        <sec:authorize access="isAuthenticated()">
          <h1>${pageContext.request.userPrincipal.name}</h1>
        </sec:authorize>
        <sec:authorize access="!isAuthenticated()">
          <h1>Welcome, stranger</h1>
          <div class="form-group">
            <a href="/login" class="btn btn-block btn-success">Вход</a>
          </div>
          <div class="form-group">
            <a href="/registration" class="btn btn-block btn-success">Регистрация</a>
          </div>
        </sec:authorize>
        <div class="form-group">
          <a href="/query" class="btn btn-primary btn-block">Запросы</a>
        </div>
        <sec:authorize access="hasRole('ROLE_USER')">
          <div class="form-group">
            <a href="/news" class="btn btn-primary btn-block">Новости (только USER)</a>
          </div>
        </sec:authorize>
        <sec:authorize access="hasRole('ROLE_ADMIN')">
          <div class="form-group">
            <a href="/admin" class="btn btn-primary btn-block">Пользователи (только ADMIN)</a>
          </div>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
          <div class="form-group">
            <a href="/logout" class="btn btn-block btn-danger">Выйти</a>
          </div>
        </sec:authorize>
      </form>
    </div>
    <div class="col-md-4 col-sm-4 col-xs-12"></div>
  </div>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous" ></script>
</body>
</html>