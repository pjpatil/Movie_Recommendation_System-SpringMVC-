<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="vector.india.Movie_Recommendation_System_Application.controller.*, vector.india.Movie_Recommendation_System_Application.model.*"%>
<!DOCTYPE html>
<%@page import="javax.servlet.jsp.tagext.TagLibraryInfo"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Movie Application</title>
<!-- Bootstrap 5.1.3 CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<!-- User Menu navbar -->
	<jsp:include page="userNavbar.jsp"></jsp:include>
	
	<!-- Carousel -->
	<div id="carouselExampleCaptions" class="carousel slide"
		data-bs-ride="carousel" data-bs-interval="2000">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="https://i.ytimg.com/vi/nsC5PhXS19Y/maxresdefault.jpg"
					class="d-block w-100" alt="img not found">
				<div class="carousel-caption d-none d-md-block">
					<h2>First slide label</h2>
					<p>Some representative placeholder content for the first slide.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img
					src="https://i.ytimg.com/vi/pAs-VavcAWA/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLAU5-M_yvMA1-I-HQ0tou3yZ4HHPw"
					class="d-block w-100" alt="img not found">
				<div class="carousel-caption d-none d-md-block">
					<h2>Second slide label</h2>
					<p>Some representative placeholder content for the second
						slide.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img
					src="https://images.hindustantimes.com/img/2021/01/11/1600x900/immortal_1610348165339_1610348191039.jpg"
					class="d-block w-100" alt="img not found">
				<div class="carousel-caption d-none d-md-block">
					<h2>Third slide label</h2>
					<p>Some representative placeholder content for the third slide.</p>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>


	<!-- Movie Grid -->
	


	<div class="container-fluid">
		<h2 class="h2 mt-3">Popular Movies</h2>
		<div class="row">
			<c:forEach var="m" items="${getallmovies}">
				<div class="col-lg-3 col-md-6  mb-4">
					<div class="card">
						<img
							src="${pageContext.request.contextPath}/resources/IMG/${m.getMovtitle().replaceAll(' ','')}.jpg"
							alt="Image not found" class="card-img-top">
						<div class="card-body">
							<h5 class="card-title">Movie Title: ${m.getMovtitle()}</h5>
							<p class="card-text">${m.getMovdescription()}</p>
							<a href="${m.getMovlink()}" class="btn btn-primary">Watch Now</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>


	<!-- Footer -->
	<footer class="bg-dark text-white text-center text-lg-start mt-5 p-3">
		<div class="container p-4">
			<div class="row">
				<!-- About Section -->
				<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
					<h5 class="text-uppercase">About</h5>
					<ul class="list-unstyled mb-0">
						<li><a href="#" class="text-white">Company Info</a></li>
						<li><a href="#" class="text-white">Careers</a></li>
						<li><a href="#" class="text-white">Press Releases</a></li>
					</ul>
				</div>

				<!-- Help Section -->
				<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
					<h5 class="text-uppercase">Help</h5>
					<ul class="list-unstyled mb-0">
						<li><a href="#" class="text-white">Customer Service</a></li>
						<li><a href="#" class="text-white">FAQs</a></li>
						<li><a href="#" class="text-white">Contact Us</a></li>
					</ul>
				</div>

				<!-- Account Section -->
				<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
					<h5 class="text-uppercase">Account</h5>
					<ul class="list-unstyled mb-0">
						<li><a href="#" class="text-white">Your Account</a></li>
						<li><a href="#" class="text-white">Manage Your Prime</a></li>
						<li><a href="#" class="text-white">Watchlist</a></li>
					</ul>
				</div>

				<!-- Social Media Section -->
				<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
					<h5 class="text-uppercase">Follow Us</h5>
					<ul class="list-unstyled mb-0">
						<li><a href="#" class="text-white">Facebook</a></li>
						<li><a href="#" class="text-white">Twitter</a></li>
						<li><a href="#" class="text-white">Instagram</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="text-center p-3 bg-dark">
			� 2024 Vector-India.in Video Clone | <a href="#" class="text-white">Privacy</a>
			| <a href="#" class="text-white">Terms</a>
		</div>
	</footer>

	<!-- Bootstrap 5.1.3 JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
