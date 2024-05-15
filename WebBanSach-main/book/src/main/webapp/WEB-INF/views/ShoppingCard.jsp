<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
	<%@ taglib uri="jakarta.tags.core" prefix="c" %>
		<!DOCTYPE html>
		<html>

		<head>
			<title>Shopping Cart</title>

			<!-- basic -->
			<meta charset="utf-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<!-- mobile metas -->
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<meta name="viewport" content="initial-scale=1, maximum-scale=1">

			<meta name="keywords" content="">
			<meta name="description" content="">
			<meta name="author" content="">
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
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
				media="screen">

		</head>


		<body>
			<!-- header -->
			<jsp:include page="Header.jsp"></jsp:include>
			</header>


			<section class="pt-5 pb-5">
				<div class="container">
					<div class="row w-100">
						<div class="col-lg-12 col-md-12 col-12">
							<h3 class="display-5 mb-2 text-center">Shopping Cart</h3>
							<p class="mb-5 text-center">
								<i class="text-info font-weight-bold">3</i> items in your cart
							</p>
							<table id="shoppingCart" class="table table-condensed table-responsive">
								<thead>
									<tr>
										<th style="width:60%">Tên Sách</th>
										<th style="width:12%">Giá</th>
										<th style="width:10%">Số Lượng</th>
										<th style="width:16%">Chức Năng</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td data-th="Product">
											<div class="row">
												<div class="col-md-3 text-left">
													<img src="${card.image}" alt=""
														class="img-fluid d-none d-md-block rounded mb-2 shadow ">
												</div>
												<div class="col-md-9 text-left mt-sm-2">
													<h4>${card.tenSach}</h4>
													<p class="font-weight-light">${card.moTa}</p>
												</div>
											</div>
										</td>
										<td data-th="Price">$${card.giaSach}</td>
										<td data-th="Quantity">
											<input type="number" name="num"
												class="form-control form-control-lg text-center" value="1">
										</td>
										<td class="actions" data-th="">
											<a href="http://localhost:8080/book/card" type="button"
												class="btn btn-danger">Xóa</a>
											<a href="" type="button" class="btn btn-danger">Cập Nhật</a>
										</td>
									</tr>


								</tbody>
							</table>
							<!-- <div class="float-right text-right">
                    <h4>Tổng:</h4>
                    <h1>$${card.giaSach}</h1>
                </div> -->
						</div>
					</div>
					<div class="card-body p-4">

						<div class="row">
							<div class="col-md-6 col-lg-4 col-xl-3 mb-4 mb-md-0">
								<form>
									<div class="d-flex flex-row pb-3">
										<div class="d-flex align-items-center pe-2">
											<input class="form-check-input" type="radio" name="shippingMethod"
												id="shippingMethod1" value="giaohangtieukiem" aria-label="..."
												checked />
										</div>
										<div class="rounded border w-100 p-3">
											<p class="d-flex align-items-center mb-0">
												<i class=""></i>Giao hàng tiết kiệm
											</p>
										</div>
									</div>
									<div class="d-flex flex-row pb-3">
										<div class="d-flex align-items-center pe-2">
											<input class="form-check-input" type="radio" name="shippingMethod"
												id="shippingMethod2" value="giaohangsiunhanh" aria-label="..." />
										</div>
										<div class="rounded border w-100 p-3">
											<p class="d-flex align-items-center mb-0">
												<i class=""></i>Giao Hàng Siêu Nhanh
											</p>
										</div>
									</div>
								</form>
							</div>
							<div class="col-md-6 col-lg-4 col-xl-6">
								<div class="row">
									<div class="col-12 col-xl-6">
										<div class="form-outline mb-4 mb-xl-5">
											<input type="text" id="typeName" class="form-control form-control-lg"
												size="17" placeholder="tên bạn" />
											<label class="form-label" for="typeName">Họ Và Tên</label>
										</div>

										<div class="form-outline mb-4 mb-xl-5">
											<input type="text" id="typeExp" class="form-control form-control-lg"
												placeholder="" size="20" id="địa chỉ bạn muốn nhận hàng"
												minlength="20" maxlength="20" />
											<label class="form-label" for="typeExp">Địa Chỉ</label>
										</div>
									</div>
									<div class="col-12 col-xl-6">
										<div class="form-outline mb-4 mb-xl-5">
											<input type="text" id="typeText" class="form-control form-control-lg"
												size="17" placeholder="sdt..." minlength="19" maxlength="19" />
											<label class="form-label" for="typeText">Số Điện Thoại</label>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-xl-3">
								<div class="d-flex justify-content-between" style="font-weight: 500;">
									<p class="mb-2">Giá Sách: </p>
									<p id="bookPrice" class="mb-2">$${card.giaSach}</p>
								</div>

								<div class="d-flex justify-content-between" style="font-weight: 500;">
									<p class="mb-0">Giá Ship</p>
									<p id="shippingCost" class="mb-0">$2.99</p>
								</div>

								<hr class="my-4">

								<div class="d-flex justify-content-between mb-4" style="font-weight: 500;">
									<p class="mb-2">Tổng Tiền</p>
									<p id="totalPrice" class="mb-2">$26.48</p>
								</div>

							</div>
						</div>
						<div class="row mt-4 d-flex align-items-center">
							<div class="col-sm-6 order-md-2 text-right">
								<a id="checkoutButton" onclick="checkout()" href="product" class="btn btn-danger mb-4 btn-lg pl-5 pr-5">Checkout</a>
							</div>
							<div class="col-sm-6 mb-3 mb-m-1 order-md-1 text-md-left">
								<a type="button" class="btn btn-danger" href="product">Tiếp Tục Mua</a>
							</div>
						</div>
					</div>
			</section>

			<jsp:include page="Footer.jsp"></jsp:include>
		</body>
		<script>
			function checkout() {
				// Load lại trang product
				window.location.href = "product";
	
				// Hiển thị thông báo thành công
				alert("Bạn đã đặt hàng thành công!");
			}
		</script>
		<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		<script>
			// Lắng nghe sự kiện khi người dùng thay đổi phương thức vận chuyển
			document.querySelectorAll('input[name="shippingMethod"]').forEach(function (radio) {
				radio.addEventListener('change', function () {
					updateShippingCost(this.value); // Gọi hàm để cập nhật giá ship và tổng tiền
				});
			});

			function updateShippingCost(method) {
				var shippingCost = 0;

				// Xác định giá ship dựa trên phương thức vận chuyển
				if (method === "giaohangtieukiem") {
					shippingCost = 2; // Giá ship cho giao hàng tiết kiệm là 2$
				} else if (method === "giaohangsiunhanh") {
					shippingCost = 5; // Giá ship cho giao hàng siêu nhanh là 5$
				}

				// Cập nhật giá ship lên giao diện
				document.getElementById('shippingCost').innerText = '$' + shippingCost;

				// Cập nhật tổng tiền (giá sách + giá ship)
				var bookPrice = parseFloat(document.getElementById('bookPrice').innerText.substring(1)); // Lấy giá sách
				var totalPrice = bookPrice + shippingCost; // Tính tổng tiền
				document.getElementById('totalPrice').innerText = '$' + totalPrice;
			}
		</script>

		</html>