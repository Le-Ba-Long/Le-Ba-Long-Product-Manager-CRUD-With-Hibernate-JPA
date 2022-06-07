<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New Order</title>
</head>
<body>
	<div align="center">
		<h2>New Order</h2>
		<form:form action="addorder" method="post" modelAttribute="order">
			<table border="0" cellpadding="5">
				<tr>
					<td>Ngày Mua :</td>
					<td><form:input  path="BuyDate" /></td>
				</tr>
				<tr>
					<td>Tên Khách Hàng:</td>
					<td><form:input path="CustommerName" /></td>
				</tr>
				<tr>
					<td>Số Điện Thoại:</td>
					<td><form:input path="CustommerPhone" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Thêm"></td>
				</tr>						
			</table>
		</form:form>
	</div>
</body>
</html>