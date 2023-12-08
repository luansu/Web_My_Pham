<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglist.jsp"%>
<!DOCTYPE html>
<html lang="fr">
<body>
	<!-- Site meta -->
	<meta charset="utf-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Sign In</title>
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
	<link
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
		rel="stylesheet">
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href='<c:url value="/stylecss/base/basecss.css" />'
		rel="stylesheet" type="text/css">
	<link href='<c:url value="/css/bootstrap.css" />' rel="stylesheet"
		type="text/css">

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
		href="${pageContext.request.contextPath}/templates/web/css/main.css">


	<div class="bg__img">
		<div class="container d-flex justify-content-center w-200 min-vh-100"
			style="padding-top: 100px;">

			<!-- login -->
			<div class="row border rounded-5 p-3 bg-white"
				style="width: 900px; height: fit-content;">

				<!-- 		left box -->
				<div
					class="col-md-6 rounded-4 d-flex justify-content-center align-items-center flex-column left-box"
					style="background: #fff;">
					<div class="row align-items-center">
						<div class="header-text mb-4 text-center">
							<h1 style="font-size: 2rem;">SIGN-UP</h1>
						</div>
						<div class="input-group mb-4">
							<input type="text"
								class="form-control form-control-lg bg-light fs-6"
								placeholder="Your Name">
						</div>
						<div class="input-group mb-4">
							<input type="password"
								class="form-control form-control-lg bg-light fs-6"
								placeholder="Email or Phone Address">
						</div>
						<div class="input-group mb-4">
							<input type="password"
								class="form-control form-control-lg bg-light fs-6"
								placeholder="Enter Password">
						</div>
						<div class="input-group mb-4">
							<input type="password"
								class="form-control form-control-lg bg-light fs-6"
								placeholder="Re-Enter Your Password">
						</div>
						<div class="form-check"
							style="margin-left: 12px; margin-bottom: 20px;">
							<input type="checkbox" class="form-check-input" id="formCheck">
							<label for="formCheck" class="form-check-label text-secondary"><small>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a>
							</small></label>
						</div>
						<div class="input-group mb-4">
							<button type="button" class="btn btn-primary w-100 fs-6"
								data-bs-toggle="modal" data-bs-target="#exampleModal">
								Register</button>
						</div>

						<!-- Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="edit-modal modal-content">
									<div class="modal-header">
										<h1 class="modal-title fs-5" id="exampleModalLabel">Mã
											kích hoạt</h1>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<input type="text" id="validationDefault01" class = "modal-body-edit"
											placeholder="Nhập mã kích hoạt">
									</div>
									<c:if test="${not empty error}">
										<div class="alert alert-danger d-flex align-items-center"
											role="alert">
											<svg class="bi flex-shrink-0 me-2" role="img"
												aria-label="Danger:">
											<use xlink:href="#exclamation-triangle-fill" /></svg>
											<div>${error}</div>
										</div>
									</c:if>
									<c:if test="${not empty message}">
										<div class="alert alert-success d-flex align-items-center"
											role="alert">
											<svg class="bi flex-shrink-0 me-2" role="img"
												aria-label="Success:">
												<use xlink:href="#check-circle-fill" /></svg>
											<div>${message}</div>
										</div>
									</c:if>

										<input type="text" id="validationDefault01"
											placeholder="Nhập mã kích hoạt">
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-danger"
											data-bs-dismiss="modal">Thoát</button>
										<button type="submit" class="btn btn-success">Kích hoạt</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- right-box -->
				<div
					class="col-md-6 right-box d-flex justify-content-center align-items-center flex-column">
					<figure>
						<img
							src="${pageContext.request.contextPath}/templates/web/images/signup-image.jpg"
							alt="sing up image">
					</figure>
					<a href="login" class="signup-image-link"
						style="text-decoration: none;">I am already member</a>
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
</body>
</html>