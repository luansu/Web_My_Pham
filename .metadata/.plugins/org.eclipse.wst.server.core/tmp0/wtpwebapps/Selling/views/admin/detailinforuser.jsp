<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglist.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chi tiết khách hàng</title>

<%-- <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/templates/admin/css/style.css"> --%>
</head>

<body>

	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
		crossorigin="anonymous">
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

	<section style="background-color: #eee;">
		<div class="container py-5">
			<div class="row">
				<div class="col">
					<nav aria-label="breadcrumb" class="bg-light rounded-3 p-3 mb-4">
						<ol class="breadcrumb mb-0">
							<li class="breadcrumb-item active" aria-current="page">Chi
								tiết thông tin khách hàng</li>
						</ol>
					</nav>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4">
					<div class="card mb-4">
						<div class="card-body text-center">
							<img
								src="https://scontent.fsgn7-1.fna.fbcdn.net/v/t39.30808-6/357053034_814960390037893_4922475779121350488_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeF5HXwEGNMOPAGrytHpFsrR_aLOXQRBb7r9os5dBEFvuq1yibYhcbMKiV2CqFcBHaVpuYriGC2v8DMoF6Nbu4wB&_nc_ohc=Ze3ZaC8Fg1MAX9TG622&_nc_oc=AQmDWUE6_UmimeSiZ2jirGF78bMaWn8SsKj91n1Ww_KGUbXwiKAj3EL5_Xtj4yiHMKSNdJC5OZuK6Owbhrs6JfIF&_nc_ht=scontent.fsgn7-1.fna&oh=00_AfDd4v0R2q3tAdPWQOOKi9RUuY7XoWJkZjUWeP86-vEZ3A&oe=65746821"
								alt="avatar" class="rounded-circle img-fluid"
								style="width: 150px;">
							<h5 class="my-3">${customer.customerName}</h5>
							<p class="text-muted mb-4">
								ID: <span style="color: Blue">113388</span>
							</p>
							<div class="d-flex justify-content-center mb-2">
								<button type="button" class="btn btn-primary">Quay lại</button>
							</div>
						</div>
					</div>

				</div>
				<div class="col-lg-8">
					<div class="card mb-4">
						<div class="card-body">
							<div class="row">
								<div class="col-sm-3">
									<p class="mb-0">Họ tên</p>
								</div>
								<div class="col-sm-9">
									<p class="text-muted mb-0">${customer.customerName}</p>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<p class="mb-0">Email</p>
								</div>
								<div class="col-sm-9">
									<p class="text-muted mb-0">${customer.mail}</p>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<p class="mb-0">Số điện thoại</p>
								</div>
								<div class="col-sm-9">
									<p class="text-muted mb-0">${customer.phone}</p>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<p class="mb-0">Ngày sinh</p>
								</div>
								<div class="col-sm-9">
									<p class="text-muted mb-0">${customer.birthday}</p>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<p class="mb-0">Giới tính</p>
								</div>
								<div class="col-sm-9">
									<p class="text-muted mb-0">${customer.gender}</p>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<p class="mb-0">Địa chỉ</p>
								</div>
								<div class="col-sm-9">
									<p class="text-muted mb-0">${customer.address}</p>
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
											style="font-weight: bold">Khách Hàng Thân Thiết</span>
									</p>
									<p class="mb-1" style="font-size: .77rem;  font-size: 16px;">Thứ Hạng: <span style="color: #007bff;">${customer.rank}</span> </p>
		
									<p class="mt-4 mb-1" style="font-size: .77rem;  font-size: 16px;">Điểm Tích Lũy: <span style="color: #007bff;">${customer.rewardPoints}</span></p>

									
								
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