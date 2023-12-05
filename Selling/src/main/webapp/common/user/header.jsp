<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<<<<<<< HEAD
 <%@ include file="/common/taglib.jsp"%>
=======
 <%@ include file="/common/taglist.jsp"%>
>>>>>>> 1bda766b20ff65fa4df61fbb0afb10d5536e7c06

<!DOCTYPE html>
<html>
<head>
<!-- Site meta -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Header</title>
<!-- Favicon-->
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
	<link href='<c:url value="/stylecss/base/basecss.css" />'
		rel="stylesheet" type="text/css">
	<link href='<c:url value="/css/bootstrap.css" />' rel="stylesheet"
		type="text/css">
</head>

<body>
	<nav class="navbar navbar-expand-xxl bg-body-tertiary">
		<div class="container-fluid d-flex justify-content-between">
			<div class="collapse" id="navbarToggleExternalContent"
				data-bs-theme="light">
				<div class="bg-light p-4">
					<h5 class="text-body-emphasis h4">Collapsed content</h5>
					<span class="text-body-secondary">Toggleable via the navbar
						brand.</span>
				</div>
			</div>
			<nav class="navbar navbar-light bg-light">
				<div class="container-fluid">
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse"
						data-bs-target="#navbarToggleExternalContent"
						aria-controls="navbarToggleExternalContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
				</div>
			</nav>
			<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 139 31"
				height="40" width="80" data-id="common" class="appshell-fp-16d8r2m">
				<path
					d="M57.98 28.94l-1.595-4.904h-.98L53.81 28.94l-1.593-4.91h-1.23l2.206 6.62h.98l1.716-4.66 1.59 4.66h.98l2.2-6.62h-1.22zM1.334 26.857h33.35v.98H1.334v-.98zm41.318-24.89h2.207v14.59h-2.21V1.967zm10.544 14.59h2.207v-6.13h7.602V8.343h-7.61V3.93h8.46V1.966h-10.66zM8.324 16.8c4.66 0 8.46-3.8 8.46-8.46 0-4.534-3.8-6.62-6.62-6.62-5.518 0-5.886 5.396-5.886 5.396h.13s.98-3.923 4.78-3.923c3.07 0 5.4 2.084 5.4 5.027 0 3.43-2.82 6.25-6.25 6.25-3.31 0-6.372-2.45-6.372-6.87 0-3.44 1.84-6.26 5.027-7.48V0C2.947.61.003 4.17.003 8.33c-.122 4.66 3.68 8.46 8.338 8.46zm36.78 10.056c-1.225-.245-1.593-.49-1.593-.98s.37-.737 1.11-.737c.62 0 1.23.24 1.72.61l.617-.85c-.613-.49-1.47-.86-2.33-.86-1.35 0-2.207.74-2.207 1.96s.73 1.6 2.2 1.96c1.22.25 1.47.49 1.47.98s-.49.86-1.1.86c-.86 0-1.47-.37-2.09-.86l-.74.86c.735.74 1.716 1.11 2.696 1.11 1.35 0 2.33-.73 2.33-1.96 0-1.35-.738-1.84-2.086-2.08zm-9.317-10.3l-4.414-5.884c2.207-.61 3.678-2.2 3.678-4.29 0-2.69-2.2-4.53-5.39-4.53h-6.38v14.59h2.2v-5.4h3.55l4.05 5.4 2.7.126zm-10.3-7.48V3.93h4.047c2.084 0 3.31.86 3.31 2.453s-1.35 2.575-3.31 2.575h-4.047zm40.706 18.76h3.31v-1.102h-3.31V25.14h3.678v-1.103h-4.78v6.498h4.78v-.98H66.2zM91.817 1.844l-6.62 14.713h2.33l1.715-3.8h7.11l1.595 3.8h2.452L93.78 1.844h-1.964zm-1.838 8.95l2.69-6.252 2.69 6.26h-5.4zm18.14-5.026l4.66 6.866.24.368.24-.36 4.536-6.86v10.79h2.207v-14.6h-2.084l-4.904 7.356-4.906-7.356h-2.08v14.59h2.085zm0 21.088h30.89v.98h-30.89v-.98zm22.19-12.383v-4.29h7.6V8.098h-7.6v-4.17h8.58v-1.96h-10.78v14.59h10.79V14.47zM98.93 28.57l-3.557-4.534H94.27v6.498h1.226v-4.536l3.55 4.536h.98v-6.498h-1.1zM72.936 1.968h-2.084v14.59h10.054v-2.084h-7.97zm13.12 25.87h3.31v-1.103h-3.31V25.14h3.677v-1.103H84.95v6.498h4.905v-.98h-3.81zm-9.197-3.8H74.4v6.497h2.453c2.083 0 3.432-1.47 3.432-3.31.122-1.717-1.35-3.188-3.434-3.188zm0 5.516h-1.35V25.14h1.35c1.35 0 2.2.98 2.2 2.206.12 1.226-.86 2.207-2.21 2.207z"></path></svg>
			<form class="d-flex" role="search">
				<div style="display: flex-column; align-items: center;">	
					<i class="fa-solid fa-magnifying-glass" style=" margin-right: 10px;"></i>
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search" style="width: 500px;">
				</div>
			</form>

<<<<<<< HEAD
			<span class="navbar-text"> Đăng nhập</span> 
			<span class="navbar-text"> Đăng ký</span> <i class="fa-solid fa-cart-shopping"></i>
			<span class="navbar-text"> Giỏ hàng</span> 
=======
			<span class="navbar-text"> Đăng nhập</span> <span class="navbar-text">
				Đăng ký</span> <i class="fa-solid fa-cart-shopping"></i>
>>>>>>> 1bda766b20ff65fa4df61fbb0afb10d5536e7c06
		</div>
	</nav>	
</body>
</html>