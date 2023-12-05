<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giỏ hàng</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/templates/user/css/styledetailcart.css">
</head>
<body>
	<section class="h-100 h-custom" style="background-color: #eee;">
		<div class="container h-100 py-5">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col">
					<div class="card shopping-cart" style="border-radius: 15px;">
						<div class="card-body text-black">

							<div class="row">
								<div class="col-lg-6 px-5 py-4">

									<h3 class="mb-5 pt-2 text-center fw-bold text-uppercase">Đơn
										hàng của bạn</h3>


									<div class="d-flex align-items-center mb-5">
										<div class="flex-shrink-0">
											<img
												src="https://media-cdn.oriflame.com/productImage?externalMediaId=product-management-media%2F38557%2F38557.png%3Fversion%3D1674645309&w=720&bc=%23f5f5f5&ib=%23f5f5f5&h=720&q=70"
												class="img-fluid" style="width: 150px;"
												alt="Generic placeholder image">
										</div>
										<div class="flex-grow-1 ms-3">
											<h5 class="text-primary">Rose Nectar Hand & Body Cream</h5>
											<h6 style="color: #9e9e9e;">Số lượng: 3</h6>

											<div class="d-flex align-items-center">
												<p class="fw-bold mb-0 me-5 pe-3">Tổng: 679$</p>
											</div>
										</div>
									</div>

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
									</div>

									<div class="d-flex align-items-center mb-5">
										<div class="flex-shrink-0">
											<img
												src="https://media-cdn.oriflame.com/productImage?externalMediaId=product-management-media%2F40788%2F40788.png%3Fversion%3D1643101200&w=720&bc=%23f5f5f5&ib=%23f5f5f5&h=720&q=70"
												class="img-fluid" style="width: 150px;"
												alt="Generic placeholder image">
										</div>
										<div class="flex-grow-1 ms-3">
											<h5 class="text-primary">Nuit Eau de Parfum for her</h5>
											<h6 style="color: #9e9e9e;">Số Lượng: 1</h6>
											<div class="d-flex align-items-center">
												<p class="fw-bold mb-0 me-5 pe-3">Tổng: 89$</p>
											</div>
										</div>
									</div>

									<hr class="mb-4"
										style="height: 2px; background-color: #1266f1; opacity: 1;">
									<div class="cham">
										<h4>Phương thức vận chuyển</h4>
										<div class="form-check">
											<input class="form-check-input" type="radio"
												name="flexRadioDefault" id="flexRadioDefault1"> <label
												 class="form-check-label"
												for="flexRadioDefault1"> <strong>Vận chuyển
													thường</strong>
											</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="radio"
												name="flexRadioDefault" id="flexRadioDefault2" checked>
											<label class="form-check-label" for="flexRadioDefault2">
												<strong>Vận chuyển hỏa tốc</strong>
											</label>
										</div>
									</div>


									<hr class="mb-4"
										style="height: 2px; background-color: #1266f1; opacity: 1;">

									<div class="d-flex justify-content-between px-x">
										<p class="fw-bold">Giảm giá:</p>
										<p class="fw-bold">99$</p>
									</div>
									<div class="d-flex justify-content-between px-x">
										<p class="fw-bold">Phí giao hàng:</p>
										<p class="fw-bold">9$</p>
									</div>
									<div class="d-flex justify-content-between p-2 mb-2"
										style="background-color: #e1f5fe;">
										<h5 class="fw-bold mb-0">Tổng:</h5>
										<h5 class="fw-bold mb-0">999$</h5>
									</div>




								</div>


								<div class="col-lg-6 px-5 py-4">

									<h3 class="mb-5 pt-2 text-center fw-bold text-uppercase">
										<span>THANH TOÁN BẰNG VÍ</span> <span style="color: #ae1973;">MOMO</span>
									</h3>


									<div class="mb-5 pt-2 text-center">
										<a href='https://me-qr.com' border='0'
											style='cursor: pointer; display: block'><img
											src='https://cdn2.me-qr.com/qr/82712719.png?v=1700018426'
											alt='Create qr code for free'></a><a
											href='https://me-qr.com' border='0'
											style='cursor: default; display: none'>Create qr code for
											free</a>
									</div>
									<hr class="mb-4"
										style="height: 2px; background-color: #1266f1; opacity: 1; margin-top: 100px;">
									<div class="fw-bold mb-5 payment-instructions">
										<span>Quét mã</span> <span style="color: #ae1973;">QR</span> <span>để
											thanh toán</span>
										<ol>
											<li>Mở ứng dụng <span style="color: #ae1973;">MoMo</span>
												trên điện thoại
											</li>
											<li>Trên <span style="color: #ae1973;">MoMo</span>, chọn
												biểu tượng <img style="width: 40px; height: 40px;"
												src="https://salt.tikicdn.com/ts/upload/03/74/d4/01670f7f9e6a3c86583939eb2494e9cf.png"
												alt="scan"> quét mã <span style="color: #ae1973;">QR</span></li>
											<li>Quét mã <span style="color: #ae1973;">QR</span> ở
												trang này và thanh toán
											</li>
										</ol>
									</div>
									<h5 class="fw-bold mb-5" style="position: absolute; bottom: 0;">
										<a href="#!"><i class="fas fa-angle-left me-2"></i>Quay
											lại</a>
									</h5>
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
