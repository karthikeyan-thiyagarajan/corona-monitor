<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0, shrink-to-fit=yes" name="viewport">
    <title>Corona Monitor</title>
    <!-- plugins:css -->
    <link href="vendors/ti-icons/css/themify-icons.css" rel="stylesheet">
    <link href="vendors/base/vendor.bundle.base.css" rel="stylesheet">
    <!-- endinject -->
    <!-- plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link href="css/style.css" rel="stylesheet">
    <!-- endinject -->
    <link href="images/favicon.png" rel="shortcut icon"/>
</head>
<body>
<div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-md-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
            <a class="navbar-brand brand-logo mr-5" href="https://github.com/karthikeyan-thiyagarajan"><img alt="logo"
                                                                                                            class="mr-2"
                                                                                                            src="images/logo.png"/></a>
            <a class="navbar-brand brand-logo-mini" href="https://github.com/karthikeyan-thiyagarajan"><img alt="logo"
                                                                                                            src="images/logo-mini.png"/></a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end"
             style="background-color: #343f53;">
            <button class="navbar-toggler navbar-toggler align-self-center" data-toggle="minimize" type="button">
                <span class="ti-view-list"></span>
            </button>
            <ul class="navbar-nav mr-lg-2">
                <li class="nav-item nav-search d-none d-lg-block">
                    <div class="input-group">
                        <div class="input-group-prepend hover-cursor" id="navbar-search-icon">
                <span class="input-group-text" id="search">
                  <i class="ti-search"></i>
                </span>
                        </div>
                        <input aria-describedby="search" aria-label="search" class="form-control"
                               id="navbar-search-input"
                               placeholder="Search now" type="text">
                    </div>
                </li>
            </ul>
            <ul class="navbar-nav navbar-nav-right">
                <li class="nav-item dropdown mr-1">
                    <a class="nav-link count-indicator dropdown-toggle d-flex justify-content-center align-items-center"
                       data-toggle="dropdown" href="#" id="messageDropdown">
                        <i class="ti-email mx-0"></i>
                    </a>
                    <div aria-labelledby="messageDropdown" class="dropdown-menu dropdown-menu-right navbar-dropdown">
                        <p class="mb-0 font-weight-normal float-left dropdown-header">Messages</p>
                    
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link count-indicator dropdown-toggle" data-toggle="dropdown" href="#"
                       id="notificationDropdown">
                        <i class="ti-bell mx-0"></i>
                        <span class="count"></span>
                    </a>
                    <div aria-labelledby="notificationDropdown"
                         class="dropdown-menu dropdown-menu-right navbar-dropdown">
                        <p class="mb-0 font-weight-normal float-left dropdown-header">Notifications</p>
                    </div>
                </li>
            </ul>
            <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" data-toggle="offcanvas"
                    type="button">
                <span class="ti-view-list"></span>
            </button>
        </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar" style="background-color: #343f53;">
            <ul class="nav">
                <li class="nav-item">
                    <a class="nav-link" href="/">
                        <i class="ti-shield menu-icon"></i>
                        <span class="menu-title">Dashboard</span>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper" style="background-color: #262d3c;">
                <div class="row">
                    <div class="col-md-12 grid-margin">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h3 class="font-weight-bold mb-0" style="color: #fff;">Corona Dashboard</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sub-headings">
                    <h4>Overall Cases : </h4>
                </div>
                <div class="row">
                    <div class="col-md-4 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <p class="card-title text-md-center text-xl-left">Total Cases</p>
                                <div class="d-flex flex-wrap justify-content-between justify-content-md-center justify-content-xl-between align-items-center">
                                    <h3 class="mb-0 mb-md-2 mb-xl-0 order-md-1 order-xl-0" id="tot-case">
                                        ${total.cases}</h3>
                                    <i class="ti-calendar icon-md text-muted mb-0 mb-md-3 mb-xl-0"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <p class="card-title text-md-center text-xl-left">Total Deaths</p>
                                <div class="d-flex flex-wrap justify-content-between justify-content-md-center justify-content-xl-between align-items-center">
                                    <h3 class="mb-0 mb-md-2 mb-xl-0 order-md-1 order-xl-0" id="tot-death"
                                        style="color:red;">
                                        ${total.deaths}</h3>
                                    <i class="ti-user icon-md text-muted mb-0 mb-md-3 mb-xl-0"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <p class="card-title text-md-center text-xl-left">Total Recovered</p>
                                <div class="d-flex flex-wrap justify-content-between justify-content-md-center justify-content-xl-between align-items-center">
                                    <h3 class="mb-0 mb-md-2 mb-xl-0 order-md-1 order-xl-0" id="tot-rec"
                                        style="color:green;">
                                        ${total.recovered}</h3>
                                    <i class="ti-agenda icon-md text-muted mb-0 mb-md-3 mb-xl-0"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sub-headings">
                    <h4>India Cases : </h4>
                </div>
                <div class="row">
                    <div class="col-md-4 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <p class="card-title text-md-center text-xl-left">Total Cases</p>
                                <div class="d-flex flex-wrap justify-content-between justify-content-md-center justify-content-xl-between align-items-center">
                                    <h3 class="mb-0 mb-md-2 mb-xl-0 order-md-1 order-xl-0" id="ind-case">
                                        ${india.cases}</h3>
                                    <i class="ti-calendar icon-md text-muted mb-0 mb-md-3 mb-xl-0"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <p class="card-title text-md-center text-xl-left">Total Deaths</p>
                                <div class="d-flex flex-wrap justify-content-between justify-content-md-center justify-content-xl-between align-items-center">
                                    <h3 class="mb-0 mb-md-2 mb-xl-0 order-md-1 order-xl-0" id="ind-death"
                                        style="color:red;">
                                        ${india.deaths}</h3>
                                    <i class="ti-user icon-md text-muted mb-0 mb-md-3 mb-xl-0"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <p class="card-title text-md-center text-xl-left">Total Recovered</p>
                                <div class="d-flex flex-wrap justify-content-between justify-content-md-center justify-content-xl-between align-items-center">
                                    <h3 class="mb-0 mb-md-2 mb-xl-0 order-md-1 order-xl-0" id="ind-rec"
                                        style="color:green;">
                                        ${india.recovered}</h3>
                                    <i class="ti-agenda icon-md text-muted mb-0 mb-md-3 mb-xl-0"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <div>
                                    <p class="card-title">Global Vs India Comaparison</p>
                                    <div class="chartjs-legend mt-4 mb-2" id="sales-legend"></div>
                                    <canvas id="sales-chart"></canvas>
                                </div>
                                <div class="card border-right-0 border-left-0 border-bottom-0">
                                    <div class="d-flex justify-content-center justify-content-md-end"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <div>
                                    <div style="display:none;">
                                        <h3 id="ind-today-case">${india.todayCases}</h3>
                                        <h3 id="ind-today-death">${india.todayDeaths}</h3>
                                        <h3 id="ind-active">${india.active}</h3>
                                    </div>
                                    <p class="card-title">India </p>
                                    <div class="col-md-6 mt-3 col-xl-5" style="height: 300px;">
                                        <canvas id="north-america-chart"></canvas>
                                        <div id="north-america-legend"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                
                </div>
                <div class="row"></div>
                <div class="row">
                    <div class="col-md-12 grid-margin stretch-card">
                        <div class="card position-relative">
                            <div class="card-body">
                                <p class="card-title">Detailed Reports</p>
                                <div class="row">
                                    <div class="col-md-12 col-xl-12">
                                        <div class="row">
                                            <div class="col-md-12 col-xl-12">
                                                <div class="table-responsive mb-10 mb-md-0">
                                                    <table class="table table-borderless report-table">
                                                        <thead>
                                                        <tr style="color: burlywood;">
                                                            <th>Country</th>
                                                            <th>Cases</th>
                                                            <th>Deaths</th>
                                                            <th>Recovered</th>
                                                            <th>Today Cases</th>
                                                            <th>Today Deaths</th>
                                                            <th>Critical</th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach items="${responses}" var="res">
                                                            <tr style="color: teal;">
                                                                <td class="text-muted">
                                                                    <c:out value="${res.country}"/>
                                                                </td>
                                                                <!--<td class="w-100 px-0">
                                                                    <div class="progress progress-md mx-4">
                                                                        <div class="progress-bar bg-primary"
                                                                             role="progressbar" style="width: 70%"
                                                                             aria-valuenow="(${res.cases}/${total.cases})*100"
                                                                             aria-valuemin="0"
                                                                             aria-valuemax="100"></div>
                                                                    </div>
                                                                </td>-->
                                                                <td>
                                                                    <h5 class="font-weight-bold mb-0">
                                                                        <c:out value="${res.cases}"/>
                                                                    </h5>
                                                                </td>
                                                                <td>
                                                                    <h5 class="font-weight-bold mb-0">
                                                                        <c:out value="${res.deaths}"/>
                                                                    </h5>
                                                                </td>
                                                                <td>
                                                                    <h5 class="font-weight-bold mb-0">
                                                                        <c:out value="${res.recovered}"/>
                                                                    </h5>
                                                                </td>
                                                                <td>
                                                                    <h5 class="font-weight-bold mb-0">
                                                                        <c:out value="${res.todayCases}"/>
                                                                    </h5>
                                                                </td>
                                                                <td>
                                                                    <h5 class="font-weight-bold mb-0">
                                                                        <c:out value="${res.todayDeaths}"/>
                                                                    </h5>
                                                                </td>
                                                                <td>
                                                                    <h5 class="font-weight-bold mb-0">
                                                                        <c:out value="${res.critical}"/>
                                                                    </h5>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
            <!-- partial:partials/_footer.html -->
            <footer class="footer">
                <div class="d-sm-flex justify-content-center justify-content-sm-between">
                    <span></span>
                    <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Karthikeyan Thiyagarajan <i
                            class="ti-heart text-danger ml-1"></i></span>
                </div>
            </footer>
            <!-- partial -->
        </div>
        <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->

<!-- plugins:js -->
<script src="vendors/base/vendor.bundle.base.js"></script>
<!-- endinject -->
<!-- Plugin js for this page-->
<script src="vendors/chart.js/Chart.min.js"></script>
<!-- End plugin js for this page-->
<!-- inject:js -->
<script src="js/off-canvas.js"></script>
<script src="js/hoverable-collapse.js"></script>
<script src="js/template.js"></script>
<script src="js/todolist.js"></script>
<!-- endinject -->
<!-- Custom js for this page-->
<script src="js/dashboard.js"></script>
<!-- End custom js for this page-->
</body>

</html>