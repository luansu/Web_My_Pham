<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thông tin người dùng</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/templates/user/css/style.css">
</head>
<body>


	<!-- content -->
	<div class="container">
		<div class="user__list">
			<div class="user__id">
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
					class="list-group-item list-group-item-action list-group-item-danger"><i
					class="fas fa-gift"></i>Kho Voucher</li>
			</ul>

		</div>
		<div class="user-details">
			<div class="user-details-title">
				<h1>Hồ sơ của tôi</h1>
			</div>
			<div class="user-details-content">
				<div class="user-details-left">
					<form>
						<div class="row mb-3">
							<label for="inputPassword3" class="col-sm-2 col-form-label">Tên</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputtext3">
							</div>
						</div>
						<div class="row mb-3">
							<label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" id="inputEmail3">
							</div>
						</div>
						<div class="row mb-3">
							<label for="inputPassword3" class="col-sm-2 col-form-label">Số
								điện thoại</label>
							<div class="col-sm-10">
								<input type="number" class="form-control" id="inputphone3">
							</div>
						</div>

						<div class="row mb-3">
							<label for="inputBirthdate" class="col-sm-2 col-form-label">Ngày
								tháng năm sinh</label>
							<div class="col-sm-10">
								<input type="date" class="form-control" id="inputBirthdate"
									name="birthdate">
							</div>
						</div>

						<fieldset class="row mb-3">
							<legend class="col-form-label col-sm-2 pt-0">Giới tính</legend>
							<div class="col-sm-10">
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="gridRadios"
										id="gridRadios1" value="option1" checked> <label
										class="form-check-label" for="gridRadios1">Nam</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="gridRadios"
										id="gridRadios2" value="option2"> <label
										class="form-check-label" for="gridRadios2">Nữ</label>
								</div>

							</div>
						</fieldset>
						<div class="col-sm-10">
							<button type="button" class="btn btn-outline-primary">Submit</button>
						</div>

					</form>
				</div>
				<div class="user-details-right">
					<div class="user-details-right-img">
						<img
							src="https://scontent-hkt1-1.xx.fbcdn.net/v/t39.30808-6/357053034_814960390037893_4922475779121350488_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeF5HXwEGNMOPAGrytHpFsrR_aLOXQRBb7r9os5dBEFvuq1yibYhcbMKiV2CqFcBHaVpuYriGC2v8DMoF6Nbu4wB&_nc_ohc=jCEKHVpsQ_0AX-PwGuq&_nc_oc=AQnSFA8uOAiwwoWhfGgpqS3MDN__6FubX6LbMwnJ2NvB_OGUqcoCdYWhpM34VpOrIIM&_nc_ht=scontent-hkt1-1.xx&oh=00_AfC9veirXXYcML6hM0M03QfGFPUxtaQQQyChW6SXYTfjTw&oe=6544F221"
							alt="ảnh hồ sơ">
						<button type="button" class="btn btn-outline-primary">Chọn
							ảnh</button>
					</div>

				</div>
			</div>


		</div>

	</div>

	<!-- end content -->


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>
