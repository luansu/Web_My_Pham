<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đơn mua</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/templates/user/css/stylemypurchase.css">
</head>
<body>

	<!-- content -->
	<div class="container">
		<div class="user__list">
			<div class="mb-3 user__id">
				<img
					src="https://down-vn.img.susercontent.com/file/a9455e3e363b43ff11f546fd2332bd39_tn"
					alt="ảnh hồ sơ">
				<p>lananh113388</p>
			</div>
			<ul class="list-group">
				<!-- Default dropend button -->
				<div class="btn-group dropend">
					<li type="button"
						class="list-group-item list-group-item-action list-group-item-primary"
						data-bs-toggle="dropdown" aria-expanded="false"><i
						class="fas fa-user"></i>Tài khoản của tôi</li>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item list-group-item-success" href="#"><i
								class="fas fa-user"></i>Hồ sơ</a></li>
						<li><a class="dropdown-item list-group-item-secondary"
							href="#"><i class="fas fa-address-book"></i>Địa chỉ</a></li>
					</ul>
				</div>

				<li
					class="list-group-item list-group-item-action list-group-item-secondary"><i
					class="fas fa-shopping-cart"></i>Đơn mua</li>
				<li
					class="list-group-item list-group-item-action list-group-item-success"><i
					class="fas fa-bell"></i> Thông báo</li>
				<li
					class="list-group-item list-group-item-action list-group-item-primary"><i
					class="fas fa-gift"></i>Giỏ hàng</li>
				<li
					class="list-group-item list-group-item-action list-group-item-danger"><i
					class="fas fa-gift"></i>Kho Voucher</li>
			</ul>

		</div>
		<div class="user-details">
			<div class="user-details-title">

				<nav class="navbar navbar-expand-lg navbar-light bg-light">
					<div class="collapse navbar-collapse" id="navbarNav">
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link" href="#">Tất cả</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Đã trả</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Gửi
									hàng</a></li>
							<li class="nav-item"><a class="nav-link"" href="#">Hoàn
									thành</a></li>
							<li class="nav-item"><a class="nav-link-action" href="#">Đã hủy</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Hoàn
									lại tiền</a></li>
						</ul>
					</div>
				</nav>

				<div class="search">
					<div class="row justify-content-center">
						<div class="col-30 col-md-30 col-lg-15">
							<form class="card card-sm">
								<div class="card-body row no-gutters align-items-center">
									<div class="col-auto">
										<i class="fas fa-search h4 text-body"></i>
									</div>
									<!--end of col-->
									<div class="col-md">
										<input class="form-control" type="search"
											placeholder="Nhập đơn hàng bạn cần tìm">
									</div>
									<!--end of col-->
									<div class="col-auto">
										<button class="btn btn-success" type="submit">Tìm
											kiếm</button>
									</div>
									<!--end of col-->
								</div>
							</form>
						</div>
						<!--end of col-->
					</div>
				</div>
				<div style="margin-top: 10px" class="parent list-iteam">
					<div class="d-flex align-items-center mb-5">
						<div class="flex-shrink-0">
							<img
								src="https://media-cdn.oriflame.com/productImage?externalMediaId=product-management-media%2F42519%2F42519.png%3Fversion%3D1605800700&w=720&bc=%23f5f5f5&ib=%23f5f5f5&h=720&q=70"
								class="img-fluid" style="width: 150px;"
								alt="Generic placeholder image">
						</div>
						<div class="flex-grow-1 ms-3">
							<h5 class="text-primary">Rose Nectar Hand & Body Wash</h5>
							<h6 style="color: #9e9e9e;">Số lượng: 2</h6>
							<div class="d-flex align-items-center">
								<p class="fw-bold mb-0 me-5 pe-3">Tổng: 789$</p>
							</div>
						</div>
						<div class=" child ms-auto d-flex">
							<button style="margin-right: 20px" type="button"
								class="btn btn-primary btn-sm">Trợ giúp</button>
							<button type="button" class="btn btn-danger btn-sm">Mua
								lại</button>
						</div>
					</div>
				</div>
				<div style="margin-top: 10px" class="parent list-iteam">
					<div class="d-flex align-items-center mb-5">
						<div class="flex-shrink-0">
							<img
								src="https://media-cdn.oriflame.com/productImage?externalMediaId=product-management-media%2F40788%2F40788.png%3Fversion%3D1643101200&w=720&bc=%23f5f5f5&ib=%23f5f5f5&h=720&q=70"
								class="img-fluid" style="width: 150px;"
								alt="Generic placeholder image">
						</div>
						<div class="flex-grow-1 ms-3">
							<h5 class="text-primary">Nuit Eau de Parfum for her</h5>
							<h6 style="color: #9e9e9e;">Số lượng: 1</h6>
							<div class="d-flex align-items-center">
								<p class="fw-bold mb-0 me-5 pe-3">Tổng: 69$</p>
							</div>
						</div>
						<div class=" child ms-auto d-flex">
							<button style="margin-right: 20px" type="button"
								class="btn btn-primary btn-sm">Trợ giúp</button>
							<button type="button" class="btn btn-danger btn-sm">Mua
								lại</button>
						</div>
					</div>
				</div>

			</div>

		</div>


	</div>

	</div>

	<!-- end content -->


	<!-- Link to Bootstrap JS (make sure to include Bootstrap in your project) -->
	<script src="path/to/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>
