<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Dashboard </title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link href="assets/css/styl2.css" rel="stylesheet"> 
<link rel="icon" href="https://img.icons8.com/pastel-glyph/64/26e07f/dog-footprint.png">
</head>
<style>

.carder
{	
margin-left: 86px;
}
</style>
<body onload="myFunction()">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="padding: 1%;">
  <img src="https://img.icons8.com/pastel-glyph/41/26e07f/dog-sit--v1.png"/>
  <a class="navbar-brand"  style="margin-left: -2%;font-size: 110%;" href="Home.jsp">PetFinder</a>
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

<section id="hero">
    <div class="hero-container" data-aos="fade-up">
          <h1 style="margin-top: 11%;">Welcome to user dashboard</h1> 
        
    </div>
</section><!-- End Hero -->

<input type="hidden"  value="${obj}"  id="object" name="object">
<input type="hidden"  value="${rook}"  id="object1" name="object1">

<br>
	<p id="demo"></p>
<div class="row"  style="margin-top: 17%;">	
<div class="card" style="width: 20rem; margin-left: 51px;">
  <img class="card-img-top" src="https://media.istockphoto.com/photos/cute-grumpy-pug-posing-for-the-camera-picture-id961802740?k=6&m=961802740&s=612x612&w=0&h=bmJqMOd80y_dIlK_MPCdASYdh_7GJ9UVs9laVMwXYSM=" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><b>View Dogs</b></h5>
    <p class="card-text">Click on the button below to See the list of Dogs</p>
   <form action="userDashboard" method="post"><br/>
   <input type="hidden" value="${getdata.userid}"  name="userid">
	<input type ="hidden" value="${getdata.username}"  name="username">
	<input type="hidden" value="${getdata.useremail}"  name="useremail">
	<input type="hidden" value="${getdata.usermobile}"  name="usermobile">
	<input type="hidden" value="${getdata.userpassword}"  name="userpassword">
 	<button type="submit" class="btn btn-success">Click Here</button>
    </form>
  </div>
</div>


<div class="card carder"  style="width: 20rem;">
  <img class="card-img-top" src="https://media.istockphoto.com/photos/smiling-boston-terrier-dog-on-white-background-closeup-picture-id483531287?k=6&m=483531287&s=612x612&w=0&h=Bdg8NQzynvYbejiKJzSzyrI77-yUvwJb9kSHP07E3Xk=" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><b>Donate and Help</b></h5>
    <p class="card-text">Click on the button below to Help more Street Dogs </p>
    <form action="payment" method="post"><br/>
    
	<button type="submit" class="btn btn-success">Click Here</button>
    </form>
  </div>
 </div>
 
 <div class="card carder"  style="width: 20rem;">
  <img class="card-img-top" src="https://media.istockphoto.com/photos/portrait-of-a-english-bulldog-picture-id168620477?k=6&m=168620477&s=612x612&w=0&h=JomvsXQNBvRonnsUmVV9aZN_BCm4GAKVimaJUK8Z78g=" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title" style="font-weight: bold;">Edit Profile</h5>
    <p class="card-text">Click here tp edit your profile</p>
   <form action="EditUSerProfile" method="post">
	<input type="hidden" value="${getdata.userid}"  name="userid">
	<input type ="hidden" value="${getdata.username}"  name="username">
	<input type="hidden" value="${getdata.useremail}"  name="useremail">
	<input type="hidden" value="${getdata.usermobile}"  name="usermobile">
	<input type="hidden" value="${getdata.userpassword}"  name="userpassword">
	  
	<button type="submit" class="btn btn-success" style="margin-top: 8%;">Click Here</button>
    </form>
  </div>
</div>
 
 
 
  
<div class="card" style="width: 20rem;margin-left: 51px;margin-top: 55px;">
  <img class="card-img-top" src="https://media.istockphoto.com/photos/cats-bengal-breed-picture-id178366820?k=6&m=178366820&s=612x612&w=0&h=NXd_MPBbfhEaujOJD5GX9wFtoHCHloV37VraoeOv5ic=" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><b>View Cats</b></h5>
    <p class="card-text">Click on the button below to See the list of Cats </p>
    <form action="payment" method="post"><br/>
   	<button type="button" class="btn btn-info" style="margin-top: 5%;">Coming Soon....</button>
   	</form>
  </div>
</div>
</div>

<br>
<br>

<h2 style="text-align:center;font-weight: bold;font-size: 163%;">Contact Us:-</h2>
<br>
<section class="text-gray-600 body-font relative">
  <div class="absolute inset-0 bg-gray-300">
 
    <iframe width="100%" height="100%" frameborder="0" marginheight="0" marginwidth="0" title="map" scrolling="no" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d242118.14199614953!2d73.72288117003453!3d18.524564859944654!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2bf2e67461101%3A0x828d43bf9d9ee343!2sPune%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1620831150320!5m2!1sen!2sin" style="filter: grayscale(1) contrast(1.2) opacity(0.4);"></iframe>
  </div>
  <div class="container px-5 py-24 mx-auto flex">
    <div class="lg:w-1/3 md:w-1/2 bg-white rounded-lg p-8 flex flex-col md:ml-auto w-full mt-10 md:mt-0 relative z-10 shadow-md">
      <h2 class="text-gray-900 text-lg mb-1 font-medium title-font">Feedback</h2>
       <form action="feedbackData2" method="post">
      <div class="relative mb-4">
        <label for="email" class="leading-7 text-sm text-gray-600">Email</label>
        <input type="email" id="email" name="email" class="w-full bg-white rounded border border-gray-300 focus:border-green-500 focus:ring-2 focus:ring-green-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out" required>
      </div>
      <div class="relative mb-4">
        <label for="message" class="leading-7 text-sm text-gray-600">Message</label>
        <textarea id="message" name="message" class="w-full bg-white rounded border border-gray-300 focus:border-green-500 focus:ring-2 focus:ring-green-200 h-32 text-base outline-none text-gray-700 py-1 px-3 resize-none leading-6 transition-colors duration-200 ease-in-out" required></textarea>
      </div>
     
     <input type="submit" value="submit" class="inline-flex text-white bg-green-500 border-0 py-2 px-6 focus:outline-none hover:bg-green-600 rounded text-lg">
     
       </form>
       </div>
  </div>
</section>





<footer class="text-gray-600 body-font">
    <div class="container px-5 py-8 mx-auto flex items-center sm:flex-row flex-col">
      <a class="flex title-font font-medium items-center md:justify-start justify-center text-gray-900">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-10 h-10 text-white p-2 bg-green-500 rounded-full" viewBox="0 0 24 24">
          <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path>
        </svg>
        <span class="ml-3 text-xl">PetFinder</span>
      </a>
      <p class="text-sm text-gray-500 sm:ml-4 sm:pl-4 sm:border-l-2 sm:border-gray-200 sm:py-2 sm:mt-0 mt-4">- 2021 Dog Adoption ”
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
  
  <script>
function myFunction() {
 myFunction= function(){}; 
 var frew=document.getElementById('object').value
 var frew1=document.getElementById('object1').value

   if (frew=="one") {
swal({
  title: "Login Succesfully",
  text: "Welcome to PetFinder!",
  icon: "success",
});
		frew = "two";
	}
	
	if (frew1=="one") {
swal({
  title: "Feedback Successfully Submited",
  text: "Thanks for giving feedbacks",
  icon: "success",
});
		frew1 = "two";
	}
	
	
}
</script>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>