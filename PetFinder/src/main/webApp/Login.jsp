<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css"  href="css/style1.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="icon" href="https://img.icons8.com/pastel-glyph/64/26e07f/dog-footprint.png">
<title>Login</title>
</head>
<body>
<div class="container-fluid">
      <div class="row">
        <div class="col-sm-6 login-section-wrapper">
         
          <div class="login-wrapper my-auto">
            <h1 class="sad">Admin Login</h1>
            <form action="Admindashboard" method="post"> 
              <div class="form-group">
                <label for="email" class="fry">Email</label>
                <input type="email" name="email" id="email" class="form-control" placeholder="email@example.com">
              </div>
              <div class="form-group mb-4">
                <label for="password" class="fry">Password</label>
                <input type="password" name="password" id="password" class="form-control" placeholder="enter your passsword">
              </div>
              <input type="submit" class="btn-dark btn-lg btn-block login-btn"  style="margin-top:28px;" value="Login">
            </form>
          
          </div>
        </div>
        <div class="col-sm-6 px-0 d-none d-sm-block">
          <img src="images/dog2.jpg"  alt="login image" class="img-fluid">
        </div>
      </div>
    </div>





<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>