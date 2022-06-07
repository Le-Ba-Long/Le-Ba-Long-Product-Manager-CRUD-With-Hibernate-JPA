<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order</title>
</head>
<body>
<div align="center">
		<h2>New Order</h2>
		<form:form action="save" method="post" modelAttribute="orderDetail">
			<table border="0" cellpadding="5">
				<tr>
					<td>Product:</td>
					<td><form:input type="datetime" path="buydate" /></td>
				</tr>
				<tr>
					<td>Provider:</td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td>Price:</td>
					<td><form:input path="sdt" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Save"></td>
				</tr>						
			</table>
		</form:form>
	</div>
</body>
</html>