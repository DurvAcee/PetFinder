<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="css/usermodel.css">
   <link href="assets/css/styl1.css" rel="stylesheet"> 
   <link rel="icon" href="https://img.icons8.com/pastel-glyph/64/26e07f/dog-footprint.png">
   
  
<!--   <link rel="stylesheet" type="text/css" href="css/userslider.css"> -->
  <title>Dog Adoption</title>
  <input type="hidden"  value="${user}"  id="object" name="object">
<input type="hidden"  value="${rook}"  id="object1" name="object1">
<input type="hidden"  value="${email}"  id="object2" name="object2">

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
<link rel="icon" href="https://img.icons8.com/pastel-glyph/64/26e07f/dog-footprint.png">
<link rel="icon" href="https://img.icons8.com/pastel-glyph/64/26e07f/dog-footprint.png">
</head>
<body onload="myFunction()" style="font-family: sans-serif;">


<input type="hidden" value="${user}" name="user" id="user">

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="padding: 1%;">
  <img src="https://img.icons8.com/pastel-glyph/41/26e07f/dog-sit--v1.png"/>
  <a class="navbar-brand"  style="margin-left: -2%;font-size: 110%;" href="#">PetFinder</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" style="justify-content: flex-end;" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav"  style="justify-content: flex-end;margin-right: 2%;">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#" style="font-size: 105%;color: white;">Home <span class="sr-only">(current)</span></a>
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
    </ul>
  </div>
</nav>
<!-- End Header -->

<!-- ======= Hero Section ======= -->
<section id="hero">
    <div class="hero-container" data-aos="fade-up">
         <h1 style="margin-top: 11%;">Welcome to PetFinder</h1> 
        
    </div>
</section>
<!-- End Hero -->





<section class="text-gray-600 body-font" style="margin-top: 17%;">
  <div class="container mx-auto flex px-5 py-24 md:flex-row flex-col items-center">
    <div class="lg:flex-grow md:w-1/2 lg:pr-24 md:pr-16 flex flex-col md:items-start md:text-left mb-16 md:mb-0 items-center text-center">
      <h1 class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900" style="font-weight: bold;">Why to Adopt Dogs?? 
      
      </h1>
      <p class="mb-8 leading-relaxed">1. You save a life.</p>
      <p class="mb-8 leading-relaxed" style="margin-top: -9%;">2. You help break the cycle of pet overpopulation.</p>
      <p class="mb-8 leading-relaxed" style="margin-top: -9%;">3. You choose from a great selection of animals.</p>
      <p class="mb-8 leading-relaxed" style="margin-top: -9%;">4. You support a valuable charity and community institution</p>
      <p class="mb-8 leading-relaxed" style="margin-top: -9%;">5. You encourage others to adopt animals from shelters.</p>
      <div class="flex justify-center">
        <button onclick="document.getElementById('modal-login').style.display='block'" class="inline-flex text-white bg-green-500 border-0 py-2 px-6 focus:outline-none hover:bg-green-600 rounded text-lg">login</button>
        <button onclick="document.getElementById('modal-register').style.display='block'" class="ml-4 inline-flex text-gray-700 bg-gray-100 border-0 py-2 px-6 focus:outline-none hover:bg-gray-200 rounded text-lg">Register</button>
      </div>
    </div>
    <div class="lg:max-w-lg lg:w-full md:w-1/2 w-5/6">
<!--         <img class="object-cover object-center rounded" alt="hero" src="https://source.unsplash.com/720x600/?wifi">    -->
      <video width="720" height="600" autoplay muted loop>
  <source src="video/dog.mp4" type="video/mp4">
</video>
    </div>
  </div>

  <!-- PopUp form for login form -->
  <div id="modal-login" class="modal">
  
    <form class="modal-content animate" action="userdashboard" method="post">
          
      <div class="imgcontainer">
        <span onclick="document.getElementById('modal-login').style.display='none'" class="close" title="Close PopUp">&times;</span>
        <h1 style="text-align:center">LogIn</h1>
      </div>
  
      <div class="container">
        <input type="text" placeholder="Enter email" name="useremail" required>
        <input id="password-field1" placeholder="Enter Password" type="password"  class="form-control" name="userpassword" required>
        <span toggle="#password-field1" class="fa fa-lg fa-eye field-icon toggle-password1"></span>        
        <button type="submit" name="loginBtn">Login</button>
        <input type="checkbox" style="margin:26px 30px;"> Remember me      
        <a href="#" style="text-decoration:none; float:right;color: #0a6f4d; margin-right:34px; margin-top:26px;">Forgot Password ?</a>
      </div>
      
    </form>
    
  </div>

<!-- PopUp form for Registration  form -->
<div id="modal-register" class="modal">
  <form class="modal-content animate" method="post" action="userregister">
    <div class="imgcontainer">
      <span onclick="document.getElementById('modal-register').style.display='none'" class="close" title="Close PopUp">&times;</span>
      <h1 style="text-align:center">Registration</h1>
    </div>

    <div class="container">
      <input type="text" placeholder="Enter Name" name="username" required>
      <input type="text" placeholder="Enter Email" name="useremail" required>
      <input type="text" placeholder="Enter Mobile" name="usermobile" required>
      
      <!-- <input type="password" id="password" placeholder="Enter Password" name="psw" required>    
      <i class="far fa-eye" id="togglePassword"></i> -->

      <input id="password-field" placeholder="Enter Password" type="password"  class="form-control" name="userpassword" required>
      <span toggle="#password-field" class="fa fa-lg fa-eye field-icon toggle-password"></span>
  
            
    
  
  </select>
      <button type="submit" name="reg" >Register</button>
      
      
    </div>
    
  </form>
  
</div>




  <!-- Pop up javascript form for login -->
  <script>
    // If user clicks anywhere outside of the modal, Modal will close
    
    var modal = document.getElementById('modal-login');
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
    </script>
    
    
    
    <!-- Pop up javascript form for Registration -->
    <script>
    // If user clicks anywhere outside of the modal, Modal will close
    var modal = document.getElementById('modal-register');
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
  </script>

  
<script>
$(".toggle-password").click(function() {
   $(this).toggleClass("fa-eye fa-eye-slash");
   var input = $($(this).attr("toggle"));
   if (input.attr("type") == "password") {
     input.attr("type", "text");
   } else {
     input.attr("type", "password");
   }
});
</script>


<script>
$(".toggle-password1").click(function() {
   $(this).toggleClass("fa-eye fa-eye-slash");
   var input = $($(this).attr("toggle"));
   if (input.attr("type") == "password") {
     input.attr("type", "text");
   } else {
     input.attr("type", "password");
   }
});

</script>



  




<h2 style="text-align: center"></h2>
 	 <section class="text-gray-600 body-font">
    <div class="container px-5 py-24 mx-auto">
      <div class="flex flex-col text-center w-full mb-20">
        <h1 class="sm:text-3xl text-2xl font-medium title-font mb-4 text-gray-900" style="font-weight: bold;">Hello Dog Lovers</h1>
        <p class="lg:w-2/3 mx-auto leading-relaxed text-base">By adopting from a shelter, you are providing an animal with the second chance they deserve. Many have been rescued from horrific circumstances such as cruelty, neglect and abandonment, or quite simply their owners were no longer able to look after them due to illness or a change in situation.</p>
      </div>
      <div class="flex flex-wrap -m-4">
        <div class="lg:w-1/3 sm:w-1/2 p-4">
          <div class="flex relative">
            <img alt="gallery" class="absolute inset-0 w-full h-full object-cover object-center" src="https://image.freepik.com/free-photo/adorable-jack-russell-retriever-puppy-portrait_53876-64825.jpg">
            <div class="px-8 py-10 relative z-10 w-full border-4 border-gray-200 bg-white opacity-0 hover:opacity-100">
              <h2 class="tracking-widest text-sm title-font font-medium text-blue-500 mb-1"> Because you will save a life.</h2>
              <h1 class="title-font text-lg font-medium text-gray-900 mb-3">1. Because you will save a life.</h1>
              <p class="leading-relaxed">The number of euthanized animals could be reduced dramatically</p>
            </div>
          </div>
        </div>
        <div class="lg:w-1/3 sm:w-1/2 p-4">
          <div class="flex relative">
            <img alt="gallery" class="absolute inset-0 w-full h-full object-cover object-center" src="https://media.gettyimages.com/photos/brussels-griffon-looking-away-against-yellow-background-picture-id1300505812?k=6&m=1300505812&s=612x612&w=0&h=10tR0lgwD7N9YIyOzvyoBcjpByWmiTzXMgMFlYnGAb4=">
            <div class="px-8 py-10 relative z-10 w-full border-4 border-gray-200 bg-white opacity-0 hover:opacity-100">
              <h2 class="tracking-widest text-sm title-font font-medium text-blue-500 mb-1">Because you will get a animal.</h2>
              <h1 class="title-font text-lg font-medium text-gray-900 mb-3">2. Because you will get a great animal.</h1>
              <p class="leading-relaxed">Most shelter pets wound up there because of a human problem like a move .</p>
            </div>
          </div>
        </div>
        <div class="lg:w-1/3 sm:w-1/2 p-4">
          <div class="flex relative">
            <img alt="gallery" class="absolute inset-0 w-full h-full object-cover object-center" src="https://media.gettyimages.com/photos/happy-border-collie-dog-isolated-on-yellow-colored-background-picture-id1302862857?k=6&m=1302862857&s=612x612&w=0&h=P-NUrYHHaHZXaq77r94Bsxz6Itji0doS-yBOkDcOPhs=">
            <div class="px-8 py-10 relative z-10 w-full border-4 border-gray-200 bg-white opacity-0 hover:opacity-100">
              <h2 class="tracking-widest text-sm title-font font-medium text-blue-500 mb-1">Because it will cost you less.</h2>
              <h1 class="title-font text-lg font-medium text-gray-900 mb-3">3. Because it will cost you less.</h1>
              <p class="leading-relaxed">Depending on the animal, you may also save on housebreaking and training expenses.</p>
            </div>
          </div>
        </div>
        <div class="lg:w-1/3 sm:w-1/2 p-4">
          <div class="flex relative">
            <img alt="gallery" class="absolute inset-0 w-full h-full object-cover object-center" src="https://media.istockphoto.com/photos/openmouthed-dalmation-picture-id1126441815?k=6&m=1126441815&s=612x612&w=0&h=MiXqsS2pbPUgaaHldNq6MlIicj-OzdexjqI7lbeWuao=">
            <div class="px-8 py-10 relative z-10 w-full border-4 border-gray-200 bg-white opacity-0 hover:opacity-100">
              <h2 class="tracking-widest text-sm title-font font-medium text-blue-500 mb-1">Because of the bragging rights.</h2>
              <h1 class="title-font text-lg font-medium text-gray-900 mb-3">4. Because of the bragging rights.</h1>
              <p class="leading-relaxed">Adopt a pet, post those pictures and let the well-earned likes roll in.</p>
            </div>
          </div>
        </div>
        <div class="lg:w-1/3 sm:w-1/2 p-4">
          <div class="flex relative">
            <img alt="gallery" class="absolute inset-0 w-full h-full object-cover object-center" src="https://media.istockphoto.com/photos/funny-dog-linking-its-lips-with-tongue-out-isolated-on-yellow-picture-id1251347397?k=6&m=1251347397&s=612x612&w=0&h=2QhNgwmLXwPx2PBuVcubc7OnV5HnFW8l18IOO-9px6I=">
            <div class="px-8 py-10 relative z-10 w-full border-4 border-gray-200 bg-white opacity-0 hover:opacity-100">
              <h2 class="tracking-widest text-sm title-font font-medium text-blue-500 mb-1">home will thank you.</h2>
              <h1 class="title-font text-lg font-medium text-gray-900 mb-3">5. Because your home will thank you.</h1>
              <p class="leading-relaxed">Adopting a mature pet not only gives older animals a second chance.</p>
            </div>
          </div>
        </div>
        <div class="lg:w-1/3 sm:w-1/2 p-4">
          <div class="flex relative">
            <img alt="gallery" class="absolute inset-0 w-full h-full object-cover object-center" src="https://media.istockphoto.com/photos/happy-dog-on-yellow-background-picture-id1031307536?k=6&m=1031307536&s=612x612&w=0&h=G75wsdB_M71pKnhA5N8Sc5oYDMM8zeZ2CjApuxVV9UY=">
            <div class="px-8 py-10 relative z-10 w-full border-4 border-gray-200 bg-white opacity-0 hover:opacity-100">
              <h2 class="tracking-widest text-sm title-font font-medium text-blue-500 mb-1">Because adoption really helps</h2>
              <h1 class="title-font text-lg font-medium text-gray-900 mb-3">6. Because adoption helps more than just one animal</h1>
              <p class="leading-relaxed">The cost of your adoption goes directly towards helping those shelters better care.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  
<h2 style="text-align:center;font-weight: bold;">Contact Us:-</h2>
<br>
<section class="text-gray-600 body-font relative">
  <div class="absolute inset-0 bg-gray-300">
 
    <iframe width="100%" height="100%" frameborder="0" marginheight="0" marginwidth="0" title="map" scrolling="no" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d242118.14199614953!2d73.72288117003453!3d18.524564859944654!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2bf2e67461101%3A0x828d43bf9d9ee343!2sPune%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1620831150320!5m2!1sen!2sin" style="filter: grayscale(1) contrast(1.2) opacity(0.4);"></iframe>
  </div>
  <div class="container px-5 py-24 mx-auto flex">
    <div class="lg:w-1/3 md:w-1/2 bg-white rounded-lg p-8 flex flex-col md:ml-auto w-full mt-10 md:mt-0 relative z-10 shadow-md">
      <h2 class="text-gray-900 text-lg mb-1 font-medium title-font">Feedback</h2>
       <form action="feedbackData" method="post">
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

    
    
    
    
    
    
  <section class="text-gray-600 body-font">
    <div class="container px-5 py-24 mx-auto">
      <h1 class="text-3xl font-medium title-font text-gray-900 mb-12 text-center " style="font-weight: bold;">Reviews:-</h1>
      <div class="flex flex-wrap -m-4">
        <div class="p-4 md:w-1/2 w-full">
          <div class="h-full bg-gray-100 p-8 rounded">
            
            <p class="leading-relaxed mb-6">This website have all kind of dogs ans also it is user friendly website where every thing is easy to use.You Get To Pick Your Own Companion. You will Find A Permanent Best Friend!</p>
            <a class="inline-flex items-center">
              <img alt="testimonial" src="data:image/jpeg;base64,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" class="w-12 h-12 rounded-full flex-shrink-0 object-cover object-center">
              <span class="flex-grow flex flex-col pl-4">
                <span class="title-font font-medium text-gray-900">Ansar Sheikh</span>
                <span class="text-gray-500 text-sm">IAS officer</span>
              </span>
            </a>
          </div>
        </div>
        <div class="p-4 md:w-1/2 w-full">
          <div class="h-full bg-gray-100 p-8 rounded">
          
            <p class="leading-relaxed mb-6">Adopting a good dog can be a very rewarding experience.Petfinder provides an endless selections of dogs as per your choice and like. The variety of dogs they offer are quite stunning</p>
            <a class="inline-flex items-center">
              <img alt="testimonial" src="data:image/jpeg;base64,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" class="w-12 h-12 rounded-full flex-shrink-0 object-cover object-center">
              <span class="flex-grow flex flex-col pl-4">
                <span class="title-font font-medium text-gray-900">Alper Kamu</span>
                <span class="text-gray-500 text-sm">IPS Officer</span>
              </span>
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  

  <footer class="text-gray-600 body-font">
    <div class="container px-5 py-8 mx-auto flex items-center sm:flex-row flex-col">
      <a class="flex title-font font-medium items-center md:justify-start justify-center text-gray-900">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-10 h-10 text-white p-2 bg-green-500 rounded-full" viewBox="0 0 24 24">
          <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path>
        </svg>
        <span class="ml-3 text-xl">Dog Adoption</span>
      </a>
      <p class="text-sm text-gray-500 sm:ml-4 sm:pl-4 sm:border-l-2 sm:border-gray-200 sm:py-2 sm:mt-0 mt-4">- 2021 Dog Adoption
       <!--  <a href="https://twitter.com/knyttneve" class="text-gray-600 ml-1" rel="noopener noreferrer" target="_blank">@Deep Trivedi</a> -->
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
    
    <!--  var getuser= document.getElementById("user").value;
  console.log(getuser);
 
  if(getuser=="one"){
 alert("You have successfully registerd..!!\n Kindly Login");
 }  -->
    <script>
function myFunction() {
 myFunction= function(){}; 
 var frew=document.getElementById('object').value
var frew1=document.getElementById('object1').value
var frew2=document.getElementById('object2').value
	
  
  
   if (frew=="one") {
swal({
  title: "Register Succesfully",
  text: "Kindly Login Now",
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
	
	if (frew2=="one") {
swal({
  title: "Email Already exist",
  text: "Please try again",
  icon: "error",
});
		frew2 = "two";
	}
}
</script>

    
  
</body>
</html>
