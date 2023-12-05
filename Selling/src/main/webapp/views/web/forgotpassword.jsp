<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<!doctype html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale-1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="shp384-zCbKRCUGaJDkqS1kPbPd7TvePSiyJE0EjAuZQTgFLD2yLzuqKfdKLFG/eSrtxUkn"
	crossorigin="anonymous">

<title>Forgot Password</title>

</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<c:if test="${not empty message}">
					<div class="alert alert-success">${message}</div>
				</c:if>

				<c:if test="${not empty error}">
					<div class="alert alert-danger">${error}</div>
				</c:if>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12">

				<form action="forgotpass" method="post">

					<div class="form-group">
						<label for="username">User Name: </label> <input type="text"
							class="form-control" id="username" name="username">
					</div>

					<div class="form-group">
						<label for="email">Email: </label> <input type="text"
							class="form-control" id="email" name="email">
					</div>

					
					<button type="submit" class="btn btn-primary">Quên mật khẩu</button>
				</form>
			</div>
		</div>
	</div>
		
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
			integrity="sha384-DfXdz2htPHOLsSSs5nCTpuj/zy4C+0Gpamo FVy38MVBnE+IbbVYUew+OrCXaRkfj" 
			crossorigin="anonymous"></script>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" 
			integrity="sha384-fQybjgWLrvvRgtw6bFLB7jaZrFsaBXjsOMm/tB9L TS580NXgqbR9W80wht/amnpF" 
			crossorigin="anonymous"></script>


</body>
</html>