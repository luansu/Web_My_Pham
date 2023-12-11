<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglist.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	rel="stylesheet">
<!-- Core theme CSS (includes Bootstrap)-->

<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/templates/shipper/css/main.css">

<body>
	<main>
		<div class="container d-flex content">
			<div class="d-block left-box"
				style="background-color: rgb(255, 255, 255); width: 180px; float: left;">
				<div class="info p-2 rounded ">
					<img class="image-info"
						href="/assets/tải xuống (1).jpg xuống (1).jpg">
					<div class="content-info">
						<div class="account">${shipper.employeeName}</div>
						<a class="change-account" href="">Sửa hồ sơ</a>
					</div>
				</div>
				<div class="d-flex align-items-start"
					style="padding-left: 40px; padding-top: 20px;">
					<div class="nav flex-column nav-pills me-3" id="v-pills-tab"
						role="tablist" aria-orientation="vertical">
						<button class="nav-link active" id="v-pills-order-tab"
							data-bs-toggle="pill" data-bs-target="#v-pills-order"
							type="button" role="tab" aria-controls="v-pills-order"
							aria-selected="true">Đơn hàng</button>
						<button class="nav-link" id="v-pills-information-tab"
							data-bs-toggle="pill" data-bs-target="#v-pills-information"
							type="button" role="tab" aria-controls="v-pills-information"
							aria-selected="false">Thông tin</button>
					</div>
				</div>
			</div>
			<div class="ms-3 d-flex right-box">
				<div class="tab-content" id="v-pills-tabContent">
					<div class="tab-pane fade show active" id="v-pills-order"
						role="tabpanel" aria-labelledby="v-pills-order-tab" tabindex="0">
						<div class="container-fluid"
							style="background-color: #ffffff; margin-bottom: 20px;">
							<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
								<li class="nav-item col" role="presentation">
									<button class="nav-link active" id="pills-home-tab"
										data-bs-toggle="pill" data-bs-target="#pills-home"
										type="button" role="tab" aria-controls="pills-home"
										aria-selected="true">Tất cả đơn hàng</button>
								</li>
								<li class="nav-item col" role="presentation">
									<button class="nav-link" id="pills-profile-tab"
										data-bs-toggle="pill" data-bs-target="#pills-profile"
										type="button" role="tab" aria-controls="pills-profile"
										aria-selected="false">Đã giao</button>
								</li>
								<li class="nav-item col" role="presentation">
									<button class="nav-link" id="pills-contact-tab"
										data-bs-toggle="pill" data-bs-target="#pills-contact"
										type="button" role="tab" aria-controls="pills-contact"
										aria-selected="false">Đang giao</button>
								</li>
							</ul>
							<!-- TẤT CẢ ĐƠN -->
							<div class="tab-content" id="pills-tabContent">
								<div class="tab-pane fade show active" id="pills-home"
									role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">
									<c:forEach var="i" items="${listorder }">
										<div class="product">
											<div class="product-detail rounded d-flex">
												<div class="content-info ml-2">
													<div class="product-id" href="">${i.orderID }</div>
													<div class="product-category">Ngày đặt hàng:
														${i.orderDate}</div>
												</div>
												<div class="product-money text-center">
													<p>Thành tiền</p>
													<p style="color: rgb(36, 214, 158);">${i.orderValue}đ</p>
												</div>
											</div>
											<div class="product-address d-flex">
												<div class="content-info ml-2 mb-2 justify-content-between">
													<div class="address">Địa chỉ: ${i.customer.address }
													</div>
													<div class="phone">Số điện thoại: ${i.customer.phone }</div>
													<div class="name">Họ và tên:
														${i.customer.customerName }</div>
												</div>
												<div class="product-status text-center">
													<p>Trạng thái</p>
													<p style="color: rgb(19, 220, 39);">${i.paymentStatus }</p>
												</div>
											</div>
											<div class="product-button d-flex">
												<c:if test="${i.orderStatus == 'Đã giao khách hàng' }">
													<button type="button" class="btn btn-success d-flex"
														style="margin-left: 1000px; margin-bottom: 20px;" disabled>Đã giao</button>
												</c:if>
												<c:if test="${i.orderStatus == 'Đã giao cho shipper' }">
													<button type="button" class="btn btn-success d-flex"
														style="margin-left: 1000px; margin-bottom: 20px;" disabled>Đang giao</button>
												</c:if>
											</div>
										</div>
									</c:forEach>
								</div>
								<!-- ĐÃ GIAO HÀNG START-->
								<div class="tab-pane fade" id="pills-profile" role="tabpanel"
									aria-labelledby="pills-profile-tab" tabindex="0">
									<c:forEach var="i" items="${listorderdelivered }">
										<div class="product">
											<div class="product-detail rounded d-flex">
												<div class="content-info ml-2">
													<div class="product-id" href="">${i.orderID }</div>
													<div class="product-category">Ngày đặt hàng:
														${i.orderDate}</div>
												</div>
												<div class="product-money text-center">
													<p>Thành tiền</p>
													<p style="color: rgb(36, 214, 158);">${i.orderValue}đ</p>
												</div>
											</div>
											<div class="product-address d-flex">
												<div class="content-info ml-2 mb-2 justify-content-between">
													<div class="address">Địa chỉ: ${i.customer.address }
													</div>
													<div class="phone">Số điện thoại: ${i.customer.phone }</div>
													<div class="name">Họ và tên:
														${i.customer.customerName }</div>
												</div>
												<div class="product-status text-center">
													<p>Trạng thái</p>
													<p style="color: rgb(19, 220, 39);">${i.paymentStatus }</p>
												</div>
											</div>
											<div class="product-button d-flex">
												<c:if test="${i.orderStatus == 'Đã giao khách hàng' }">
													<button type="button" class="btn btn-success d-flex"
														style="margin-left: 1000px; margin-bottom: 20px;" disabled>Đã giao</button>
												</c:if>
												<c:if test="${i.orderStatus == 'Đã giao cho shipper' }">
													<button type="button" class="btn btn-success d-flex"
														style="margin-left: 1000px; margin-bottom: 20px;" disabled>Đang giao</button>
												</c:if>
											</div>
										</div>
									</c:forEach>
								</div>
								<!-- ĐÃ GIAO HÀNG END-->

								<!-- ĐANG GIAO HÀNG END-->
								<div class="tab-pane fade" id="pills-contact" role="tabpanel"
									aria-labelledby="pills-contact-tab" tabindex="0">
									<c:forEach var="i" items="${listorderdelivering }">
										<div class="product">
											<div class="product-detail rounded d-flex">
												<div class="content-info ml-2">
													<div class="product-id" href="">${i.orderID }</div>
													<div class="product-category">Ngày đặt hàng:
														${i.orderDate}</div>
												</div>
												<div class="product-money text-center">
													<p>Thành tiền</p>
													<p style="color: rgb(36, 214, 158);">${i.orderValue}đ</p>
												</div>
											</div>
											<div class="product-address d-flex">
												<div class="content-info ml-2 mb-2 justify-content-between">
													<div class="address">Địa chỉ: ${i.customer.address }
													</div>
													<div class="phone">Số điện thoại: ${i.customer.phone }</div>
													<div class="name">Họ và tên:
														${i.customer.customerName }</div>
												</div>
												<div class="product-status text-center">
													<p>Trạng thái</p>
													<p style="color: rgb(19, 220, 39);">${i.paymentStatus }</p>
												</div>
											</div>
											<div class="product-button d-flex">
												<c:if test="${i.orderStatus == 'Đã giao khách hàng' }">
													<button type="button" class="btn btn-success d-flex"
														style="margin-left: 1000px; margin-bottom: 20px;" disabled>Đã giao</button>
												</c:if>
												<c:if test="${i.orderStatus == 'Đã giao cho shipper' }">
													<button type="button" class="btn btn-success d-flex"
														style="margin-left: 1000px; margin-bottom: 20px;" disabled>Đang giao</button>
												</c:if>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="v-pills-information" role="tabpanel"
						aria-labelledby="v-pills-profile-information" tabindex="0">
						<div class="edit card-body d-flex align-items-center">
							<div class="image-container col-lg-6 mb-4 mb-lg-0 ">
								<img
									src="https://admin.vov.gov.vn/UploadFolder/KhoTin/Images/UploadFolder/VOVVN/Images/sites/default/files/styles/large/public/2023-07/362289979_838127327678045_2812585588687742762_n.jpg"
									alt="..." class="object-fit-sm-contain">
							</div>
							<div class="col-lg-6 px-xl-10">
								<form action="updateinfor" method="post">
									<div
										class="bg-secondary d-lg-inline-block py-1-9 px-1-9 px-sm-6 mb-1-9 rounded"
										style="margin-top: 20px; margin-left: 140px;">
										<h3 class="h2 text-white text-center mb-0">${shipper.employeeName }</h3>
									</div>
									<ul class="list-unstyled mb-1-9">
										<li class="mb-2 mb-xl-3 d-flex align-items-center "><label
											for="username"
											class="display-26 text-secondary me-2 font-weight-600">Tên
												đăng nhập:</label> <input type="text" name="username"
											class="form-control" disabled value="${username }"></li>
										<li class="mb-2 mb-xl-3 d-flex align-items-center"><label
											for="username"
											class="display-26 text-secondary me-2 font-weight-600">Mã
												nhân viên:</label> <input type="text" name="employeeId"
											class="form-control" readonly="readonly"
											value="${shipper.employeeId }"></li>
										<li class="mb-2 mb-xl-3 d-flex align-items-center"><label
											for="username"
											class="display-26 text-secondary me-2 font-weight-600">Họ
												và tên:</label> <input type="text" name="employeeName"
											class="form-control" value="${shipper.employeeName }">
										</li>
										<li class="mb-2 mb-xl-3 d-flex align-items-center"><label
											for="username"
											class="display-26 text-secondary me-2 font-weight-600">Giới
												tính:</label> <input type="text" name="gender" class="form-control"
											value="${shipper.gender}"></li>
										<li class="mb-2 mb-xl-3 d-flex align-items-center"><label
											for="username"
											class="display-26 text-secondary me-2 font-weight-600">Ngày
												sinh:</label> <input type="text" name="birthdate"
											class="form-control" value="${shipper.birthdate }"></li>
										<li class="mb-2 mb-xl-3 d-flex align-items-center"><label
											for="username"
											class="display-26 text-secondary me-2 font-weight-600">Địa
												chỉ:</label> <input type="text" name="address" class="form-control"
											value="${shipper.address }"></li>
										<li class="mb-2 mb-xl-3 d-flex align-items-center"><label
											for="username"
											class="display-26 text-secondary me-2 font-weight-600">Số
												điện thoại:</label> <input type="text" name="phone"
											class="form-control" value=${shipper.phone }></li>
									</ul>
									<div class="product-button d-flex">
										<button type="submit" class="btn btn-success d-flex"
											style="margin-left: 450px; margin-bottom: 20px;">Lưu
											lại</button>
									</div>
								</form>

							</div>

						</div>
					</div>
				</div>
			</div>
	</main>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
		integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
		crossorigin="anonymous"></script>
</body>

</html>