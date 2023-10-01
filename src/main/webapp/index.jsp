<%@page import="java.sql.Connection"%>
<%@page import="com.conn.DbConnect"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="component/allCss.jsp"%>
<style type="text/css">
.back-img {
	background: url("image/phone2.jpeg");
	width: 100%;
	height: 80vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>

	<%@include file="component/navbar.jsp"%>

<%--	<%
	User u = (User) session.getAttribute("user");
	out.print(u);
	%>
	<%
	Connection conn = DbConnect.getConn();
	out.print(conn);
	%>
 --%>

	<div class="container-fluid back-img text-center text-white">
		<h1>WELCOME TO PHONE BOOK APP</h1>
	</div>
	<%@include file="component/footer.jsp"%>
</body>
</html>