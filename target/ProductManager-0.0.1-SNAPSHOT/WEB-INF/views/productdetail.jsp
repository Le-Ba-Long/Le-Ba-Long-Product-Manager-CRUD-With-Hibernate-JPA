<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Xem Chi Tiết Sản Phẩm</title>
</head>
<body>
<h1 align="center">Xem Chi Tiết Sản Phẩm</h1>
<div class="wrapper" align="center" modelAttribute="product">
					<div class="block_1">
						<div class="pro_img">
						     <img src="${product.imageUrl}" alt="">
						</div>
						<div class="text-product" >
							<p hidden="hidden">${product.id}</p>
							<span> ${product.name}</span>
							<p>---</p>
							<p>Giá: ${product.price}VNĐ</p>
							<p>Nhà Sản Xuất: ${product.provider}</p>
							<p>Size: ${product.size}</p>
							<p>Mô Tả: ${product.description}</p>
						</div>						
					</div>
			</div>

</body>
</html>