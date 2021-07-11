<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Data</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
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
<!-- <div class="nice"> -->
<br>
<div class="container-fluid">

<!-- DataTales Example -->
<div class="card shadow mb-4">
  <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-secondary">Manage Dog
          
		<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#exampleModalLong">
 		Add Dog Details
</button>
		
    </h6>
  </div>
    

  <div class="card-body">

    <div class="table-responsive">
  
      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
         <tr style="color: #858799;text-align: center;">
         <th>Count</th>
         <th>Image</th>
         <th>Name</th>
         <th>Breed</th>
       	 <th>Status</th>
        <th>Gender</th>
        <th>dob</th>
        <th>Edit</th>
        <th>Delete</th>

          </tr>
        </thead>
       <tbody style="text-align: center;">
 	 
 	    <%!  int count; %>
 	    <% count=1; %>
    <c:forEach var="renter" items="${dog}">
 
 
    <form action="updateDog" method="post" enctype="multipart/form-data" >
     <tr>
    
   <td scope="row"> <input type="hidden" value="${renter.dogid}" name="dogid"><%=count %></td>
   
    <td scope="row"><input type="hidden" value="${renter.dogfile}" name="dogfile"> <img alt ="" src="data:image/jpeg;base64,${renter.dogfile}"  style="height: 150px;width: 200px;"> </td>
     <td scope="row"> <input type="hidden" value="${renter.dogname}" name="dogname">${renter.dogname}</td>
      <td scope="row"> <input type="hidden" value="${renter.dogbreed}" name="dogbreed">${renter.dogbreed}</td>
      <td scope="row"> <input type="hidden" value="${renter.dogstatus}" name="dogstatus">${renter.dogstatus}</td>
       <td scope="row"> <input type="hidden" value="${renter.doggender}" name="doggender">${renter.doggender}</td>
         <td scope="row"> <input type="hidden" value="${renter.dogdob}" name="dogdob">${renter.dogdob}</td>
   
   <td><input type="submit" class="btn btn-secondary"  value="Edit" ></form></td>
   <td>
    <form action="deleteDog" method="post">
    <input type="hidden" value="${renter.dogid}" name="dogid">
   <input type="submit" class="btn btn-danger"   value="Delete" ></form>
   </td>
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
    <input type="text" name="dogname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter name">
  </div>
  
  
  <div class="form-group">
    <label for="exampleInputEmail1" class="bang">Breed:-</label>
    <input type="text" name="dogbreed" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter breed name">
  </div>
  

  
  
    <label for="Gender" class="bang">Select dog Gender:-</label>
  
   
 <div class="form-check">
  <input class="form-check-input" type="radio" name="doggender" id="flexRadioDefault1" value="male">
  <label class="form-check-label" for="Male">
    Male
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="doggender" id="flexRadioDefault2" value="female">
  <label class="form-check-label" for="Female">
    Female
  </label>
</div>
 
 <br>
<div class="form-group">
    <label for="exampleInputEmail1" class="bang">DOB:-</label>
    <input type="date" name="dogdob" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="enter dob">
  </div>
  
   <label for="Gender" class="bang">Select Dog Availability:-</label>
  
   
 <div class="form-check">
  <input class="form-check-input" type="radio" name="dogstatus" id="flexRadioDefault1" value="Available">
  <label class="form-check-label" for="Available">
    Available
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="dogstatus" id="flexRadioDefault2" value="Not Available">
  <label class="form-check-label" for="Not Available">
    Not Available
  </label>
</div>
  
<br>
  <div class="form-group">
    <label for="exampleFormControlFile1" class="bang">Select image:-</label>
    <input type="file" name="dogfile" class="form-control-file" id="exampleFormControlFile1">
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





<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>