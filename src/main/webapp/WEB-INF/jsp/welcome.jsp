<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Monitor</title>
    <meta charset="UTF-8">
    <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
          rel="stylesheet">
    <link href="css/custom.css"
          rel="stylesheet">
</head>
<body>
<div class="container">
    <div><h1>Corona data</h1></div>
    <div class="cont">
        <div class="total">
            <div>
                <div><h2>Total Cases</h2></div>
                <div class="word">${total.cases}</div>
            </div>
        </div>
        <div class="total1">
            <div>
                <div><h2>Total Deaths</h2></div>
                <div class="word">${total.deaths}</div>
            </div>
        </div>
        <div class="total2">
            <div>
                <div><h2>Total Recovered</h2></div>
                <div class="word">${total.recovered}</div>
            </div>
        </div>
    </div>
    <table class="table">
        <thead>
        <tr>
            <th>Country</th>
            <th>Cases</th>
            <th>Today Cases</th>
            <th>Deaths</th>
            <th>Today Deaths</th>
            <th>Recovered</th>
            <th>Critical</th>
        </tr>
        </thead>
        
        <tbody>
        <c:forEach items="${responses}" var="res">
            <tr>
                <td>
                    <c:out value="${res.country}"/>
                </td>
                <td>
                    <c:out value="${res.cases}"/>
                </td>
                <td>
                    <c:out value="${res.todayCases}"/>
                </td>
                <td>
                    <c:out value="${res.deaths}"/>
                </td>
                <td>
                    <c:out value="${res.todayDeaths}"/>
                </td>
                <td>
                    <c:out value="${res.recovered}"/>
                </td>
                <td>
                    <c:out value="${res.critical}"/>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    
    <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
</div>
</body>
</html>