<%-- 
    Document   : ContractDetail
    Created on : Mar 15, 2023, 2:11:19 PM
    Author     : mical
--%>



<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Date" %>
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

        <!-- ======= Header ======= -->
        <header id="header" class="header fixed-top d-flex align-items-center">

            <div class="d-flex align-items-center justify-content-between">
                <a href="MainController?action=Find2contracts" class="logo d-flex align-items-center">
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
                            <span class="d-none d-md-block dropdown-toggle ps-2">${sessionScope.user.getFullName()}</span>
                        </a><!-- End Profile Iamge Icon -->

                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                            <li class="dropdown-header">
                                <h6>${sessionScope.user.getFullName()}</h6>

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
                    <a class="nav-link " href="MainController?action=Find2contracts">
                        <i class="bi bi-grid"></i>
                        <span>Dashboard</span>
                    </a>
                </li><!-- End Dashboard Nav -->









                <li class="nav-heading">Pages</li>

                <li class="nav-item">
                    <a class="nav-link collapsed" href="MainController?action=View+Profile">
                        <i class="bi bi-person-badge"></i>
                        <span>Profile</span>
                    </a>
                </li>
                <c:if test="${sessionScope.userType == 'U' || sessionScope.userType == 'O' }">
                    <li class="nav-item">
                        <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
                            <i class="bi bi-layout-text-window-reverse"></i><span>Contract</span><i class="bi bi-chevron-down ms-auto"></i>
                        </a>
                        <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                            <li>
                                <a href="MainController?action=View+Contract">
                                    <i class="bi bi-circle"></i><span>View all contract</span>
                                </a>
                            </li>
                        </c:if>
                        <c:if test="${sessionScope.userType == 'A' || sessionScope.userType == 'B' }">
                            <li class="nav-item">
                                <a class="nav-link collapsed" href="ViewAllUser.jsp">
                                    <i class="bi bi-person-lines-fill"></i><span>All user on sever</span>
                                </a>

                            </li>
                            <c:if test="${sessionScope.userType == 'B' }">
                            <li class="nav-item">
                                <a class="nav-link collapsed" href="AddNewAdmin.jsp">
                                    <i class="bi bi-person-add"></i>
                                    <span>Add new admin</span>
                                </a>
                            </li>
                            </c:if>

                            <li class="nav-item">
                                <a class="nav-link collapsed" href="ViewAllContract.jsp">
                                    <i class="bi bi-layout-text-window-reverse"></i>
                                    <span>All contract on server</span>
                                </a>
                            </li>
                            <c:if test="${sessionScope.userType == 'B' }">
                            <li class="nav-item">
                                <a class="nav-link collapsed" href="AddRoom.jsp">
                                    <i class="bi bi-house-add"></i>
                                    <span>Add room</span>
                                </a>
                            </li>
                            </c:if>




                        </c:if>


                        <c:if test="${sessionScope.userType == 'U'}">
                            <li>
                                <a href="#">
                                    <i class="bi bi-circle"></i><span>Pending contract</span>
                                </a>
                            </li>  
                        </c:if>

                        <c:if test="${sessionScope.userType == 'O'}">
                            <li>
                                <a href="CreateContract.jsp">
                                    <i class="bi bi-circle"></i><span>Create Contract</span>
                                </a>
                            </li>
                        </c:if>

                    </ul>
                </li>
                <!-- End Profile Page Nav -->


            </ul>

        </aside><!-- End Sidebar-->

        <main id="main" class="main">

            <div class="pagetitle">
                <h1>Dashboard</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="MainController?action=Find2contracts">Home</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </nav>
            </div><!-- End Page Title -->
            <!------------------------------------------------------ Start Main ---------------------------------------------------->
            <c:set var="contract" value="${requestScope.contract}"></c:set>
                <section class="section dashboard">
                <jsp:useBean id="current" class="java.util.Date" />
                <div class="row">
                    <div class="col-lg-5">
                        <div class="card">
                            <c:if test="${current.time%6 == 0}"><img src="assets/img/card.jpg" class="card-img-top" alt="..."></c:if>
                            <c:if test="${current.time%6 == 1}"><img src="assets/img/card1.jpg" class="card-img-top" alt="..."></c:if>
                            <c:if test="${current.time%6 == 2}"><img src="assets/img/card2.jpg" class="card-img-top" alt="..."></c:if>
                            <c:if test="${current.time%6 == 3}"><img src="assets/img/card3.jpg" class="card-img-top" alt="..."></c:if>
                            <c:if test="${current.time%6 == 4}"><img src="assets/img/card4.jpg" class="card-img-top" alt="..."></c:if>
                            <c:if test="${current.time%6 == 5}"><img src="assets/img/card5.jpg" class="card-img-top" alt="..."></c:if>
                                <div class="card-body">
                                    <h5 class="card-title">Contract's ID: ${contract.getCoID()}</h5>
                                <p class="card-text"><b>BETWEEN:</b> ${contract.getUName()} and ${contract.getOName()} </p>
                                <p class="card-text"><b>START DATE:</b> ${contract.getCreateDate()}       <b>END DATE:</b> ${contract.getEndDate()}  </p>
                                <p class="card-text"><b>Rental fee:</b> $${contract.getRentalFee()}</p>
                                <p class="card-text"><b>Sign contract: </b> 
                                <form action="MainController" method="post">
                                    <input type="submit" name="action" value="Sign this Contract"/>
                                    <input type="hidden" name="CoID" value="${contract.getCoID()}"/>
                                </form>
                                </p>
                            </div>
                        </div>
                    </div>
                    <c:set var="OID" value="${contract.getOID()}"></c:set>
                    <c:set var="owner" value="${requestScope.owner}"></c:set>
                    <c:set var="UID" value="${contract.getUID()}"></c:set>
                    <c:set var="user" value="${requestScope.user}"></c:set>
                        <div class="col-lg-7" >                     
                            <div class="card">
                                <div class="card-body">
                                    <h2 class="card-title">CONTRACT DETAIL</h2>
                                    <h5><b>THE LESSOR: (Hereinafter referred to as A)</b></h5>
                                    <h5><b>Name</b> ${contract.getOName()}</h5>
                                <h5><b>Nation ID</b> ${owner.getCID()}</h5>
                                <h5><b>Address</b> ${owner.getAddress()}</h5>
                                <h5><b>Phone number</b> ${owner.getPhoneNumber()}</h5><br>
                                <h5><b>THE LESSEE: (Hereinafter referred to as B)</b></h5>
                                <h5><b>Name</b> ${contract.getUName()}</h5>
                                <h5><b>Nation ID:</b> ${user.getCID()}</h5>
                                <h5><b>Address</b> ${user.getAddress()}</h5>
                                <h5><b>Phone number</b> ${user.getPhoneNumber()}</h5><br>
                                <h5><b><span style="color:red;">After discussion, the two parties have mutually agreed to enter into the house lease contract with the following agreement:</span></b></h5><br>
                                <h5><b>ARTICLE 1: THE HOUSE FOR LEASE, PURPOSES OF USE</b></h5>
                                <h5>Party A agrees to lease Party B the whole house at <b>Room ${contract.getRoID()}</b> according to the Certificate of land use rights, ownership of house and other properties associated with the Department of Natural Resources and Environment of Ho Chi Minh City.<br><br></h5>
                                <h5><b>ARTICLE 2: DURATION OF THE LEASE</b></h5>
                                <h5><b>From:</b> ${contract.getCreateDate()}</h5>
                                <h5><b>To:</b> ${contract.getEndDate()}</h5>
                                <h5><b>Rental fee:</b> $${contract.getRentalFee()} /month</h5><br>
                                <h5><b>ARTICLE 3: RESPONSIBILITIES OF PARTY A</b></h5>
                                <h5>- Ensuring and undertaking that the house is owned by Party A, Party A has full rights to lease it.</h5>
                                <h5>- Supporting and creating favorable conditions for Party B to register temporary residence when Party B has a need to register.</h5>
                                <h5>- Receiving the rent in full and on time as agreed</h5><br>
                                <h5><b>ARTICLE 4: RESPONSIBILITIES OF PARTY B</b></h5>
                                <h5>- Using the house for the right purpose as agreed.</h5>
                                <h5>- Being responsible under the law for all activities during the residential period.</h5>
                                <h5>- Paying the rent on time according to the agreed method.</h5><br>
                                <h5><b>ARTICLE 5: UNILATERAL TERMINATION OF THE CONTRACT</b></h5><br>
                                <h5><b>Party A has the right to unilaterally terminate the contract performance when Party B commits any of the following acts:</b></h5>
                                <h5>- Not paying the rent as agreed.<br></h5>
                                <h5>- Deliberately damaging the house.<br></h5>
                                <h5>- Seriously affecting environmental sanitation, fire protection safety, security and order.<br></h5>
                                <h5><b>Party B has the right to unilaterally terminate the lease contract performance when the lessor commits any of the following acts:</b><br></h5>
                                <h5>- Increasing the rent at variance with the agreement.<br></h5>
                                <h5>- Causing difficulties or hindering Party B's business activities during the lease period.<br></h5>
                                <h5>- Issues related to ownership and disputes of the house.</h5><br>
                                <h5><b>ARTICLE 6: CONTRACT TERMINATION</b></h5><br>
                                <h5><b>The contract will be terminated in the following cases:</b></h5>
                                <h5>- The lease term has expired</h5>
                                <h5>- The leased house must be demolished due to serious damage that may make the house collapse or due to the implementation of the State's construction planning.</h5>
                            </div>
                        </div>
                    </div> 
                </div>  


                <!-- End Card with an image on top -->

        </main>
        <!-- End #main --------------------------------------------------------------------------------------------------------------->

        <!-- ======= Footer ======= -->
        <footer id="footer" class="footer">
            <div class="copyright">
                &copy; Copyright <strong><span>Contract Management</span></strong>. All Rights Reserved
            </div>
            <div class="credits">

                Designed by <a href="https://youtube.com">Contract Management team</a>
            </div>
        </footer><!-- End Footer -->

        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/chart.js/chart.umd.js"></script>
        <script src="assets/vendor/echarts/echarts.min.js"></script>
        <script src="assets/vendor/quill/quill.min.js"></script>
        <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
        <script src="assets/vendor/tinymce/tinymce.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>

    </body>
</html>
