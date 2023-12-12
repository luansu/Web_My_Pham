<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglist.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>

<body>



	<section style="background-color: #eee;">
		<div class="container py-5">
			<div class="row">
				<div class="col">
					<nav aria-label="breadcrumb" class="bg-light rounded-3 p-3 mb-4">
						<ol class="breadcrumb mb-0">
							<li class="breadcrumb-item active" aria-current="page">Chi
								tiết thông tin Seller</li>
						</ol>
					</nav>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4">
					<div class="card mb-4">
						<div class="card-body text-center">
							<img
								src="https://scontent.fhan4-1.fna.fbcdn.net/v/t39.30808-6/339908861_207526681891832_1233331276264573363_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=9c7eae&_nc_eui2=AeFJ4anPj9NtC_ZXyKQgLXW8YbiVsfA75rBhuJWx8DvmsBnd5OhM8q4r_k68Qy8JcoAD3jsoMp5iaPTcmvmLo366&_nc_ohc=X_NqlIZxBAQAX9lGWSj&_nc_ht=scontent.fhan4-1.fna&oh=00_AfCH2dwqPlm-gRAt-5_iDz7hztkGSsatp6sakGwYAHo-Zg&oe=65794A90"
								alt="avatar" class="rounded-circle img-fluid"
								style="width: 150px;">
							<h5 class="my-3">${seller.employeeName}</h5>
							<p class="text-muted mb-4">
								ID: <span style="color: Blue">1123</span>
							</p>
							<form action="listseller" method="get">
								<div class="d-flex justify-content-center mb-2">
									<button type="button" class="btn btn-danger">Cập nhật</button>
									<a href="listseller"><button type="button"
											class="btn btn-primary ms-1">Quay lại</button></a>
								</div>
							</form>

						</div>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="card mb-4">
						<div class="card-body">
							<div class="row">
								<div class="col-sm-3">
									<label for="employeeName" class="mb-0">Họ tên</label>
								</div>
								<div class="col-sm-9">
									<input type="text" id="employeeName" class="form-control"
										value="${seller.employeeName}">
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<label for="email" class="mb-0">Email</label>
								</div>
								<div class="col-sm-9">
									<input type="email" id="email" class="form-control"
										value="${seller.mail}">
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<label for="phone" class="mb-0">Số điện thoại</label>
								</div>
								<div class="col-sm-9">
									<input type="tel" id="phone" class="form-control"
										value="${seller.phone}">
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<label for="birthdate" class="mb-0">Ngày sinh</label>
								</div>
								<div class="col-sm-9">
									<input type="date" id="birthdate" class="form-control"
										value="${seller.birthdate}">
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<label for="gender" class="mb-0">Giới tính</label>
								</div>
								<div class="col-sm-9">
									<input type="text" id="gender" class="form-control"
										value="${seller.gender}">
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<label for="address" class="mb-0">Địa chỉ</label>
								</div>
								<div class="col-sm-9">
									<input type="text" id="address" class="form-control"
										value="${seller.address}">
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-20">
							<div class="card mb-4 mb-md-0">
								<div class="card-body">
									<p class="mb-4">
										<span class="text-primary font-italic me-1"
											style="font-weight: bold">Tình Trạng Đơn Hàng</span>
									</p>
									<p class="mb-1" style="font-size: .77rem; font-size: 16px;">
										Tổng đơn đã bán: <span style="color: #007bff;"> 230</span>
									</p>

									<p class="mt-4 mb-1"
										style="font-size: .77rem; font-size: 16px;">
										Tổng đơn hủy: <span style="color: #007bff;"> 12</span>
									</p>


								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>