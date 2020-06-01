<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" charset=ISO-8859-1">
  <title>Login</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link href="${contextPath}/resources/css/style.css" type="text/css" rel="stylesheet">
</head>

<body class="bg">
<sec:authorize access="isAuthenticated()">
  <% response.sendRedirect("/"); %>
</sec:authorize>
<div class="container-fluid">
  <div class="row">
    <div class="col-md-4 col-sm-4 col-xs-12"></div>
    <div class="col-md-4 col-sm-4 col-xs-12">
      <form method="POST" action="/login" class="form-container">
        <h2>Вход</h2>
        <div class="form-group">
          <label for="username">Username</label>
          <input type="text" name="username" id="username" placeholder="Username"
                 autofocus="true" class="form-control">
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" name="password" id="password" placeholder="Password"
                 class="form-control">
        </div>
        <button type="submit" class="btn btn-success btn-block">Вход</button>
        <div align="center">
          <a href="/login/google">Войти через Google</a>
        </div>
        <div class="form-group">
          <a href="/registration" class="btn btn-secondary btn-block">Регистрация</a>
        </div>
      </form>
    </div>
    <div class="col-md-4 col-sm-4 col-xs-12"></div>
  </div>
</div>

</body>
</html>
