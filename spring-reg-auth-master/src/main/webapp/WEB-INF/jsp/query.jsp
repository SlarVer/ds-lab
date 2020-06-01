<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" charset=ISO-8859-1">
    <title>Query</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="${contextPath}/resources/css/style.css" type="text/css" rel="stylesheet">
</head>

<body class="bg">
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <form class="form-container" action="queryprocess" method="post">
                <div class="form-group">
                    <label for="query" class="font">Query</label>
                    <input type="text" class="form-control" id="query" name="query" path="query" placeholder="Enter query">
                </div>
                <button type="submit" class="btn btn-success" id="execute" name="execute">Execute</button>
                <c:choose>
                    <c:when test="${condition=='roster'}">
                        <table class="table-bordered border" align="center">
                            <thead>
                            <tr>
                                <th>Playerid</th>
                                <th>Jersey</th>
                                <th>Fname</th>
                                <th>Sname</th>
                                <th>Position</th>
                                <th>Birthday</th>
                                <th>Weight</th>
                                <th>Height</th>
                                <th>Birthcity</th>
                                <th>Birthstate</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${resultset}" var="row">
                                <tr>
                                    <th>${row.playerid}</th>
                                    <th>${row.jersey}</th>
                                    <th>${row.fname}</th>
                                    <th>${row.sname}</th>
                                    <th>${row.position}</th>
                                    <th>${row.birthday}</th>
                                    <th>${row.weight}</th>
                                    <th>${row.height}</th>
                                    <th>${row.birthcity}</th>
                                    <th>${row.birthstate}</th>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </c:when>
                    <c:when test="${condition=='string'}">
                        <p class="alert alert-danger">${resultset.get(0)}</p>
                    </c:when>
                </c:choose>
            </form>
            <div class="form-group">
                <a href="/" class="btn btn-secondary">Главная</a>
            </div>
        </div>
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