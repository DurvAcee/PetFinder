<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>error</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body onload="myFunction()">


<script>
function myFunction() {
swal({
    title: "Email OR Password are incorrect",
    text: "Please try again",
    icon: "error"
}).then(function() {
    window.location = "Home.jsp";
});
}
</script>

</body>
</html>