<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Create User</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<h2 class="text-center">Create User</h2>
				<form action="saveuser" method="post">
					<div class="mb-3">
						<label for="firstname" class="form-label">First Name</label> <input
							type="text" class="form-control"  name="firstname"
							placeholder="Enter your first name"> 
					</div>
					
					<div class="mb-3">
						<label for="lastname" class="form-label">Last Name</label> <input
							type="text" class="form-control"  name="lastname"
							placeholder="Enter your first name"> 
					</div>
				
					<div class="mb-3">
						<label for="email" class="form-label">Email address</label> <input
							type="text" class="form-control" name="email"  
							placeholder="Enter your email"> 
							
					</div>
					<div class="mb-3">
						<label for="password" class="form-label">Password</label> <input
							type="password" class="form-control" name="password"
							placeholder="Enter your password"> 
					</div>
					<button type="submit" class="btn btn-primary w-100">Create User</button>
				

			</div>

		</div>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>