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
                        <h1 class="mt-4">Book Edit</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="home">Home Page</a></li>
                            <li class="breadcrumb-item active"></li>
                        </ol>
                        <form action="editbook" method="post">
                            <table>
                                <tr>
                                    <td>ID Sách: </td>
                                    <td><input value="${detail.idSach}" type="text" name="idSach" readonly></td>
                                </tr>
                                
                                <tr>
                                    <td>Tên Sách</td>
                                    <td><input value="${detail.tenSach}"  type="text" name="tenSach"></td>
                                </tr>
                                
                                <tr>
                                    
                                    
                                    <label>Chọn Loại Sách: </label>
                                    <select name="idLoai" >
                                        <c:forEach items="${listC}" var="c">
                                            <option  value="${c.idLoai}">${c.tenLoai}</option>
                                        </c:forEach>
                                    </select>
                                
                                </tr>
                                <tr>
                                    <td>Giá Sách</td>
                                    <td><input value="${detail.giaSach}" type="text" name="giaSach"></td>
                                </tr>
                                <tr>
                                    <td>Mô Tả</td>
                                    <td><textarea cols="30" rows="10" name="moTa">${detail.moTa}</textarea></td>
                                </tr>
                                
                                <tr>
                                    <td>Hình Ảnh</td>
                                    <td><input value="${detail.image}" type="text" name="image"></td>
                                </tr>
                                <tr>
                                    <td><input type="submit" value="Save"></td>
                                    <td><a href="admin">Cancel</a></td>
                                </tr>
                            </table>
                        </form>
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
