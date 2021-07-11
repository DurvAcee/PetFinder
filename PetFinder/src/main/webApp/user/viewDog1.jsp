<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dog Details</title>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/admin.css">
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="sweetalert2.min.js"></script>
<link rel="stylesheet" href="sweetalert2.min.css">
<link rel="icon" href="https://img.icons8.com/pastel-glyph/64/26e07f/dog-footprint.png">
<style>
body{
    margin-top:20px;
    background:#eee;
}


.product-content {
    border: 1px solid #dfe5e9;
    margin-bottom: 20px;
    margin-top: 12px;
    background: #fff
}

.product-content .carousel-control.left {
    margin-left: 0
}

.product-content .product-image {
    background-color: #fff;
    display: block;
    min-height: 238px;
    overflow: hidden;
    position: relative
}

.product-content .product-deatil {
    border-bottom: 1px solid #dfe5e9;
    padding-bottom: 17px;
    padding-left: 16px;
    padding-top: 16px;
    position: relative;
    background: #fff
}

.product-content .product-deatil h5 a {
    color: #2f383d;
    font-size: 15px;
    line-height: 19px;
    text-decoration: none;
    padding-left: 0;
    margin-left: 0
}

.product-content .product-deatil h5 a span {
    color: #9aa7af;
    display: block;
    font-size: 13px
}

.product-content .product-deatil span.tag1 {
    border-radius: 50%;
    color: #fff;
    font-size: 15px;
    height: 50px;
    padding: 13px 0;
    position: absolute;
    right: 10px;
    text-align: center;
    top: 10px;
    width: 50px
}

.product-content .product-deatil span.sale {
    background-color: #21c2f8
}

.product-content .product-deatil span.discount {
    background-color: #71e134
}

.product-content .product-deatil span.hot {
    background-color: #fa9442
}

.product-content .description {
    font-size: 12.5px;
    line-height: 20px;
    padding: 10px 14px 16px 19px;
    background: #fff
}

.product-content .product-info {
    padding: 11px 19px 10px 20px
}

.product-content .product-info a.add-to-cart {
    color: #2f383d;
    font-size: 13px;
    padding-left: 16px
}

.product-content name.a {
    padding: 5px 10px;
    margin-left: 16px
}

.product-info.smart-form .btn {
    padding: 6px 12px;
    margin-left: 12px;
    margin-top: -10px
}

.product-entry .product-deatil {
    border-bottom: 1px solid #dfe5e9;
    padding-bottom: 17px;
    padding-left: 16px;
    padding-top: 16px;
    position: relative
}

.product-entry .product-deatil h5 a {
    color: #2f383d;
    font-size: 15px;
    line-height: 19px;
    text-decoration: none
}

.product-entry .product-deatil h5 a span {
    color: #9aa7af;
    display: block;
    font-size: 13px
}

.load-more-btn {
    background-color: #21c2f8;
    border-bottom: 2px solid #037ca5;
    border-radius: 2px;
    border-top: 2px solid #0cf;
    margin-top: 20px;
    padding: 9px 0;
    width: 100%
}

.product-block .product-deatil p.price-container span,
.product-content .product-deatil p.price-container span,
.product-entry .product-deatil p.price-container span,
.shipping table tbody tr td p.price-container span,
.shopping-items table tbody tr td p.price-container span {
    color: #21c2f8;
    font-family: Lato, sans-serif;
    font-size: 24px;
    line-height: 20px
}

.product-info.smart-form .rating label {
    margin-top: 0
}

.product-wrap .product-image span.tag2 {
    position: absolute;
    top: 10px;
    right: 10px;
    width: 36px;
    height: 36px;
    border-radius: 50%;
    padding: 10px 0;
    color: #fff;
    font-size: 11px;
    text-align: center
}

.product-wrap .product-image span.sale {
    background-color: #57889c
}

.product-wrap .product-image span.hot {
    background-color: #a90329
}

.shop-btn {
    position: relative
}

.shop-btn>span {
    background: #a90329;
    display: inline-block;
    font-size: 10px;
    box-shadow: inset 1px 1px 0 rgba(0, 0, 0, .1), inset 0 -1px 0 rgba(0, 0, 0, .07);
    font-weight: 700;
    border-radius: 50%;
    padding: 2px 4px 3px!important;
    text-align: center;
    line-height: normal;
    width: 19px;
    top: -7px;
    left: -7px
}

.description-tabs {
    padding: 30px 0 5px!important
}

.description-tabs .tab-content {
    padding: 10px 0
}

.product-deatil {
    padding: 30px 30px 50px
}

.product-deatil hr+.description-tabs {
    padding: 0 0 5px!important
}

.product-deatil .carousel-control.left,
.product-deatil .carousel-control.right {
    background: none!important
}

.product-deatil .glyphicon {
    color: #3276b1
}

.product-deatil .product-image {
    border-right: none!important
}

.product-deatil .name {
    margin-top: 0;
    margin-bottom: 0
}

.product-deatil .name small {
    display: block
}

.product-deatil .name a {
    margin-left: 0
}

.product-deatil .price-container {
    font-size: 24px;
    margin: 0;
    font-weight: 300
}

.product-deatil .price-container small {
    font-size: 12px
}

.product-deatil .fa-2x {
    font-size: 16px!important
}

.product-deatil .fa-2x>h5 {
    font-size: 12px;
    margin: 0
}

.product-deatil .fa-2x+a,
.product-deatil .fa-2x+a+a {
    font-size: 13px
}

.profile-message ul {
  list-style: none ;  
}

.product-deatil .certified {
    margin-top: 10px
}

.product-deatil .certified ul {
    padding-left: 0
}

.product-deatil .certified ul li:not(first-child) {
    margin-left: -3px
}

.product-deatil .certified ul li {
    display: inline-block;
    
    padding: 13px 19px
}

.product-deatil .certified ul li:first-child {
    border-right: none
}

.product-deatil .certified ul li a {
    text-align: left;
    font-size: 15px;
    color: #212529;
    line-height: 18px;
    text-decoration: none
}

.product-deatil .certified ul li a span {
    display: block;
    color: #28a745;
    font-size: 15px;
    font-weight: 700;
    text-align: center
}

.product-deatil .message-text {
    width: calc(100% - 70px)
}

@media only screen and (min-width:1024px) {
    .product-content div[class*=col-md-4] {
        padding-right: 0
    }
    .product-content div[class*=col-md-8] {
        padding: 0 13px 0 0
    }
    .product-wrap div[class*=col-md-5] {
        padding-right: 0
    }
    .product-wrap div[class*=col-md-7] {
        padding: 0 13px 0 0
    }
    .product-content .product-image {
        border-right: 1px solid #dfe5e9
    }
    .product-content .product-info {
        position: relative
    }
}

.message img.online {
    width:40px;
    height:40px;
}

.custImg {
width: 560px;
height: 655px;
}
</style>
</head>
<body onload="myFunction()">


<nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="padding: 1%;margin-right: 2%;">
 <img src="https://img.icons8.com/pastel-glyph/41/26e07f/dog-sit--v1.png"/>
  <a class="navbar-brand"  style="margin-left: 0%;font-size: 110%;" href="Home.jsp">PetFinder</a>
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
	
<input type="hidden" value="${obj}" id="object" name="object">
	
<div class="col-sm-12 col-md-12 col-lg-12">
<!-- product -->
<div class="product-content product-wrap clearfix product-deatil">
    <div class="row">
        <div class="col-md-5 col-sm-12 col-xs-12">
            <div class="product-image">
                <div id="myCarousel-2" class="carousel slide">
                    <ol class="carousel-indicators">
  
                        <li data-target="#myCarousel-2" data-slide-to="1" class="active"></li>
    
                    </ol>
                    <div class="carousel-inner">
                        <!-- Slide 1 -->
                        <div class="item active">
                            <img src="data:image/jpeg;base64,${dog.dogfile}" alt="" class="custImg"/>
                        </div>
                        
                    </div>
                    <a class="left carousel-control" href="#myCarousel-2" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span> </a>
                    <a class="right carousel-control" href="#myCarousel-2" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> </a>
                </div>
            </div>
        </div>

        <div class="col-md-6 col-md-offset-1 col-sm-12 col-xs-12" style="padding-top: 45px; padding-left: 110px;">
            <h2 class="name">
            	<b class = "text-success" style="font-size: xxx-large;">${dog.dogname}</b>
   	
                <a href="javascript:void(0);">13 likes</a>
            </h2>
            <br/><br/>
            <h4 class="price-container">
                <b style = "font-weight: 800;">Description</b>
            </h4>
            <div class="certified">
                <ul>
                    <li>
                        <a href="javascript:void(0);">Breed <span> ${dog.dogbreed} </span></a>
                    </li><br/>
                    <li>
                    
                        <a href="javascript:void(0);"> Gender <span> ${dog.doggender} </span></a>
                    </li><br/>
                	<li>
		                <a href="javascript:void(0);"> Date of Birth <span> ${dog.dogdob} </span></a>
		            </li><br/>
		            <li>
		                <a href="javascript:void(0);"> Status <span style="color: #e71414;"> ${dog.dogstatus} </span></a>
		            </li><br/>
                </ul>
            </div>
            <hr />
            <br/>
            <div class="row">
                <div class="col-sm-12 col-md-6 col-lg-6">
                <button type="button" onclick="myFunction3()" class="btn btn-info btn-lg">Adopted</button>
                <button type="button" onclick="myFunction2()" class="btn btn-dark" style="margin-top: -35%;margin-left: 56%;"> Make a Donation</button>
                </div>
                <div class="col-sm-12 col-md-6 col-lg-6">
                    <div class="btn-group pull-right">
                        <button class="btn btn-white btn-default"><i class="fa fa-thumbs-o-up"></i> Give a Like</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end product -->
</div>

<form id="myForm" method="post" action="adoptedDog">
		<input type="hidden" value="${dog.dogid}" name="dogid">
   	    <input type="hidden" value="${dog.dogname}" name="dogname">
   	     <input type="hidden" value="${dog.dogbreed}" name="dogbreed">
   	      <input type="hidden" value="${dog.doggender}" name="doggender">
     		<input type="hidden" value="Not Available" name="dogstatus">
   	      <input type="hidden" value="${dog.dogdob}" name="dogdob">
     
		 <input type="hidden" value="${getdata.userid}" name="userid">   
	    <input type="hidden" value="${getdata.username}" name="username">
	    <input type="hidden" value="${getdata.useremail}" name="useremail">
	    <input type="hidden" value="${getdata.usermobile}" name="usermobile">
	    <input type="hidden" value="${getdata.userpassword}" name="userpassword">
</form> 

<script>



  function myFunction() {
   myFunction= function(){}; 
   var das=document.getElementById('object').value
Swal.fire('Puff... Your Application has been Submitted!', '', 'success')
     
  }
 

function myFunction2() {
	 myFunction2= function(){};
if (true) {
Swal.fire({
	  icon: 'info',
	  title: 'Would you like to Donate?',
	  text: 'You can help us saving and nurturing the street dogs by donating :)',
	  showCloseButton: true,
	  showConfirmButton: false,
	  
	  footer: '<a class="btn btn-success"  href="payment" role="button">Donate Now!</a>',
	  showDenyButton: true,
	  denyButtonText: `No Thanks`,
	})
}
}
</script>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>

<footer class="text-gray-600 body-font">
<div class="container px-5 py-8 mx-auto flex items-center sm:flex-row flex-col">
  <a class="flex title-font font-medium items-center md:justify-start justify-center text-gray-900">
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-10 h-10 text-white p-2 bg-green-500 rounded-full" viewBox="0 0 24 24">
      <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path>
    </svg>
    <span class="ml-3 text-xl">PetFinder</span>
  </a>
  <p class="text-sm text-gray-900 sm:ml-4 sm:pl-4 sm:border-l-2 sm:border-gray-400 sm:py-2 sm:mt-0 mt-4">2021 PetFinder
  <a href="https://www.linkedin.com/in/durvesh22/" class="text-blue-500 ml-1" rel="noopener noreferrer" target="_blank">@Deep Trivedi</a>
</p>
  <span class="inline-flex sm:ml-auto sm:mt-0 mt-4 justify-center sm:justify-start">
    <a class="text-gray-600">
      <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
        <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
      </svg>
    </a>
    <a class="ml-3 text-gray-600">
      <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
        <path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
      </svg>
    </a>
    <a class="ml-3 text-gray-600">
      <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
        <rect width="20" height="20" x="2" y="2" rx="5" ry="5"></rect>
        <path d="M16 11.37A4 4 0 1112.63 8 4 4 0 0116 11.37zm1.5-4.87h.01"></path>
      </svg>
    </a>
    <a class="ml-3 text-gray-600">
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