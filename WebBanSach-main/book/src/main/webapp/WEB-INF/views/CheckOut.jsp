<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Checkout</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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

        @media (min-width: 1025px) {
            .h-custom {
            height: 100vh !important;
            }
            }
    </style>
</head>


<body>
    <!-- header -->
    <jsp:include page="Header.jsp"></jsp:include>
    </header>



    <section class="h-100 h-custom">
        <div class="container h-100 py-5">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col">
      
              <div class="table-responsive">
                <table class="table">
                  <thead>
                    <tr>
                      <th scope="col" class="h5">Shopping Bag</th>
                      <th scope="col">Category</th>
                      <th scope="col">Quantity</th>
                      <th scope="col">Price</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">
                        <div class="d-flex align-items-center">
                          <img src="${card.image}" class="img-fluid rounded-3"
                            style="width: 120px;" alt="Book">
                          <div class="flex-column ms-4">
                            <p class="mb-2">${card.tenSach}</p>
                            <p class="mb-0">Daniel Kahneman</p>
                          </div>
                        </div>
                      </th>
                      <td class="align-middle">
                        <p class="mb-0" style="font-weight: 500;">Digital</p>
                      </td>
                      <td class="align-middle">
                        <div class="d-flex flex-row">
                          <button class="btn btn-link px-2"
                            onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                            <i class="fas fa-minus"></i>
                          </button>
      
                          <input id="form1" min="0" name="quantity" value="2" type="number"
                            class="form-control form-control-sm" style="width: 50px;" />
      
                          <button class="btn btn-link px-2"
                            onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                            <i class="fas fa-plus"></i>
                          </button>
                        </div>
                      </td>
                      <td class="align-middle">
                        <p class="mb-0" style="font-weight: 500;">$${card.giaSach}</p>
                      </td>
                    </tr>
                    
                  </tbody>
                </table>
              </div>
      
              <div class="card shadow-2-strong mb-5 mb-lg-0" style="border-radius: 16px;">
                <div class="card-body p-4">
      
                  <div class="row">
                    <div class="col-md-6 col-lg-4 col-xl-3 mb-4 mb-md-0">
                      <form>
                        <div class="d-flex flex-row pb-3">
                          <div class="d-flex align-items-center pe-2">
                            <input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel1v"
                              value="" aria-label="..." checked />
                          </div>
                          <div class="rounded border w-100 p-3">
                            <p class="d-flex align-items-center mb-0">
                              <i class="fab fa-cc-mastercard fa-2x text-dark pe-2"></i>Credit
                              Card
                            </p>
                          </div>
                        </div>
                        <div class="d-flex flex-row pb-3">
                          <div class="d-flex align-items-center pe-2">
                            <input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel2v"
                              value="" aria-label="..." />
                          </div>
                          <div class="rounded border w-100 p-3">
                            <p class="d-flex align-items-center mb-0">
                              <i class="fab fa-cc-visa fa-2x fa-lg text-dark pe-2"></i>Debit Card
                            </p>
                          </div>
                        </div>
                        <div class="d-flex flex-row">
                          <div class="d-flex align-items-center pe-2">
                            <input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel3v"
                              value="" aria-label="..." />
                          </div>
                          <div class="rounded border w-100 p-3">
                            <p class="d-flex align-items-center mb-0">
                              <i class="fab fa-cc-paypal fa-2x fa-lg text-dark pe-2"></i>PayPal
                            </p>
                          </div>
                        </div>
                      </form>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-6">
                      <div class="row">
                        <div class="col-12 col-xl-6">
                          <div class="form-outline mb-4 mb-xl-5">
                            <input type="text" id="typeName" class="form-control form-control-lg" siez="17"
                              placeholder="John Smith" />
                            <label class="form-label" for="typeName">Name on card</label>
                          </div>
      
                          <div class="form-outline mb-4 mb-xl-5">
                            <input type="text" id="typeExp" class="form-control form-control-lg" placeholder="MM/YY"
                              size="7" id="exp" minlength="7" maxlength="7" />
                            <label class="form-label" for="typeExp">Expiration</label>
                          </div>
                        </div>
                        <div class="col-12 col-xl-6">
                          <div class="form-outline mb-4 mb-xl-5">
                            <input type="text" id="typeText" class="form-control form-control-lg" siez="17"
                              placeholder="1111 2222 3333 4444" minlength="19" maxlength="19" />
                            <label class="form-label" for="typeText">Card Number</label>
                          </div>
      
                          <div class="form-outline mb-4 mb-xl-5">
                            <input type="password" id="typeText" class="form-control form-control-lg"
                              placeholder="&#9679;&#9679;&#9679;" size="1" minlength="3" maxlength="3" />
                            <label class="form-label" for="typeText">Cvv</label>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-4 col-xl-3">
                      <div class="d-flex justify-content-between" style="font-weight: 500;">
                        <p class="mb-2">Subtotal</p>
                        <p class="mb-2">$23.49</p>
                      </div>
      
                      <div class="d-flex justify-content-between" style="font-weight: 500;">
                        <p class="mb-0">Shipping</p>
                        <p class="mb-0">$2.99</p>
                      </div>
      
                      <hr class="my-4">
      
                      <div class="d-flex justify-content-between mb-4" style="font-weight: 500;">
                        <p class="mb-2">Total (tax included)</p>
                        <p class="mb-2">$26.48</p>
                      </div>
      
                      <button type="button" class="btn btn-primary btn-block btn-lg">
                        <div class="d-flex justify-content-between">
                          <span>Checkout</span>
                          <span>$26.48</span>
                        </div>
                      </button>
      
                    </div>
                  </div>
      
                </div>
              </div>
      
            </div>
          </div>
        </div>
      </section>

    <jsp:include page="Footer.jsp"></jsp:include>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://
