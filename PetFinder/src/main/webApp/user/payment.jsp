<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>Payment</title>
<link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css' rel='stylesheet'>
<link href='https://use.fontawesome.com/releases/v5.8.1/css/all.css' rel='stylesheet'>
<style>body {
background: #f5f5f5
}

.rounded {
border-radius: 1rem
}

.nav-pills .nav-link {
color: #555
}

.nav-pills .nav-link.active {
color: white
}

input[type="radio"] {
margin-right: 5px
}

.bold {
font-weight: bold
}</style>
<script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js'></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="sweetalert2.min.js"></script>
<link rel="stylesheet" href="sweetalert2.min.css">
<link rel="icon" href="https://img.icons8.com/pastel-glyph/64/26e07f/dog-footprint.png">


<script type='text/javascript'>$(function() {
$('[data-toggle="tooltip"]').tooltip()
})</script>
</head>
<body oncontextmenu='return false' class='snippet-body'>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="padding: 1%;">
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


<div class="container py-5">
<!-- For demo purpose -->
<div class="row mb-4">
<div class="col-lg-8 mx-auto text-center">
<h1 class="display-6"> <b> Proceed to Payment </b></h1>
</div>
</div> <!-- End -->
<div class="row">
<div class="col-lg-6 mx-auto">
<div class="card ">
<div class="card-header">
<div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
<!-- Credit card form tabs -->
<ul role="tablist" class="nav bg-light nav-pills rounded nav-fill mb-3">
<li class="nav-item"> <a data-toggle="pill" href="#credit-card" class="nav-link active "> <i class="fas fa-credit-card mr-2"></i> Credit Card </a> </li>
<li class="nav-item"> <a data-toggle="pill" href="#paypal" class="nav-link "> <i class="fab fa-paypal mr-2"></i> Paypal </a> </li>
<li class="nav-item"> <a data-toggle="pill" href="#net-banking" class="nav-link "> <i class="fas fa-mobile-alt mr-2"></i> Net Banking </a> </li>
</ul>
</div> <!-- End -->
<!-- Credit card form content -->
<div class="tab-content">
<!-- credit card info-->
<div id="credit-card" class="tab-pane fade show active pt-3">
<form role="form"  method="post" action="userDashboard">

<div class="form-group"> <label for="username">
        <h6>Card Owner</h6>
    </label> <input type="text" name="username" placeholder="Card Owner Name" required class="form-control "> </div>
<div class="form-group"> <label for="cardNumber">
        <h6>Card number</h6>
    </label>
    <div class="input-group"> <input type="text" name="cardNumber" placeholder="Valid card number" class="form-control" minlength="12" required>
        <div class="input-group-append"> <span class="input-group-text text-muted"> <i class="fab fa-cc-visa mx-1"></i> <i class="fab fa-cc-mastercard mx-1"></i> <i class="fab fa-cc-amex mx-1"></i> </span> </div>
    </div>
</div>
<div class="row">
    <div class="col-sm-8">
        <div class="form-group"> <label><span class="hidden-xs">
                    <h6>Expiration Date</h6>
                </span></label>
            <div class="input-group"> <input type="number" placeholder="MM" name="month" maxlength="2" class="form-control" required> <input type="number" placeholder="YYYY" name="year" maxlength="2" class="form-control" required> </div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="form-group mb-4"> <label data-toggle="tooltip" title="Three digit CV code on the back of your card">
                <h6>CVV <i class="fa fa-question-circle d-inline"></i></h6>
            </label> <input type="password" name="cvv" required pattern="[0-9]{3}" class="form-control"> </div>
    </div>
</div>

<div class="form-group"> <label for="Amount">
<h6>Amount</h6>
</label> <input type="text" name="amount" placeholder="Enter Amount" required class="form-control "> </div>
<br/>

<div class="card-footer"> <button type="button" onclick="myFunction()" class="subscribe btn btn-primary btn-block shadow-sm"> Confirm Payment </button>
</form>
</div>
</div> <!-- End -->
<!-- Paypal info -->
<div id="paypal" class="tab-pane fade pt-3">
<h6 class="pb-2">Select your paypal account type</h6>
<div class="form-group "> <label class="radio-inline"> <input type="radio" name="optradio" checked> Domestic </label> <label class="radio-inline"> <input type="radio" name="optradio" class="ml-5">International </label></div>
<p> <button type="button" class="btn btn-primary "><i class="fab fa-paypal mr-2"></i> Log into my Paypal</button> </p>
<p class="text-muted"> Note: After clicking on the button, you will be directed to a secure gateway for payment. After completing the payment process, you will be redirected back to the website to view details of your order. </p>
</div> <!-- End -->
<!-- bank transfer info -->
<div id="net-banking" class="tab-pane fade pt-3">
<div class="form-group "> <label for="Select Your Bank">
<h6>Select your Bank</h6>
</label> <select class="form-control" id="ccmonth">
<option value="" selected disabled>--Please select your Bank--</option>
<option>HDFC Bank Ltd.</option>
<option>State Bank of India</option>
<option> ICICI Bank Ltd</option>
<option>Kotak Mahindra Bank Ltd.</option>
<option>Axis Bank Ltd.</option>
<option>IndusInd Bank Ltd.</option>
<option>Yes Bank Ltd.</option>
<option>Punjab National Bank</option>
<option>Bank Of Baroda</option>
<option>Bank of India</option>
</select> </div>
<div class="form-group">
<p> <button type="button" class="btn btn-primary "><i class="fas fa-mobile-alt mr-2"></i> Proceed Payment</button> </p>
</div>
<p class="text-muted">Note: After clicking on the button, you will be directed to a secure gateway for payment. After completing the payment process, you will be redirected back to the website to view details of your order. </p>
</div> <!-- End -->
<!-- End -->
</div>
</div>
</div>
</div>

<script>
function myFunction() {
	myFunction = function(){};
	if(true) {
		Swal.fire({
			  icon: "info",
			  title: 'Do you want to proceed with the payment?',
			  showDenyButton: true,
			  confirmButtonText: `Yes!`,
			  denyButtonText: `Cancel`,
			}).then((result) => {
			  if (result.isConfirmed) {
			    Swal.fire({
			    	icon: "success",
			    	title: 'Thank You!',
			    	showConfirmButton: false,
			  	    footer: '<a class="btn btn-success" href="backToDashboard" role="button">Click here to go back!</a>',	
			    })
			  } else if (result.isDenied) {
			    Swal.fire('Payment Cancelled!', '', 'warning')
			  }
			})
	}
}
</script>
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