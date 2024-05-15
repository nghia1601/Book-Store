<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Admin Page</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="admin">Admin Page</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            
            
        </nav>  
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading"></div>
                            <a class="nav-link" a href="home"><img src="images/xitrum.png" alt="#">
                                <!-- <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div> -->
                                
                            </a>

                            <div class="sb-sidenav-menu-heading">Option</div>
                            <a class="nav-link" href="userlist">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                User List
                            </a>
                            <a class="nav-link" href="admin">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Book List
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">NHOM 5</div>
                        K15DCPM06   
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">User List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="home">Home Page</a></li>
                            <li class="breadcrumb-item active">Tables</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Danh Sách Người Dùng
                                <a href="adduser" type="button" class="btn btn-primary">Thêm Account </a>
                                

                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>ID Account</th>
                                            <th>User Name</th>
                                            <th>Pass Word</th>
                                            <th>Is Admin</th>
                                            <th>Chức Năng</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>ID Account</th>
                                            <th>User Name</th>
                                            <th>Pass Word</th>
                                            <th>Is Admin</th>
                                            <th>Chức Năng</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <!-- <c:if test="${not empty list}"> -->
                                            <c:forEach var="p" items="${list}">
                                                <tr>
                                                    <td>${p.id}</td>
                                                    <td>${p.username}</td>
                                                    <td>${p.password}</td>
                                                    <td>${p.isAdmin}</td> 
                                                    <td>
                                                        <a href="deleteuser?did=${p.id}" type="button" class="btn btn-primary">Xóa</a>
                                                        <a href="edituser?did=${p.id}" type="button" class="btn btn-primary">Sửa</a>
                                                </tr>
                                            </c:forEach>
                                        <!-- </c:if> -->
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted"></div>
                            
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
