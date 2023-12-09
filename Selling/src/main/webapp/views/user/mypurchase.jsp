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
					<ul class="nav nav-pills mb-3 bg-light" id="pills-tab" role="tablist">
						<li class="nav-item" role="presentation">
							<button class="nav-link active" id="pills-home-tab"
								data-bs-toggle="pill" data-bs-target="#pills-home" type="button"
								role="tab" aria-controls="pills-home" aria-selected="true">Tất
								cả</button>
						</li>
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="pills-paied-tab"
								data-bs-toggle="pill" data-bs-target="#pills-paied"
								type="button" role="tab" aria-controls="pills-paied"
								aria-selected="false">Đã trả</button>
						</li>
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="pills-give-tab"
								data-bs-toggle="pill" data-bs-target="#pills-give" type="button"
								role="tab" aria-controls="pills-give" aria-selected="false">Gửi
								hàng</button>
						</li>

						<li class="nav-item" role="presentation">
							<button class="nav-link" id="pills-complete-tab"
								data-bs-toggle="pill" data-bs-target="#pills-complete"
								type="button" role="tab" aria-controls="pills-complete"
								aria-selected="false">Hoàn thành</button>
						</li>

						<li class="nav-item" role="presentation">
							<button class="nav-link" id="pills-disabled-tab"
								data-bs-toggle="pill" data-bs-target="#pills-disabled"
								type="button" role="tab" aria-controls="pills-disabled"
								aria-selected="false">Đã Hủy</button>
						</li>
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="pills-return-tab"
								data-bs-toggle="pill" data-bs-target="#pills-return"
								type="button" role="tab" aria-controls="pills-return"
								aria-selected="false">Hoàn lại tiền</button>
						</li>
					</ul>


				<div class="tab-content" id="pills-tabContent">
					<div class="tab-pane fade show active" id="pills-home"
						role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">
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
										class="btn btn-success btn-sm">Đánh Giá</button>
									<button style="margin-right: 20px" type="button"
										class="btn btn-primary btn-sm">Trợ giúp</button>
									<button type="button" class="btn btn-danger btn-sm">Mua
										lại</button>
								</div>
							</div>
						</div>

					</div>
					<div class="tab-pane fade" id="pills-paied" role="tabpanel"
						aria-labelledby="pills-paied-tab" tabindex="0">
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
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="pills-give" role="tabpanel"
						aria-labelledby="pills-give-tab" tabindex="0">
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
										class="btn btn-success btn-sm">Đánh Giá</button>
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
										class="btn btn-success btn-sm">Đánh Giá</button>
									<button style="margin-right: 20px" type="button"
										class="btn btn-primary btn-sm">Trợ giúp</button>
									<button type="button" class="btn btn-danger btn-sm">Mua
										lại</button>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="pills-disabled" role="tabpanel"
						aria-labelledby="pills-disabled-tab" tabindex="0">
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
					</div>
					<div class="tab-pane fade" id="pills-complete" role="tabpanel"
						aria-labelledby="pills-complete-tab" tabindex="0">
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
										class="btn btn-success btn-sm">Đánh Giá</button>
									<button style="margin-right: 20px" type="button"
										class="btn btn-primary btn-sm">Trợ giúp</button>
									<button type="button" class="btn btn-danger btn-sm">Mua
										lại</button>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="pills-return" role="tabpanel"
						aria-labelledby="pills-return-tab" tabindex="0">
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
