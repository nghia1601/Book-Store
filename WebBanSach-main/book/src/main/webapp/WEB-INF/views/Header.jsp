<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<div class="wrapper">

    <!-- end loader -->
    <div class="sidebar">
        <!-- Sidebar  -->
        <nav id="sidebar">

            <div id="dismiss">
                <i class="fa fa-arrow-left"></i>
            </div>

            <ul class="list-unstyled components">

                <li class="active">
                    <!-- home -->
                    <a href="#">Home</a>
                </li>
                <li>
                    <a href="#sachcode">SÁCH CODE</a>
                </li>
                <li>
                    <a href="#tieuthuyet">TIỂU THUYẾT</a>
                </li>
                <li>
                    <a href="#tutruyen">TỰ TRUYỆN</a>
                </li>
                <li>
                    <a href="#tamly">TÂM LÝ</a>
                </li>
            </ul>

        </nav>
    </div>

    <div id="content">
        <!-- header -->
        <header>
            <!-- header inner -->
            <div class="head_top">
                <div class="header">

                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-lg-3 logo_section">
                                <div class="full">
                                    <div class="center-desk">
                                        <div class="logo">
                                            <!-- home and logo-->
                                            <a href="home"><img src="images/xitrum.png" alt="#"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-9">
                                <form action="login" method="post" class="login-form">
                                    <div class="right_header_info">
                                        <ul>
                                            


                                                <!-- hien icon admin khi dang nhap dung user acmin va co thẻ click vao de truy cap vao trang admin -->
                                                <c:if test="${sessionScope.acc.isAdmin == 1}">
                                                    <li class="menu_iconb">
                                                        <a href="admin"><img style="margin-right: 15px;" src="icon/admin.png" alt="#" />Admin</a>
                                                    </li>

                                                </c:if>
                                                <!-- them session de hien thi da login hay chua -->
                                                <c:if test="${sessionScope.acc == null}">
                                                    
                                                    <li class="menu_iconb">
                                                        <a href="login"><img style="margin-right: 15px;" src="icon/6.png" alt="#" /> Đăng Nhập </a>
                                                    </li>
                                                </c:if>


                                                <!-- them session de hien thi da login hay chua -->
                                                <c:if test="${sessionScope.acc != null}">
                                                    <li class="menu_iconb">
                                                        <a href="#"><img style="margin-right: 15px;" src="icon/6.png" alt="#" />Hello ${sessionScope.acc.username}</a>
                                                    </li>
                                                    

                                                    <li class="menu_iconb">
                                                        <a href="logout"><img style="margin-left: 15px;" src="icon/5.png" alt="#" /> Đăng xuất</a>
                                                    </li>

                                                </c:if>
                                            


                                            <li class="tytyu">
                                                <a href="card"> <img style="margin-right: 15px;" src="icon/2.png" alt="#" /></a>
                                            </li>
                                            

                                            <li>
                                                <button type="button" id="sidebarCollapse">
                                                    <img src="images/menu_icon.png" alt="#" />
                                                </button>
                                            </li>
                                        </ul>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            








                