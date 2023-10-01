<%@page import="com.conn.DbConnect"%>
<%@page import="com.dao.ContactDAO"%>
<%@page import="com.entity.Contact"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="component/allCss.jsp"%>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<%
	if (user == null) {
		session.setAttribute("invalidMsg", "Login please......");
		response.sendRedirect("login.jsp");
	}
	%>
	<div class="container-fluid ">
		<div class="row p-2">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h5 class="text-center text-success">ADD CONTACT DETAILS</h5>

						<%
						
						String errorMsg = (String) session.getAttribute("failedMsg");
						 if (errorMsg != null) {
						%>
						<p class="text-center text-danger"><%=errorMsg%></p>
						<%
						session.removeAttribute("failedMsg");
						}
						%>


						<form action="update" method="post">

							<%
							int cid = Integer.parseInt(request.getParameter("cid"));
							ContactDAO dao = new ContactDAO(DbConnect.getConn());
							Contact c = dao.getContactId(cid);
							%>
							<input type="hidden" value="<%=cid%>" name="cid">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Enter
									Name</label> <input value="<%=c.getName()%>" name="name" type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Enter
									Email address</label> <input value="<%=c.getEmail()%>" name="email"
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp">

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Enter
									phone number</label> <input value="<%=c.getPhoneNumber()%>"
									name="phno" type="number" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>
							<div class="mb-3">
								<textarea rows="3" cols="" placeholder="Enter About"
									name="about" class="form-control"><%=c.getAbout()%></textarea>
							</div>
							<div class="text-center mt-2">
								<button type="submit" class="btn btn-success">Update
									Contact</button>
							</div>
						</form>


					</div>

				</div>

			</div>


		</div>


	</div>


	<div style="margin-top: 350px">
		<%@include file="component/footer.jsp"%>

	</div>
</body>
</html>