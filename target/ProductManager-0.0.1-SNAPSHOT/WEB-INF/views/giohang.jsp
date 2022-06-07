<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New Order</title>
</head>
<body>
	<h1 align="center" >Giỏ Hàng</h1>
	<div class="wrapper" align="center">
		<h2>Tên Khách Hàng: ${orders.custommername}</h2>
		<h3>Ngày Mua: ${orders.buydate}</h3>
		<h3>Số Điện Thoại: ${orders.custommerphone}</h3>
		<table border="1px">
			<tr>
				<td>STT</td>
				<td>Tên Sản Phẩm</td>
				<td>Nhà Sản Xuất</td>
				<td>Giá</td>
				<td>Size</td>
				<td>Số Lượng</td>
				<td>Ảnh</td>
				<td>Mô Tả</td>
				<td>Thành Tiền</td>

			</tr>
			<c:set var="count" value="1" scope="page" />
			<c:forEach items="${list_product}" var="list_product">
				<tr>
				    <td  hidden="hidden" id="lenght">${lenght}</td>
					<td>So:${count}</td>
					<td>${list_product.name}</td>
					<td>${list_product.provider}</td>
					<td class="giaban">${list_product.price}</td>
					<td class="size">${list_product.size}</td>
					<td><input type="number" onclick="TinhTien()" class="sl" /></td>
					<td><img alt="" height="100px" width="100px"
						src="${list_product.imageUrl}"></td>
					<td>${list_product.description}</td>
					<td class="thanhtien"></td>
				</tr>
				<c:set var="count" value="${count + 1}" scope="page" />
			</c:forEach>
		</table>
		<tr>Tổng Hóa Đơn:  <span id="sum"></span></tr>
	</div>
	<script>
				/* TinhTien() {
					var stt = Number(document.getElementById('stt').innerHTML);
					var sl = Number(document.getElementById('sl').value);
					var giaban = Number(document.getElementById('giaban').innerHTML);
					var kq = sl * parseFloat(giaban, 10);
					document.getElementById("thanhtien").innerHTML = kq;
				}*/

				//var size = document.querySelectorAll('.size');
				//document.getElementById("thanhtien").innerHTML = size;
				function TinhTien() {
					var lenght = Number(document.getElementById('lenght').innerHTML);
					var sl = document.querySelectorAll(".sl");
					var giaban = document.querySelectorAll(".giaban");
					var thanhtien = document.querySelectorAll(".thanhtien");
					var sum=0;
					for (var i = 0; i < lenght; i++) {
						var kq = Number(sl[i].value)
								* Number(giaban[i].innerHTML);
						sum+=kq;
						thanhtien[i].innerHTML = kq;

					}
					document.getElementById("sum").innerHTML = sum;
					
				}
				TinhTien();
			</script>
</body>
</html>