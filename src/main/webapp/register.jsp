<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="component/allCss.jsp"%>
</head>
<body style="background-color: #9EE2F1;">
	<%@include file="component/navbar.jsp"%>
	<div class="container-fluid ">
		<div class="row p-2">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h5 class="text-center text-success">REGISTRATION PAGE</h5>
						
						<%
						String sucssMsg = (String)session.getAttribute("sucssMsg");
						String errorMsg=(String)session.getAttribute("errorMsg");
						if(sucssMsg!=null)
						{
						%>
						<p class="text-center text-success"><%=sucssMsg %></p>
						<%
						session.removeAttribute("sucssMsg");
						}
						else if(errorMsg!=null)
						{
						%>
						<p class="text-center text-danger"><%=errorMsg %></p>
						<%
						session.removeAttribute("errorMsg");
						}
						%>
						
						<form action="register" method="post">

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Enter
									Name</label> <input name="name" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input name="email" type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input name="password" type="password" class="form-control"
									id="exampleInputPassword1">
							</div>

							<div class="text-center mt-2">
								<button type="submit" class="btn btn-primary">REGISTER</button>
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