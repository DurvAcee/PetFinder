<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Admin</title>
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
</head>
<style>

.asd{
font-size: 28px;
}


</style>
<body>
<center>
<h3>Add More Admin</h3>
<form action="UpdateAdminData" method="post">

<label class="asd">Name</label><br>
<input type="text"  name="name" style="font-size: x-large "><br>

<label class="asd">Email</label><br>
<input type="text"  name="email" style="font-size: x-large "><br>

<label class="asd">Password</label><br>
<input type="text"  name="password" style="font-size: x-large "><br>

<input type="submit" value="Add Data"  style="font-size: 24px;">
</form>
</center>
</body>
</html>