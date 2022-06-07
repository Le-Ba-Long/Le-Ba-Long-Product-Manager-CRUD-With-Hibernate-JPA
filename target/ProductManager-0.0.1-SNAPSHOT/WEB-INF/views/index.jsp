<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css">
<link rel="stylesheet" href="./reset.css">
<link rel="stylesheet" href="./lib/index.css">
<style type="text/css">

/* http://meyerweb.com/eric/tools/css/reset/ 
   v2.0 | 20110126
   License: none (public domain)
*/
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block;
}

body {
	line-height: 1;
}

ol, ul {
	list-style: none;
}

blockquote, q {
	quotes: none;
}

blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

html {
	font-size: 62.5%;
}

*, *:before, *:after {
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

img {
	display: block;
	max-width: 100%;
}

a {
	text-decoration: none;
}

body {
	font-family: "Poppins", sans-serif;
}

#main {
	max-width: 1440px;
	height: auto;
}

#main #container {
	max-width: 1210px;
	height: auto;
	margin: 0 auto;
	padding-left: 2rem;
	padding-right: 2rem;
}

#main #container .header {
	display: flex;
	align-items: center;
	justify-content: space-around;
	flex-wrap: wrap;
	height: 7rem;
	padding-top: 1rem;
	background: white;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	background-color: aliceblue;
	z-index: 100;
}

#main #container .header__logo .text-logo {
	text-decoration: none;
	font-size: 2rem;
	color: black;
	font-style: bold;
	font-weight: 600;
	letter-spacing: 1rem;
}

#main #container .header__menu-list {
	padding: 0 2rem;
	font-size: 2rem;
	display: inline-block;
	align-items: flex-start;
	justify-content: space-between;
	flex-wrap: wrap;
}

#main #container .header__menu-list--item>a {
	color: black;
}

#main #container .header__login i {
	font-size: 2rem;
	color: black;
	margin: 0 1rem;
	word-spacing: 1rem;
}

#main #container #slider {
	margin-top: 7rem;
	height: auto;
}

#main #container #slider.title, #main #container #slider h1 {
	padding: 3rem 0;
	font-size: 3rem;
	font-weight: 600;
	text-align: center;
	text-transform: uppercase;
}

#main #container #slider.title, #main #container #slider p {
	font-size: 1.5rem;
	text-align: center;
	margin: 0.2rem;
}

#main #container #slider div.shop-now {
	width: 12rem;
	height: 4rem;
	margin: 0 auto;
}

#main #container #slider div.shop-now button {
	margin-top: 2rem;
	width: 12rem;
	height: 4rem;
	background: #0f0909;
	color: white;
	text-transform: uppercase;
	font-weight: 600;
}

#main #product {
	margin-top: 7rem;
	max-width: 1440px;
	padding-bottom: 10rem;
	height: auto;
	background: #e7b5c8;
}

#main #product div.wrapper {
	max-width: 1210px;
	height: auto;
	margin: 0 auto;
	padding-left: 2rem;
	padding-right: 2rem;
	display: flex;
	flex-wrap: wrap;
}

#main #product div.wrapper .block_1 {
	width: 25%;
	height: 53rem;
	padding-top: 3rem;
	position: relative;
}

#main #product div.wrapper .block_1 .pro_img {
	width: 27rem;
	height: 30rem;
	margin: 0 auto;
	margin-bottom: 2rem;
	background: #eedddd;
}

#main #product div.wrapper .block_1 .pro_img img {
	width: 27rem;
	height: 30rem;
	margin: 0 auto;
}

#main #product div.wrapper .block_1 div.text-product {
	width: 20rem;
	height: 15rem;
	margin: 0 auto;
	text-align: center;
	color: black;
	text-transform: uppercase;
	font-weight: 600;
}

#main #product div.wrapper .block_1 div.text-product p {
	margin-top: 0.5rem;
}

#main #product div.wrapper .block_1 .add-to-cart {
	width: 25rem;
	height: 3rem;
	margin: 0 auto;
}

#main #product div.wrapper .block_1 .add-to-cart button {
	width: 25rem;
	height: 3rem;
	margin-bottom: 5rem;
	background: black;
	color: white;
	text-transform: uppercase;
	font-weight: 600;
}

#main #product div.wrapper .block_1 .khoinho {
	position: absolute;
	width: 10rem;
	height: 3rem;
	z-index: 2;
	top: 3rem;
	left: 1rem;
	color: white;
	background-color: black;
	line-height: 3rem;
	text-align: center;
	font-size: 1.5rem;
}

#main #banner {
	max-width: 1440px;
	height: auto;
}

#main #banner .banner_block {
	max-width: 1210px;
	height: auto;
	margin: 0 auto;
	display: flex;
	padding-top: 2rem;
}

#main #banner .banner_block .banner_block_left {
	width: 50%;
	height: 40rem;
	margin: 2rem;
	background-image:
		url("https://i.bloganchoi.com/bloganchoi.com/wp-content/uploads/2020/09/anh-bia-dep-5-9-696x435.jpg?fit=700%2C20000&quality=95&ssl=1");
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

#main #banner .banner_block .banner_block_left .text {
	position: absolute;
	z-index: 2;
	font-size: 5rem;
	top: 5rem;
	left: 6rem;
	text-transform: uppercase;
}

#main #banner .banner_block .banner_block_left .khoi_nho {
	position: absolute;
	z-index: 3;
	width: 13rem;
	height: 3rem;
	line-height: 3rem;
	font-size: 2rem;
	top: 12rem;
	left: 6rem;
	background-color: black;
	color: white;
	text-align: center;
	text-transform: uppercase;
}

#main #banner .banner_block .banner_block_right {
	width: 50%;
	height: 40rem;
	margin: 2rem;
	background-image:
		url("https://i.bloganchoi.com/bloganchoi.com/wp-content/uploads/2020/09/anh-bia-dep-2-8-696x463.jpg?fit=700%2C20000&quality=95&ssl=1");
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

#main #banner .banner_block .banner_block_right .text {
	position: absolute;
	z-index: 2;
	font-size: 4.5rem;
	bottom: 5rem;
	left: 5rem;
	text-transform: uppercase;
}

#main #banner .banner_block .banner_block_right .khoi_nho {
	position: absolute;
	z-index: 3;
	width: 13rem;
	height: 3rem;
	line-height: 3rem;
	font-size: 2rem;
	bottom: 12rem;
	left: 6rem;
	background-color: black;
	color: white;
	text-align: center;
	text-transform: uppercase;
}

#main #box {
	margin-top: 2rem;
	max-width: 1440px;
	height: 10rem;
	display: flex;
	background: #e7b5c8;
}

#main #box .box_1 {
	width: 25%;
	height: 10rem;
	padding: 2rem;
	display: flex;
	align-items: center;
	justify-content: center;
}

#main #box .box_1 .icon {
	font-size: 4rem;
}

#main #box .box_1 .text {
	padding-left: 1rem;
	margin-top: 2rem;
}

#main #box .box_1 .text .title {
	font-size: 1.5rem;
	font-weight: 600;
	padding-bottom: 1rem;
}

#main #box .box_1 .text .box_text {
	font-weight: 300;
}

#main .message {
	padding: 2rem;
	text-align: center;
	font-size: 3rem;
	text-transform: uppercase;
	font-weight: 600;
}

#main .img-pictrues {
	width: 100%;
	height: 20rem;
	display: flex;
}

#main .img-pictrues .pictrues_1>img {
	padding: 0.5rem;
	width: 20rem;
	height: 20rem;
}

#main #footer {
	max-width: 117rem;
	margin: 0 auto;
}

#main #footer .footer_top>ul {
	height: 4rem;
	display: flex;
	align-items: center;
	justify-content: center;
}

#main #footer .footer_top>ul a {
	padding: 0 3rem;
	font-size: 1rem;
	text-transform: uppercase;
	font-weight: 600;
	color: black;
}

#main #footer .footer_bottom {
	height: 4rem;
	display: flex;
	align-items: center;
	justify-content: center;
}

#main #footer .footer_bottom a {
	padding: 0 3rem;
	font-size: 3rem;
	text-transform: uppercase;
	font-weight: 600;
	color: #353131;
}

/*# sourceMappingURL=index.css.map */
</style>
<title>AZALEA.com</title>
</head>

<body>

	<div id="main">
		<div id="container">
			<!-- phần header -->
			<header class="header">
				<div class="header__logo">
					<a href="./index.html" class="text-logo"> <span>AZALEA</span>
					</a>
				</div>
				<nav class="header__menu">
					<ul class="header__menu-list">
						<li class="header__menu-list--item"><a href="">Home</a></li>
					</ul>
					<ul class="header__menu-list">
						<li class="header__menu-list--item"><a href="">Shop All</a></li>
					</ul>
					<ul class="header__menu-list">
						<li class="header__menu-list--item"><a href="new">Thêm
								Mới Sản Phẩm</a></li>
					</ul>
					<ul class="header__menu-list">
						<li class="header__menu-list--item"><a href="giohang?id=1">Giỏ
								Hàng</a></li>
					</ul>
				</nav>
				<div class="header__login">
					<a href=""><i class="fas fa-user-circle"> Login</i></a> <a href=""><i
						style="color: rgb(29, 21, 21);" class="fas fa-shopping-cart"></i></a>
				</div>

			</header>
			<!-- kết thúc header -->
			<!-- Phần  slider -->
			<div id="slider">
				<div class="img">
					<img src="./img/s2.jpg" alt="">
				</div>
				<div class="title">
					<h1 class="h1">best. glow up. erver!</h1>
					<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit.
						Doloribus</p>
					<p>saepe excepturi atque at officiis ea?</p>
				</div>
				<div class="shop-now">
					<button>shop now</button>
				</div>
			</div>
			<!-- kết thúc phần slider -->
		</div>
		<!-- phần product -->

		<div id="product">
			<div class="wrapper">

				<c:forEach items="${listproduct}" var="product">
					<div class="block_1">
						<div class="pro_img">
							<img alt="" src="${product.imageUrl}">
						</div>
						<div class="text-product">
							<p hidden="hidden">${product.id}</p>
							<span> ${product.name}</span>
							<p>---</p>
							<p>Giá: ${product.price}VNĐ</p>
							<p>Nhà Sản Xuất: ${product.provider}</p>
							<p>Size: ${product.size}</p>
							<p>Mô Tả: ${product.description}</p>
							<a href="productdetail?id=${product.id}">Xem Chi Tiết SảnPhẩm</a></br>
							<a href="edit?id=${product.id}">Edit</a><br /> &nbsp;&nbsp;&nbsp;
							<button id="btn-xoa">
								<a href="delete?id=${product.id}">Delete</a>
							</button>
						</div>
						<div class="add-to-cart">
							<!-- 	<button><a href="order" >add to cart</a></button>  -->
							<button>
								<a href="/ProductManager/add_order_detail?ProductId=${product.id}&NumberOfProduct=1&OrderId=1">add to cart</a>
							</button>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<!-- Phần banner -->
		<div id="banner">
			<div class="banner_block">
				<div class="banner_block_left">
					<div class="text">Shop New Arrival</div>
					<div class="khoi_nho">Shop Now</div>
				</div>
				<div class="banner_block_right">
					<div class="text">bran new highlight</div>
					<div class="khoi_nho">Shop Now</div>
				</div>
			</div>
		</div>
		<div id="box">
			<div class="box_1">
				<div class="icon">
					<i class="fal fa-heart"></i>
				</div>
				<div class="text">
					<h3 class="title">Ethically Sourced</h3>
					<p class="box_text">Lorem ipsum dolor sit amet consectetur
						adipisicing elit.</p>
				</div>
			</div>
			<div class="box_1">
				<div class="icon">
					<i class="far fa-rocket"></i>
				</div>
				<div class="text">
					<h3 class="title">Free Suppert Fast Shipping</h3>
					<p class="box_text">Lorem ipsum dolor sit amet consectetur
						adipisicing elit.</p>
				</div>
			</div>
			<div class="box_1">
				<div class="icon">
					<i class="far fa-smile"></i>
				</div>
				<div class="text">
					<h3 class="title">Satisfcation Guarantee</h3>
					<p class="box_text">Lorem ipsum dolor sit amet consectetur
						adipisicing elit.</p>
				</div>
			</div>
			<div class="box_1">
				<div class="icon">
					<i class="fas fa-gift"></i>
				</div>
				<div class="text">
					<h3 class="title">Wift Wrap Available</h3>
					<p class="box_text">Lorem ipsum dolor sit amet consectetur
						adipisicing elit.</p>
				</div>
			</div>
		</div>
		<div class="message">
			<p>folow us @rosy graphic designs</p>
		</div>
		<div class="img-pictrues">
			<div class="pictrues_1">
				<img
					src="https://dulichdaiphong.vn/wp-content/uploads/2017/08/4-bai-bien-dep.jpg"
					alt="">
			</div>
			<div class="pictrues_1">
				<img
					src="https://i.bloganchoi.com/bloganchoi.com/wp-content/uploads/2020/09/anh-bia-dep-2-8-696x385.jpg?fit=696%2C20000&quality=95&ssl=1"
					alt="">
			</div>
			<div class="pictrues_1">
				<img
					src="https://photo-cms-giacngo.zadn.vn/w645/UserImages/2020/12/13/17/len%20ray.jpg"
					alt="">
			</div>
			<div class="pictrues_1">
				<img
					src="https://toigingiuvedep.vn/wp-content/uploads/2021/06/anh-bia-dep-chat-anime.jpg"
					alt="">
			</div>
			<div class="pictrues_1">
				<img
					src="https://khoanh24.com/uploads/w750//2018/04/21/icon-thailand5adaaadbd7962_baa8771aa01a3775b9d3a17f0347587b.jpg"
					alt="">
			</div>
			<div class="pictrues_1">
				<img
					src="https://dean2020.edu.vn/wp-content/uploads/2020/03/anh-bia-thien-nhien-1.jpg"
					alt="">
			</div>
			<div class="pictrues_1">
				<img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN3i9SV0auywwTlHKykST3_RLQp6EFLdaK1HxXSwvaBO01Y_BFITeoMee0PJrCb4RSqCg&usqp=CAU"
					alt="">
			</div>
		</div>
		<div id="footer">
			<div class="footer_top">
				<ul>
					<li><a href="">ConTact</a></li>
					<li><a href="">Faqs</a></li>
					<li><a href=""> Privacy policy</a></li>
					<li><a href="">t&cs</a></li>
					<li><a href="">delivery</a></li>
					<li><a href="">information</a></li>
				</ul>
			</div>
			<div class="footer_bottom">
				<a href=""><i class="fab fa-facebook-f"></i></a> <a href=""><i
					class="fab fa-instagram"></i></a> <a href=""><i
					class="fab fa-twitter"></i></a>

			</div>

		</div>
	</div>

</body>
</html>