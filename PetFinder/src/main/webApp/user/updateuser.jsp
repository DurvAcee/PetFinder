<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User Data</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/admin.css">
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
<link rel="icon" href="https://img.icons8.com/pastel-glyph/64/26e07f/dog-footprint.png">
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="padding: 1%;">
  <img src="https://img.icons8.com/pastel-glyph/41/26e07f/dog-sit--v1.png"/>
  <a class="navbar-brand"  style="font-size: 110%;" href="Home.jsp">PetFinder</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" style="justify-content: flex-end;" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav"  style="justify-content: flex-end;margin-right: 2%;">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="Home.jsp" style="font-size: 105%;color: white;">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="font-size: 105%;color: white;">About us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="font-size: 105%;color: white;">Services</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="font-size: 105%;color: white;">Contact us	</a>
      </li>
      <li class="nav-item active">
        <a class="btn btn-success" style="margin-top: 3%;" href="Home.jsp"><h5 style="font-size: large;color: aliceblue;margin-left: -22%;"> Logout </h5> </a>
      </li>
    </ul>
  </div>
</nav>
<br>
<form action="UpdateUserData" method="post" enctype="multipart/form-data" >
  <div class="container">
    <h1 style="text-align: center;font-size: 178%;font-weight: bold;">Update Data</h1>
    <hr>

	<label for="email"><b>Id</b></label>
    <input type="text"  value="${admin.userid}" name="userid" required readonly="readonly">
	

    <label for="email"><b>Name</b></label>
    <input type="text"  value="${admin.username}" name="username" required>

    <label for="psw"><b>Email</b></label>
    <input type="text"  value="${admin.useremail}" name="useremail"  required>
    
    <label for="psw"><b>Mobile</b></label>
    <input type="text"  value="${admin.usermobile}" name="usermobile"  required>
	
	 <label for="psw"><b>Password</b></label>
    <input type="text"  value="${admin.userpassword}" name="userpassword"  required ">
    <br>
    
	
	

    <button type="submit" class="registerbtn">Update</button>
  </div>
  
 
</form>



<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
</body>
</html>