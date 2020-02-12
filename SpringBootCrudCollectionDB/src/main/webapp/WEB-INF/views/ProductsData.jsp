<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#table {
margin-left: 490px;

}
</style>
</head>
<body>
<%@include file="menu.jsp" %>
	<h2 style="text-align: center;color:blue">WELCOME TO PRODUCT DATA PAGE</h2>
	<hr>
	<c:choose>
		<c:when test="${!empty list }">
			<table id="table" border=1>
				<tr>
					<th>PRODUCTID</th>
					<th>PRODUCTCODE</th>
					<th>PRODUCTCOST</th>
					<th>SELECT</th>
				</tr>
				<c:forEach items="${list}" var="ob">
					<tr>
						<td>${ob.prodId}</td>
						<td>${ob.prodCode}</td>
						<td>${ob.prodCost}</td>
						<td><a href="delete?pid=${ob.prodId}">DELETE</a></td>
					</tr>

				</c:forEach>
			</table>
		</c:when>
		<c:otherwise>
			<h4>NO DATA FOUND</h4>
		</c:otherwise>
	</c:choose>
</body>
</html>