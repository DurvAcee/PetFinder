<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="icon" href="https://img.icons8.com/pastel-glyph/64/26e07f/dog-footprint.png">
</head>
<style>
.nice{
padding:2%;
}
.bang{
font-weight: bold;
}
</style>
<body onload="myFunction()">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="padding: 1%;">
  <img src="https://img.icons8.com/pastel-glyph/41/26e07f/dog-sit--v1.png"/>
  <a class="navbar-brand"  style="margin-left: 0%;font-size: 110%;" href="Home.jsp">PetFinder</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" style="justify-content: flex-end;" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav"  style="justify-content: flex-end;margin-right: 2%;">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="userDashboard3333" style="font-size: 105%;color: white;">Home <span class="sr-only">(current)</span></a>
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


<input type="hidden"  value="${obj}"  id="object" name="object">



<br>
<!-- <div class="nice"> -->
<br>
<div class="container-fluid">

<!-- DataTales Example -->
<div class="card shadow mb-4">
  <div class="card-header py-3">
    <h3><b>Nearby Dogs</b>
    </h6>
  </div>
    

  <div class="card-body">

    <div class="table-responsive">
  
      <table class="table table-striped" id="dataTable" width="100%" cellspacing="0">
        <thead class="thead-dark">
         <tr style="color: #858799;text-align: center;">
         <th>No.</th>
         <th>Photo</th>
         <th>Name</th>
        <th>Details</th>
      

          </tr>
        </thead>
       <tbody style="text-align: center;">
 	 
 	    <%!  int count; %>
 	    <% count=1; %>
    <c:forEach var="renter" items="${dog}">
 
 
    <form action="viewDog" method="post" enctype="multipart/form-data" >
     <tr>
    
 
    <td scope="row"> <b> <input type="hidden" value="${renter.dogid}" name="dogid"><%=count%> </b></td>
    
    <td scope="row"><input type="hidden" value="${renter.dogfile}" name="dogfile"> <center> <img alt ="" src="data:image/jpeg;base64,${renter.dogfile}"  style="height: 150px;width: 175px;"> </center> </td>
     <td scope="row"> <b> <input type="hidden" value="${renter.dogname}" name="dogname"> ${renter.dogname} </b></td>
	    <input type="hidden" value="${renter.dogbreed}" name="dogbreed">
	    <input type="hidden" value="${renter.dogstatus}" name="dogstatus">
    <input type="hidden" value="${renter.doggender}" name="doggender">
    <input type="hidden" value="${renter.dogdob}" name="dogdob">
    
    <input type="hidden" value="${getdata.userid}"  name="userid">
	<input type ="hidden" value="${getdata.username}"  name="username">
	<input type="hidden" value="${getdata.useremail}"  name="useremail">
	<input type="hidden" value="${getdata.usermobile}"  name="usermobile">
	<input type="hidden" value="${getdata.userpassword}"  name="userpassword">
  
   
    
   <td><input type="submit" class="btn btn-success"  value="View More" ></form></td>

</tr>  

 <%count++;%>
</c:forEach>

    </tbody>
      </table>

    </div>
  </div>
</div>

</div>

<!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle" style="margin-left: 36%;font-size: 214%;">Add Dog</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <div class="container">
       
       
     <form action="detailDog" method="post" enctype="multipart/form-data">
     
  <div class="form-group">
    <label for="exampleInputEmail1" class="bang">Name:-</label>
    <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter name">
  </div>
  
  
  <div class="form-group">
    <label for="exampleInputEmail1" class="bang">Breed:-</label>
    <input type="text" name="breed" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter breed name">
  </div>
  

  
  
    <label for="Gender" class="bang">Select dog Gender:-</label>
  
   
 <div class="form-check">
  <input class="form-check-input" type="radio" name="gender" id="flexRadioDefault1" value="male">
  <label class="form-check-label" for="Male">
    Male
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="gender" id="flexRadioDefault2" value="female">
  <label class="form-check-label" for="Female">
    Female
  </label>
</div>
 
 <br>
<div class="form-group">
    <label for="exampleInputEmail1" class="bang">DOB:-</label>
    <input type="date" name="dob" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="enter dob">
  </div>
  
   <label for="Gender" class="bang">Select dog Gender:-</label>
  
   
 <div class="form-check">
  <input class="form-check-input" type="radio" name="status" id="flexRadioDefault1" value="Available">
  <label class="form-check-label" for="Available">
    Available
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="status" id="flexRadioDefault2" value="Not Available">
  <label class="form-check-label" for="Not Available">
    Not Available
  </label>
</div>
  
<br>
  <div class="form-group">
    <label for="exampleFormControlFile1" class="bang">Select image:-</label>
    <input type="file" name="file" class="form-control-file" id="exampleFormControlFile1">
  </div>
 

   
    
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Submit</button>
         </div>
         </form>
         
         </div>
      </div>
        
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
    text: "Welcome to PetFinder!",
    icon: "success",
  });
  		frew = "two";
  	}
  }
  </script>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<footer class="text-gray-600 body-font">
  <div class="container px-5 py-8 mx-auto flex items-center sm:flex-row flex-col">
    <a class="flex title-font font-medium items-center md:justify-start justify-center text-gray-900">
      <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-10 h-10 text-white p-2 bg-green-500 rounded-full" viewBox="0 0 24 24">
        <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path>
      </svg>
      <span class="ml-3 text-xl">PetFinder</span>
    </a>
    <p class="text-sm text-gray-500 sm:ml-4 sm:pl-4 sm:border-l-2 sm:border-gray-200 sm:py-2 sm:mt-0 mt-4">-2020 PetFinder
      <a href="https://twitter.com/knyttneve" class="text-gray-600 ml-1" rel="noopener noreferrer" target="_blank">@Deep Trivedi</a>
    </p>
    <span class="inline-flex sm:ml-auto sm:mt-0 mt-4 justify-center sm:justify-start">
      <a class="text-gray-500">
        <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
          <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
        </svg>
      </a>
      <a class="ml-3 text-gray-500">
        <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
          <path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
        </svg>
      </a>
      <a class="ml-3 text-gray-500">
        <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
          <rect width="20" height="20" x="2" y="2" rx="5" ry="5"></rect>
          <path d="M16 11.37A4 4 0 1112.63 8 4 4 0 0116 11.37zm1.5-4.87h.01"></path>
        </svg>
      </a>
      <a class="ml-3 text-gray-500">
        <svg fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="0" class="w-5 h-5" viewBox="0 0 24 24">
          <path stroke="none" d="M16 8a6 6 0 016 6v7h-4v-7a2 2 0 00-2-2 2 2 0 00-2 2v7h-4v-7a6 6 0 016-6zM2 9h4v12H2z"></path>
          <circle cx="4" cy="4" r="2" stroke="none"></circle>
        </svg>
      </a>
    </span>
  </div>
</footer>

</body>
</html>