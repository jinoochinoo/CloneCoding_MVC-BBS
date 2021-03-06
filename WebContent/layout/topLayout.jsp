<%@page import="login.SessionCheck"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no"
>
<title>MVC-BBS</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
>
</head>

<!-- 네비바를 fiexd-top으로 설정했을 때 컨텐츠와 겹치는 문제 방지 -->
<body class="pt-5">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="/etc">JINWOO's Page</a>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="/etc">홈
							<span class="sr-only">(current)</span>
							
							<%
						// 세션과 쿠키 체크
						Cookie[] cookie = request.getCookies();
						boolean check = SessionCheck.loginCheck(session, cookie);
						// true를 받았을 경우 (로그인 된 상태) 
						if (check) {
					%>
					
					<li class="nav-item"><a class="nav-link" href="/logout">로그아웃</a></li>
					<li class="nav-item"><a class="nav-link" href="/getUserInfo">회원정보</a></li>
				</ul>

				<%
					// false를 받았을 경우 (로그인 안된 상태)
					} else {
				%>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="/login">로그인</a></li>
					<li class="nav-item"><a class="nav-link" href="/register">회원가입</a></li>
				</ul>
								<%
					}
				%>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	
<div class="container">
		<div class="row">

			<div class="col-lg-2">

				<h3 class="my-4 text-center">Category</h3>
				<div class="list-group mb-4">
					<a
						class="list-group-item list-group-item-info text-center font-weight-bold border border-dark">게시판</a>
					<a href="/boardChat?requestedPage=1"
						class="list-group-item list-group-item-action text-center font-weight-bold border border-dark">
						일반 게시판</a> <a href="#"
						class="list-group-item list-group-item-action text-center font-weight-bold border border-dark">
						코딩 게시판</a>
				</div>

			</div>
			<!-- /.col-lg-3 -->

			<div class="col-lg-10 my-4 mb-4 border border-dark rounded-lg">

				<!-- 여기서부터 본문내용, 이후 코드는 bottomLayout에서 마무리 -->