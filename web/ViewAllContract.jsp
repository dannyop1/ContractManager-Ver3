<%-- 
    Document   : ViewAllContract
    Created on : Mar 17, 2023, 12:59:20 AM
    Author     : mical
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Dashboard - NiceAdmin Bootstrap Template</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.gstatic.com" rel="preconnect">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
        <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">

        <!-- =======================================================
        * Template Name: NiceAdmin - v2.5.0
        * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
        * Author: BootstrapMade.com
        * License: https://bootstrapmade.com/license/
        ======================================================== -->
    </head>
    <body>
        <header id="header" class="header fixed-top d-flex align-items-center">

            <div class="d-flex align-items-center justify-content-between">
                <a href="MainController?action=getInfo" class="logo d-flex align-items-center">
                    <img src="assets/img/logo.png" alt="">
                    <span class="d-none d-lg-block">ContractM</span>
                </a>
                <i class="bi bi-list toggle-sidebar-btn"></i>
            </div><!-- End Logo -->

            <div class="search-bar">
                <form class="search-form d-flex align-items-center" method="POST" action="#">
                    <input type="text" name="query" placeholder="Search" title="Enter search keyword">
                    <button type="submit" title="Search"><i class="bi bi-search"></i></button>
                </form>
            </div><!-- End Search Bar -->

            <nav class="header-nav ms-auto">
                <ul class="d-flex align-items-center">

                    <li class="nav-item d-block d-lg-none">
                        <a class="nav-link nav-icon search-bar-toggle " href="#">
                            <i class="bi bi-search"></i>
                        </a>
                    </li><!-- End Search Icon-->

                    <li class="nav-item dropdown">

                        <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                            <i class="bi bi-bell"></i>
                            <span class="badge bg-primary badge-number">4</span>
                        </a><!-- End Notification Icon -->

                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
                            <li class="dropdown-header">
                                You have 4 new notifications
                                <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li class="notification-item">
                                <i class="bi bi-exclamation-circle text-warning"></i>
                                <div>
                                    <h4>Lorem Ipsum</h4>
                                    <p>Quae dolorem earum veritatis oditseno</p>
                                    <p>30 min. ago</p>
                                </div>
                            </li>

                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li class="notification-item">
                                <i class="bi bi-x-circle text-danger"></i>
                                <div>
                                    <h4>Atque rerum nesciunt</h4>
                                    <p>Quae dolorem earum veritatis oditseno</p>
                                    <p>1 hr. ago</p>
                                </div>
                            </li>

                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li class="notification-item">
                                <i class="bi bi-check-circle text-success"></i>
                                <div>
                                    <h4>Sit rerum fuga</h4>
                                    <p>Quae dolorem earum veritatis oditseno</p>
                                    <p>2 hrs. ago</p>
                                </div>
                            </li>

                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li class="notification-item">
                                <i class="bi bi-info-circle text-primary"></i>
                                <div>
                                    <h4>Dicta reprehenderit</h4>
                                    <p>Quae dolorem earum veritatis oditseno</p>
                                    <p>4 hrs. ago</p>
                                </div>
                            </li>

                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li class="dropdown-footer">
                                <a href="#">Show all notifications</a>
                            </li>

                        </ul><!-- End Notification Dropdown Items -->

                    </li><!-- End Notification Nav -->

                    <li class="nav-item dropdown">

                        <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                            <i class="bi bi-chat-left-text"></i>
                            <span class="badge bg-success badge-number">3</span>
                        </a><!-- End Messages Icon -->

                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
                            <li class="dropdown-header">
                                You have 3 new messages
                                <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li class="message-item">
                                <a href="#">
                                    <img src="assets/img/messages-1.jpg" alt="" class="rounded-circle">
                                    <div>
                                        <h4>Maria Hudson</h4>
                                        <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                                        <p>4 hrs. ago</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li class="message-item">
                                <a href="#">
                                    <img src="assets/img/messages-2.jpg" alt="" class="rounded-circle">
                                    <div>
                                        <h4>Anna Nelson</h4>
                                        <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                                        <p>6 hrs. ago</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li class="message-item">
                                <a href="#">
                                    <img src="assets/img/messages-3.jpg" alt="" class="rounded-circle">
                                    <div>
                                        <h4>David Muldon</h4>
                                        <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                                        <p>8 hrs. ago</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li class="dropdown-footer">
                                <a href="#">Show all messages</a>
                            </li>

                        </ul><!-- End Messages Dropdown Items -->

                    </li><!-- End Messages Nav -->

                    <li class="nav-item dropdown pe-3">

                        <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                            <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
                            <span class="d-none d-md-block dropdown-toggle ps-2">${sessionScope.admin.fullName}</span>
                        </a><!-- End Profile Iamge Icon -->

                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                            <li class="dropdown-header">
                                <h6>${sessionScope.admin.fullName}</h6>

                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <a class="dropdown-item d-flex align-items-center" href="MainController?action=View+Profile">
                                    <i class="bi bi-person"></i>
                                    <span>My Profile</span>
                                </a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>


                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <form action="MainController" method="post">
                                    <a class="dropdown-item d-flex align-items-center" href="MainController?action=Logout" >
                                        <i class="bi bi-box-arrow-right"></i>
                                        <span>Sign Out</span>
                                    </a>
                                </form>  
                            </li>

                        </ul><!-- End Profile Dropdown Items -->
                    </li><!-- End Profile Nav -->

                </ul>
            </nav><!-- End Icons Navigation -->

        </header><!-- End Header -->

        <!-- ======= Sidebar ======= -->
        <aside id="sidebar" class="sidebar">

            <ul class="sidebar-nav" id="sidebar-nav">

                <li class="nav-item">
                    <a class="nav-link " href="MainController?action=getInfo">
                        <i class="bi bi-grid"></i>
                        <span>Dashboard</span>
                    </a>
                </li><!-- End Dashboard Nav -->









                <li class="nav-heading">Pages</li>

                <li class="nav-item">
                    <a class="nav-link collapsed" href="MainController?action=View+Profile">
                        <i class="bi bi-person"></i>
                        <span>Profile</span>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link collapsed" href="ViewAllUser.jsp">
                        <i class="bi bi-layout-text-window-reverse"></i><span>All user on sever</span>
                    </a>

                </li>

                <li class="nav-item">
                    <a class="nav-link collapsed" href="MainController?action=Search+Contract&durl=ViewAllContract.jsp?userType=A">
                        <i class="bi bi-person"></i>
                        <span>All contract on server</span>
                    </a>
                </li>
                <!-- End Profile Page Nav -->


            </ul>

        </aside><!-- End Sidebar-->

        <main id="main" class="main">

            <div class="pagetitle">
                <h1>Dashboard</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="MainController?action=getInfo">Home</a></li>
                        <li class="breadcrumb-item">All contract on sever</li>
                       

                    </ol>
                </nav>
            </div><!-- End Page Title -->
            <form class="row g-3" action="MainController" method="post">
                <div class="col-lg-2">
                    <label  class="form-label">Contract name</label>     
                    <input class="form-control" type="text" name="txtSearchName" placeholder="Enter contract name"/></div>
                <div class="col-lg-2">
                    <label  class="form-label">Start date</label> 
                    <input class="form-control" type="date" name="txtFromDate" placeholder="Select a date" /></div>
                <div class="col-lg-2">
                    <label  class="form-label">End date</label> 
                    <input class="form-control" type="date" name="txtToDate" placeholder="Select a date"/></div>
                <div class="col-lg-2">
                    <label  class="form-label">Contract status</label> 
                    <select class="form-control" name="txtStatus">
                        <option value="-1" selected="selected">All</option>
                        <option value="0">Not Signed</option>
                        <option value="1">Signed</option>
                        <option value="2">Expired</option>
                    </select></div>
                <div class="col-lg-2">
                    <label  class="form-label">User</label> 
                    <select class="form-control" name="txtUserType">
                        <option value="A" selected="selected">All</option>
                        <option value="C">Customer</option>
                        <option value="R">Resident</option>
                        <option value="O">Owner</option>
                    </select></div>
                <input type="hidden" name="durl" value="ViewAllContract.jsp"/>
                <div class="col-lg-2">
                    <label  class="form-label">Search</label> 
                    <input type="hidden" name="action" value="SearchAllContract"/>
                    <input class="btn btn-primary" type="submit" value="Search Contract"/></div>
            </form><br>
            <div class="col-lg-12">

                            <div class="card">
                                <div class="card-body">
                                    <c:set var="status" value="${requestScope.txtStatus}"/>
                                    <c:if test="${(status == '1')}">
                                    <h5 class="card-title">SIGNED CONTRACT LIST ON SEVER</h5>
                                    </c:if>
                                    <c:if test="${(status == '0')}">
                                    <h5 class="card-title">NOT SIGNED CONTRACT LIST ON SEVER</h5>
                                    </c:if>
                                    <c:if test="${(status == '2')}">
                                    <h5 class="card-title">EXPIRED CONTRACT LIST ON SEVER</h5>
                                    </c:if>
                                    <c:if test="${(status == '-1')}">
                                    <h5 class="card-title">ALL CONTRACT LIST ON SEVER</h5>
                                    </c:if>


                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">ID</th>
                                                <th scope="col">Contract name</th>
                                                <th scope="col">CUSTOMER</th>
                                                <th scope="col">OWNER</th>
                                                <th scope="col">Rental fee</th>
                                                <th scope="col">System fee</th>
                                                <th scope="col">Contract Status</th>
                                            </tr>
                                        </thead>
                                                <tbody>
                                                    <tr>
                                                       
            
            <c:forEach var="contract" varStatus="counter" items="${requestScope.contractList}">
                                                    
                                                    <td>${contract.getCoID()}</td>
                                                    <td>${contract.getName()}</td>
                                                    <td>${contract.getUName()}</td>
                                                    <td>${contract.getOName()}</td>
                                                    <td>${contract.getRentalFee()}</td>
                                                    <td>${contract.getSystemFee()}</td>
                                                    <td>${contract.getStatus()}</td>
               
                                                            </tbody>
            </c:forEach></table></div></div></div>
                                                     
             
        </main>
    </body>
</html>
