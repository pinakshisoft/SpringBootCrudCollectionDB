<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#form {
margin-left: 550px;
border: 1;

}
</style>
</head>
<body>
<%@include file="menu.jsp" %>
<h2 style="text-align: center;color:blue">WELCOME TO PRODUCT REGISTER PAGE</h2>
<hr>
<form id="form" action="save" method="POST">
<pre>
PRODUCTID     :<input type="text" name="prodId"/><br>
PRODUCTCODE   :<input type="text" name="prodCode"/><br>
PRODUCTCOST   :<input type="text" name="prodCost"/><br>
<input type="submit" value="ADD"/>
</pre>
</form>
${msg}
</body>
</html>