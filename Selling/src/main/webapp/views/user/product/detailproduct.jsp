<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Trang chi tiết sản phẩm</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
	<style>
.cart-item {
	padding-bottom: 20px;
	border-radius: 10px;
	overflow: hidden;
	width: 310px;
}

.quantity {
	display: flex;
	align-items: center;
	gap: 0px;
	background-color: #f2f2f2;
	border-radius: 23px;
}

.decrease-quantity, .increase-quantity {
	margin: 10px;
	border-radius: 3px;
	border: 1px;
}

.item-quantity {
	border-radius: 3px;
	width: 50px;
	border: 1px;
}

.add-to-cart {
	font-size: 14px;
	background-color: #4CAF50;
	color: #fff;
	border: none;
	border-radius: 23px;
	padding: 10px 20px;
	cursor: pointer;
}

/* Accordion */
.accordion-item, .accordion-body {
	border: 0px;
}

.accordion-button {
	position: relative;
	display: flex;
	align-items: center;
	width: 100%;
	font-size: 1rem;
	color: #212529;
	background-color: transparent;
	border: 0px;
	border-radius: 0;
	overflow-anchor: none;
	padding-left: 0px;
}

.accordion-button:focus {
	outline: 0;
	box-shadow: none;
	background-color: transparent;
	border: 0px;
}

.accordion-button:not(.collapsed) {
	color: #012970;
	background-color: transparent;
	border: 0px;
}

.accordion-flush .accordion-button {
	padding: 15px 0;
	background: none;
	border: 0px;
}

.accordion-flush .accordion-button:not(.collapsed) {
	box-shadow: none;
	color: #4154f1;
	border: 0px;
}

.accordion-flush .accordion-body {
	padding: 0 0 15px 0;
	color: transparent;
	font-size: 15px;
}
</style>

	<!-- PRODUCT DETAIL -->
	<div class="container">
		<div class="row">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="listProduct">Home</a></li>
					<li class="breadcrumb-item"><a href="listProduct">Products</a></li>
					<li class="breadcrumb-item active" aria-current="page">Purfume</li>
				</ol>
			</nav>
			<div class="col-lg-6">
				<div id="carouselExampleIndicators" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="${p.imageURL}" class="d-block w-100" alt="Hình ảnh 1">
						</div>
						<div class="carousel-item">
							<img src="${p.imageURL}" class="d-block w-100" alt="Hình ảnh 2">
						</div>
						<div class="carousel-item">
							<img src="${p.imageURL}" class="d-block w-100" alt="Hình ảnh 3">
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Trước</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Tiếp</span>
					</button>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="accordion" id="productDetailsAccordion">
					<h2>${p.productName}</h2>
					<div>
						<p class="review-count" style="margin-bottom: 0px;">12</p>
						<div
							class="product_detail_ratings d-flex justify-content-start align-items-start">
							<div>
								<i class="fa fa-star rating-color"></i> <i
									class="fa fa-star rating-color"></i> <i
									class="fa fa-star rating-color"></i> <i
									class="fa fa-star rating-color"></i> <i class="fa fa-star"></i>
							</div>
							<p style="margin-left: 4px;">Xem tất cả bình luận</p>
						</div>
						<h3 style="padding: 20px 0 20px 0;">${p.price}</h3>
						<div class="cart-item align-items-between row">
							<form action="insertCartItem" method="post">
								<div class="quantity col">

									<button class="btn btn-link px-2"
										onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
										<i class="fas fa-minus"></i>
									</button>


									<input id="form1" min="0" name="quantity"
										value="1" class="form-control text-center" />


									<button class="btn btn-link px-2"
										onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
										<i class="fas fa-plus"></i>
									</button>


								</div>
								<button type="submit" class="add-to-cart col ms-3">
									Thêm vào giỏ hàng</button>

							</form>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="headingOne">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse" data-bs-target="#collapseOne"
								aria-expanded="true" aria-controls="collapseOne"
								onclick="toggleCollapse(1)">Thành phần</button>
						</h2>
						<div id="collapseOne" class="accordion-collapse collapse"
							aria-labelledby="headingOne"
							data-bs-parent="#productDetailsAccordion" style="border: 0px;">
							<div class="accordion-body">AQUA, ALCOHOL DENAT., ALUMINUM
								CHLOROHYDRATE, C12-13 PARETH-9, PROPYLENE GLYCOL,
								HYDROXYETHYLCELLULOSE, BUTYLENE GLYCOL, DISODIUM PHOSPHATE,
								POLYSORBATE 60, SODIUM PHOSPHATE, PARFUM, HEXYL CINNAMAL,
								LIMONENE, LINALOOL, CITRAL</div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="headingTwo">
							<button class="accordion-button" type="button"
								data-bs-toggle="collapse" data-bs-target="#collapseTwo"
								aria-expanded="true" aria-controls="collapseTwo"
								onclick="toggleCollapse(2)">Về nordic waters</button>
						</h2>
						<div id="collapseTwo" class="accordion-collapse collapse"
							aria-labelledby="headingTwo"
							data-bs-parent="#productDetailsAccordion" style="border: 0px;">
							<div class="accordion-body">Thả mình vào làn nước tươi mát
								để các giác quan được bừng tỉnh trong cảm giác sảng khoái đầy mê
								hoặc với các hương nước hoa hương biển Nordic Waters Eau de
								Parfum từ Oriflame.</div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="headingThree">
							<button class="accordion-button" type="button"
								data-bs-toggle="collapse" data-bs-target="#collapseThree"
								aria-expanded="true" aria-controls="collapseThree"
								onclick="toggleCollapse(3)">Phương thức giao hàng</button>
						</h2>
						<div id="collapseThree" class="accordion-collapse collapse"
							aria-labelledby="headingThree"
							data-bs-parent="#productDetailsAccordion" style="border: 0px;">
							<div class="accordion-body">
								<p>Thông tin Giao Nhận Hàng Hóa đối với Khách Hàng VIP</p>

								<p>GIAO TẠI NHÀ POSTAL: thanh toán đơn và chờ nhận hàng tại
									nhà trong vòng 3-5 ngày làm việc (phí giao hàng tại nhà có thể
									khác nhau tùy theo lựa chọn kho giao hàng) GIAO TẠI NHÀ COD (áp
									dụng cho tất cả các tỉnh thành trên toàn quốc): nhận hàng trong
									vòng 1-5 ngày làm việc và thanh toán trực tiếp cho nhân viên
									giao hàng Đơn giao tại nhà Postal hoặc COD có giá trị từ
									499.000 trở lên sẽ được miễn phí giao hàng. Riêng các đơn COD
									có địa chỉ nhận hàng tại các tỉnh thành ngoài TP. HCM, Hà Nội,
									Đà Nẵng, Cần Thơ sẽ có thêm phụ phí thu hộ COD 10.000. GIAO
									NHANH TRONG NGÀY TẠI NHÀ: Áp dụng cho các đơn thanh toán trước
									10:00 AM sáng (trừ ngày Chủ Nhật, Lễ, Tết), sẽ được giao trong
									ngày với phụ phí 10K đối với địa chị nhận hàng tại các quận nội
									thành TP.Hà Nội, Tp.HCM theo danh sách.</p>

								<p>Tỉnh thành</p>
								<p>Địa bàn phát trong ngày Hà Nội Bắc từ liêm , Nam từ liêm
									, Cầu Giấy , Thanh Xuân , Hoàng Mai , Ba Đình , Tây Hồ, Đống đa
									, Long Biên , Hoàn Kiếm, Hà Đông, Hai Bà Trưng Tp.HCM Quận
									1,3,5,6,10,11, Tân Bình, Bình Thạnh, Tân Phú, Phú Nhuận, Gò Vấp</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
		integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
	<!-- Template Main JS File -->
	<script src="/main.js"></script>

</body>

</html>