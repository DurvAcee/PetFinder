<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="icon" href="https://img.icons8.com/pastel-glyph/64/26e07f/dog-footprint.png">
</head>
<style>

.carder
{	
margin-left: 177px;
}
</style>
<body onload="myFunction()">

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


<div class="alert alert-dark" role="alert" style="font-size: 27px;font-weight: bold;font-family: sans-serif;margin-top: 23px;text-align: center;">
  Admin Dashboard:- 
  
  <input type="hidden"  value="${obj}"  id="object" name="object">
</div>

<br>
	<p id="demo"></p>
<div class="row">	
<div class="card" style="width: 18rem; margin-left: 32px;">
  <img class="card-img-top" src="https://media.istockphoto.com/photos/big-ears-upside-down-picture-id133441603?k=6&m=133441603&s=612x612&w=0&h=pZCu4lgvA0JPkuoTRMUfN1h5W_anmE5SAbvCtqTJ7xw=" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title" style="font-size: 145%; font-weight: bold;">View Admin</h5>
    <p class="card-text">Click below button to add update and delete admin.</p>
   <form action="ManageAdmin" method="post">
	<button type="submit" class="btn btn-dark" style="margin-top: 8%;">Click Here</button>
    </form>
  </div>
</div>


<div class="card carder" style="width: 18rem;">
  <img class="card-img-top" src="https://images.pexels.com/photos/5731875/pexels-photo-5731875.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title" style="font-size: 145%; font-weight: bold;">Add Dogs</h5>
    <p class="card-text">Click below button to add update and delete dogs.</p>
    <form action="ManageDog" method="post">
	<button type="submit" class="btn btn-dark" style="margin-top: 8%;">Click Here</button>
    </form>
  </div>
 </div>
  
<div class="card carder" style="width: 18rem;">
  <img class="card-img-top" src="https://images.pexels.com/photos/825949/pexels-photo-825949.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"  style="font-size: 145%; font-weight: bold;">View Feedbacks</h5>
      <p class="card-text">Click below button to view all the feedbacks</p>
     <form action="Managefeedbacks" method="post">
	<button type="submit" class="btn btn-dark" style="margin-top: 8%;">Click Here</button>
    </form>
</div>
</div>


<div class="card" style="width: 18rem;margin-left: 32px;margin-top: 50px;">
  <img class="card-img-top" src="https://media.istockphoto.com/photos/portrait-of-a-english-bulldog-picture-id168620477?k=6&m=168620477&s=612x612&w=0&h=JomvsXQNBvRonnsUmVV9aZN_BCm4GAKVimaJUK8Z78g=" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title" style="font-size: 145%; font-weight: bold;">View All Register User</h5>
    <p class="card-text">Click here to see all the User and modify the changes</p>
   <form action="ViewUser" method="post">
	<button type="submit" class="btn btn-dark" style="margin-top: 8%;">Click Here</button>
    </form>
  </div>
</div>


  
<div class="card carder" style="width: 18rem;margin-top: 50px;">
  <img class="card-img-top" src="https://images.pexels.com/photos/825949/pexels-photo-825949.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"  style="font-size: 145%; font-weight: bold;">View AdoptedDog</h5>
      <p class="card-text">Click below button to view all the AdoptedDog</p>
     <form action="AdoptedDog" method="post">
	<button type="submit" class="btn btn-dark" style="margin-top: 8%;">Click Here</button>
    </form>
</div>
</div>


</div>

<script>
function myFunction() {
 myFunction= function(){}; 
 var frew=document.getElementById('object').value

	
  
  
   if (frew=="one") {
swal({
  title: "Login Succesfully",
  text: "Welcome to Admin Pannel",
  icon: "success",
});
		frew = "two";
	}
	

}
</script>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>