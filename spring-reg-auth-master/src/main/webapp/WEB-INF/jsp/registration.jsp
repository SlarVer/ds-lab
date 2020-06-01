<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" charset=ISO-8859-1">
  <title>Купшыекфешщт</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link href="${contextPath}/resources/css/style.css" type="text/css" rel="stylesheet">
</head>

<body class="bg">
<div class="container-fluid">
  <div class="row">
    <div class="col-md-4 col-sm-4 col-xs-12"></div>
    <div class="col-md-4 col-sm-4 col-xs-12">
      <form:form method="POST" modelAttribute="userForm" class="form-container">
        <h2>Регистрация</h2>
        <div class="form-group">
          <form:input type="text" path="username" placeholder="Username"
                      autofocus="true"></form:input>
        </div>
        <div class="form-group">
          <form:input type="password" path="password" placeholder="Password"></form:input>
        </div>
        <div class="form-group">
          <form:input type="password" path="passwordConfirm"
                      placeholder="Confirm your password"></form:input>
        </div>
        <button type="submit" class="btn btn-success btn-block">Зарегистрироваться</button>
        <div class="form-group">
          <a href="/" class="btn btn-secondary btn-block">Главная</a>
        </div>
      </form:form>
    </div>
    <div class="col-md-4 col-sm-4 col-xs-12"></div>
  </div>
</div>
</body>
</html>