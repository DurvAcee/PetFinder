<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Dog Details</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/admin.css">
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
<link rel="icon" href="https://img.icons8.com/pastel-glyph/64/26e07f/dog-footprint.png">
</head>
<body>


<nav class="navbar navbar-expand-lg  navbar-dark bg-dark"  style="font-size: x-large;">
 <img src="https://img.icons8.com/pastel-glyph/41/26e07f/dog-sit--v1.png"/>
  <a class="navbar-brand"  style="font-size: 110%;" href="#">PetFinder</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="AdminDashboard.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      
    </ul>
 
  </div>
</nav>
<br>
<form action="UpdateDogData" method="post" enctype="multipart/form-data" >
  <div class="container">
    <h1 style="text-align: center;font-size: 178%;font-weight: bold;">Update  Dogs</h1>
    <hr>

	<label for="email"><b>Id</b></label>
    <input type="text"  value="${dog.dogid}" name="dogid" required>
	

    <label for="email"><b>Name</b></label>
    <input type="text"  value="${dog.dogname}" name="dogname" required>

    <label for="psw"><b>Breed</b></label>
    <input type="text"  value="${dog.dogbreed}" name="dogbreed"  required>
	
	 <label for="psw"><b>DOB</b></label>
    <input type="date"  value="${dog.dogdob}" name="dogdob"  required style="width: inherit;">
    <br>
    <br>
    <label for="psw"><b>Gender</b></label>
    <input type="text"  value="${dog.doggender}" name="doggender"  required>
	
	<br>
    <label for="psw"><b>Status</b></label>
    <input type="text"  value="${dog.dogstatus}" name="dogstatus"  required>
	
	
	<br>
 	 <label for="psw"><b>Image</b></label>
 	  <input type="hidden"  value="${dog.dogfile}" name="dogfile"  required>
    <img alt ="" src="data:image/jpeg;base64,${dog.dogfile}"  style="height: 100px;width: 100px;"> 
	
	
  
    <hr>
  

    <button type="submit" class="registerbtn">Update</button>
  </div>
  
 
</form>



<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
</body>
</html>