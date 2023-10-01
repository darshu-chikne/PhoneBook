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
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="text-center text-success">LOGIN PAGE</h5>
						
						<%
						String invalid = (String)session.getAttribute("invalidMsg");
						if(invalid!=null)
						{
						%>
						<p class="text-center text-danger"><%=invalid %></p>
						<%
						session.removeAttribute(invalid);
						}
						%>
						
						
						<%
						String logMsg = (String)session.getAttribute("logMsg");
						if(logMsg!=null)
						{
						%>
						<p class="text-center text-success"><%=logMsg %></p>
						<%
						session.removeAttribute(logMsg);
						}
						%>
						<form action="login" method="post">

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
								<button type="submit" class="btn btn-primary">LOGIN</button>
							</div>
						</form>


					</div>

				</div>

			</div>


		</div>


	</div>

	<div style="margin-top: 480px">
		<%@include file="component/footer.jsp"%>

	</div>

</body>
</html>