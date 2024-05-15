<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Detail Page</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <!-- bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- fevicon -->
    <link rel="icon" href="images/fevicon.png" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <style>
        .gallery-wrap .img-big-wrap img {
            height: 450px;
            width: auto;
            display: inline-block;
            cursor: zoom-in;
        }


        .gallery-wrap .img-small-wrap .item-gallery {
            width: 60px;
            height: 60px;
            border: 1px solid #ddd;
            margin: 7px 2px;
            display: inline-block;
            overflow: hidden;
        }

        .gallery-wrap .img-small-wrap {
            text-align: center;
        }
        .gallery-wrap .img-small-wrap img {
            max-width: 100%;
            max-height: 100%;
            object-fit: cover;
            border-radius: 4px;
            cursor: zoom-in;
        }
        .img-big-wrap img{
            width: 100% !important;
            height: auto !important;
        }
    </style>
</head>


<body>
    

    <!-- header -->
    <jsp:include page="Header.jsp"></jsp:include>
    
    </header>
    
    
            <main class="page">
                <section class="shopping-cart dark">
                    <div class="container">
                    <div class="block-heading">
                        <h2>Shopping Cart</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc quam urna, dignissim nec auctor in, mattis vitae leo.</p>
                    </div>
                    <div class="content">
                            <div class="row">
                                <div class="col-md-12 col-lg-8">
                                    <div class="items">
                                        <div class="product">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <img src="images/test.png">
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="info">
                                                        <div class="row">
                                                            <div class="col-md-5 product-name">
                                                                <div class="product-name">
                                                                    <a href="#">Lorem Ipsum dolor</a>
                                                                    <div class="product-info">
                                                                        <div>Display: <span class="value">5 inch</span></div>
                                                                        <div>RAM: <span class="value">4GB</span></div>
                                                                        <div>Memory: <span class="value">32GB</span></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4 quantity">
                                                                <label for="quantity">Quantity:</label>
                                                                <input id="quantity" type="number" value ="1" class="form-control quantity-input">
                                                            </div>
                                                            <div class="col-md-3 price">
                                                                <span>$120</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <img class="img-fluid mx-auto d-block image" src="image/test.png">
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="info">
                                                        <div class="row">
                                                            <div class="col-md-5 product-name">
                                                                <div class="product-name">
                                                                    <a href="#">Lorem Ipsum dolor</a>
                                                                    <div class="product-info">
                                                                        <div>Display: <span class="value">5 inch</span></div>
                                                                        <div>RAM: <span class="value">4GB</span></div>
                                                                        <div>Memory: <span class="value">32GB</span></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4 quantity">
                                                                <label for="quantity">Quantity:</label>
                                                                <input id="quantity" type="number" value ="1" class="form-control quantity-input">
                                                            </div>
                                                            <div class="col-md-3 price">
                                                                <span>$120</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <img class="img-fluid mx-auto d-block image" src="image/test.png">
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="info">
                                                        <div class="row">
                                                            <div class="col-md-5 product-name">
                                                                <div class="product-name">
                                                                    <a href="#">Lorem Ipsum dolor</a>
                                                                    <div class="product-info">
                                                                        <div>Display: <span class="value">5 inch</span></div>
                                                                        <div>RAM: <span class="value">4GB</span></div>
                                                                        <div>Memory: <span class="value">32GB</span></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4 quantity">
                                                                <label for="quantity">Quantity:</label>
                                                                <input id="quantity" type="number" value ="1" class="form-control quantity-input">
                                                            </div>
                                                            <div class="col-md-3 price">
                                                                <span>$120</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 col-lg-4">
                                    <div class="summary">
                                        <h3>Summary</h3>
                                        <div class="summary-item"><span class="text">Subtotal</span><span class="price">$360</span></div>
                                        <div class="summary-item"><span class="text">Discount</span><span class="price">$0</span></div>
                                        <div class="summary-item"><span class="text">Shipping</span><span class="price">$0</span></div>
                                        <div class="summary-item"><span class="text">Total</span><span class="price">$360</span></div>
                                        <button type="button" class="btn btn-primary btn-lg btn-block">Checkout</button>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </div>
            </section>
        </main>
    <jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>
