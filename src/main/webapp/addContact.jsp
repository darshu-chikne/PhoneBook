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
						String sucssMsg = (String)session.getAttribute("succMsg");
						String errorMsg=(String)session.getAttribute("failedMsg");
						if(sucssMsg!=null)
						{
						%>
						<p class="text-center text-success"><%=sucssMsg %></p>
						<%
						session.removeAttribute("succMsg");
						}
						else if(errorMsg!=null)
						{
						%>
						<p class="text-center text-danger"><%=errorMsg %></p>
						<%
						session.removeAttribute("failedMsg");
						}
						%>
						
						 
						<form action="addContact" method="post">

							<%
							if (user != null) {
							%><input type="hidden" value="<%=user.getId()%>" name="userid">
							<%
							}
							%>

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Enter
									Name</label> <input name="name" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Enter
									Email address</label> <input name="email" type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp">

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Enter
									phone number</label> <input name="phno" type="number"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp">

							</div>
							<div class="mb-3">
								<textarea rows="3" cols="" placeholder="Enter About"
									name="about" class="form-control"></textarea>
							</div>
							<div class="text-center mt-2">
								<button type="submit" class="btn btn-success">Save
									Details</button>
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