<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglist.jsp"%>

<!DOCTYPE html>
<html>
<head>

<!--  content -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/css/boxicons.min.css"
	integrity="sha512-pVCM5+SN2+qwj36KonHToF2p1oIvoU3bsqxphdOIWMYmgr4ZqD3t5DjKvvetKhXGc/ZG5REYTT6ltKfExEei/Q=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/css/materialdesignicons.css"
	integrity="sha256-NAxhqDvtY0l4xn+YVa6WjAcmd94NNfttjNsDmNatFVc="
	crossorigin="anonymous" />

</head>
<body>

	<div class="d-flex mt-4">
		<div
			style="margin-left: 50px; margin-right: 50px; border-right: 1px solid #b7bbbf;"
			class="col-2">
			<ul
				class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start"
				id="menu">
				<li class="nav-item"><a href="home"
					class="nav-link align-middle px-0 nav-menu"> <i
						class="fal fa-house-night" style="color: #7097db; font-size: 30px"></i>
						<span class="ms-1 d-none d-sm-inline">Trang chủ</span>
				</a></li>

				<li><a href="listuser"
					class="nav-link align-middle px-0 nav-menu"> <i
						class="fal fa-mail-bulk" style="color: #c77070; font-size: 30px"></i>
						<span class="ms-1 d-none d-sm-inline">Khách hàng</span>
				</a></li>

				<li><a href="listseller"
					class="nav-link align-middle px-0 nav-menu"> <i
						class="far fa-recycle fa-spin"
						style="color: #178254; font-size: 30px;"></i> <span
						class="ms-1 d-none d-sm-inline">Nhân Viên</span>
				</a></li>

				<li><a href="listshipper"
					class="nav-link align-middle px-0 nav-menu"> <i
						class="fas fa-user-md-chat"
						style="color: #592731; font-size: 30px;"></i> <span
						class="ms-1 d-none d-sm-inline">Shipper</span>
				</a></li>


			</ul>
		</div>
		<div class="col-9">
			<div class="search">
				<div class="row justify-content-center">
					<div class="col-30 col-md-30 col-lg-15">
						<form class="card card-sm" action="searchUser" method="post">
							<div class="card-body row no-gutters align-items-center">
								<div class="col-auto">
									<i class="fas fa-search h4 text-body"></i>
								</div>
								<!--end of col-->
								<div class="col-md">
									<input class="form-control" type="search" name="search_info"
										placeholder="Nhập shipper cần tìm">
								</div>
								<!--end of col-->
								<div class="col-auto">
									<button class="btn btn-success" type="submit">Tìm kiếm</button>
								</div>
								<!--end of col-->
							</div>
						</form>
					</div>
					<!--end of col-->
				</div>
			</div>

			<div class="container" style="margin-top: 20px;">
				<div class="row align-items-center">
					<div class="col-md-6">
						<div class="mb-3">
							<h5 class="card-title">
								Thông tin khách hàng <span class="text-muted fw-normal ms-2">(${count })</span>
							</h5>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="">
							<div class="table-responsive">
								<table
									class="table project-list-table table-nowrap align-middle table-borderless">
									<thead>
										<tr>
											<th scope="col" class="ps-4" style="width: 50px;">
												<div class="form-check font-size-16">
													<input type="checkbox" class="form-check-input"
														id="contacusercheck" /><label class="form-check-label"
														for="contacusercheck"></label>
												</div>
											</th>
											<th scope="col">Tài khoản</th>
											<th scope="col">Email</th>
											<th scope="col">Số điện thoại</th>
											<th scope="col" style="width: 200px;">Lựa chọn</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="i" items="${list }">
											<tr>
												<th scope="row" class="ps-4">
													<div class="form-check font-size-16">
														<input type="checkbox" class="form-check-input"
															id="contacusercheck1" /><label class="form-check-label"
															for="contacusercheck1"></label>
													</div>
												</th>
												<td><img
													src="https://scontent.fsgn3-1.fna.fbcdn.net/v/t39.30808-6/357053034_814960390037893_4922475779121350488_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeF5HXwEGNMOPAGrytHpFsrR_aLOXQRBb7r9os5dBEFvuq1yibYhcbMKiV2CqFcBHaVpuYriGC2v8DMoF6Nbu4wB&_nc_ohc=-yKX52Urdn0AX8U0a-v&_nc_oc=AQlI2Ns9XLRTfcBwWgD0RHgOWIUMetQvlk_-r_YQaQQu_hub_sENbxLo6HLTTSsB0Ug&_nc_ht=scontent.fsgn3-1.fna&oh=00_AfAkwmC6el-T5G0ksuVne_5NYx6l7Dvg2p6XioTa2XhQgQ&oe=6556BE61"
													alt="" class="avatar-sm rounded-circle me-2" /><a
													href="userdetail?id=${i.customerId }" class="text-body">${i.customerName}</a></td>
												<td>${i.mail}</td>
												<td>${i.phone}</td>
												<td>
													<ul class="list-inline mb-0">
														<li class="list-inline-item"><a
															href="userdetail?id=${i.customerId }"
															data-bs-toggle="tooltip" data-bs-placement="top"
															title="Edit" class="px-2 text-primary"><i
																class="bx bx-pencil font-size-18"></i></a></li>
														<li class="list-inline-item"><a
															href="deleteuser?id=${i.customerId }"
															data-bs-toggle="tooltip" data-bs-placement="top"
															title="Delete" class="px-2 text-danger"><i
																class="bx bx-trash-alt font-size-18"></i></a></li>
													</ul>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="row g-0 align-items-center pb-4">
					<div class="col-sm-11">
						<div class="float-sm-end">
							<ul class="pagination mb-sm-0">
								<c:if test="${page<=1 }">
									<li class="page-item disabled"><a
										href="listuser?page=${page - 1}" class="page-link"><i
											class="mdi mdi-chevron-left"></i></a></li>
								</c:if>
								<c:if test="${page>1 }">
									<li class="page-item"><a href="listuser?page=${page - 1}"
										class="page-link"><i class="mdi mdi-chevron-left"></i></a></li>
								</c:if>
								<c:forEach var="i" begin="1" end="${num }">
									<c:if test="${i==page }">
										<li class="page-item active"><a href="listuser?page=${i}"
											class="page-link">${i }</a></li>
									</c:if>
									<c:if test="${i!=page }">
										<li class="page-item"><a href="listuser?page=${i}"
											class="page-link">${i }</a></li>
									</c:if>
								</c:forEach>
								<c:if test="${page<num}">
									<li class="page-item"><a href="listuser?page=${page + 1}"
										class="page-link"><i class="mdi mdi-chevron-right"></i></a></li>
								</c:if>
								<c:if test="${page>=num}">
									<li class="page-item disabled"><a
										href="listuser?page=${page + 1}" class="page-link"><i
											class="mdi mdi-chevron-right"></i></a></li>
								</c:if>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end content-->
</body>
</html>