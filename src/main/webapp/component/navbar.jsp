<%@page import="com.entity.User"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><i
			class="fa-solid fa-square-phone"></i> Phone Book</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="index.jsp"><i
						class="fa-solid fa-house-circle-check"></i> Home </a></li>
				<li class="nav-item"><a class="nav-link active"
					href="addContact.jsp"><i class="fa-solid fa-user-plus"></i> Add
						Phone Number</a></li>

				<li class="nav-item"><a class="nav-link active"
					href="viewContact.jsp"><i class="fa-solid fa-users-viewfinder"></i>
						View Contact</a></li>
			</ul>



			<%
			User user = (User) session.getAttribute("user");
			if (user == null) {
			%>
			<form class="d-flex ">
				<a href="login.jsp" class="btn btn-success"><i
					class="fa-solid fa-user"></i> Login</a> <a href="register.jsp"
					class="btn btn-dark ml-2"><i class="fa-solid fa-registered"></i>
					Register</a>
			</form>
			<%
			} else {
			%>
			<form class="d-flex ">
				<button class="btn btn-success"><%=user.getName()%></button>
				<a data-bs-toggle="modal"
			data-bs-target="#exampleModal" class="btn btn-danger ml-2">LOGOUT <i
					class="fa-solid fa-right-from-bracket"></i></a>
			</form>
			<%
			}
			%>

		</div>

		<!-- Logout page -->


		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">LOGOUT</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body" text-center>
					<h6>DO you want to really logout?</h6>
					<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">CLOSE</button>
						<a href="logout" class="btn btn-primary">LOGOUT</a>
					
					</div>
					
				</div>
			</div>
		</div>

		<!-- Logout page -->
	</div>
</nav>


