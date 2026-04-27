<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<title>Delete Student Record</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
}

body{
font-family:Arial, sans-serif;
height:100vh;
display:flex;
justify-content:center;
align-items:center;
background:linear-gradient(135deg,#ff416c,#ff4b2b);
}

.container{
width:420px;
background:white;
padding:35px;
border-radius:22px;
box-shadow:0 15px 35px rgba(0,0,0,0.25);
text-align:center;
}

h2{
color:#ff4b2b;
margin-bottom:25px;
font-size:30px;
}

label{
display:block;
text-align:left;
font-weight:bold;
margin-bottom:8px;
color:#333;
font-size:16px;
}

.input-box{
width:100%;
padding:13px;
border:2px solid #ddd;
border-radius:12px;
font-size:16px;
outline:none;
transition:0.3s;
}

.input-box:focus{
border-color:#ff4b2b;
box-shadow:0 0 8px rgba(255,75,43,0.35);
}

.btn{
width:100%;
margin-top:22px;
padding:14px;
border:none;
border-radius:12px;
background:linear-gradient(to right,#ff416c,#ff4b2b);
color:white;
font-size:18px;
font-weight:bold;
cursor:pointer;
transition:0.3s;
}

.btn:hover{
transform:scale(1.03);
box-shadow:0 8px 18px rgba(0,0,0,0.2);
}

.note{
margin-top:14px;
font-size:13px;
color:gray;
}

a{
display:block;
margin-top:18px;
text-decoration:none;
font-weight:bold;
color:#ff4b2b;
font-size:16px;
}

a:hover{
color:#c92a1b;
}

</style>

<script>

function validateForm()
{
let id=document.forms["f"]["id"].value;

if(id=="")
{
alert("Please enter Student ID");
return false;
}

if(isNaN(id))
{
alert("Student ID must be numeric");
return false;
}

return true;
}

</script>

</head>

<body>

<div class="container">

<h2>Delete Student Record</h2>

<form name="f" action="DeleteMarkServlet" method="post"
onsubmit="return validateForm()">

<label>Student ID</label>

<input type="text" name="id" class="input-box"
placeholder="Enter Student ID">

<input type="submit" value="Delete Record" class="btn">

</form>

<div class="note">
Enter valid ID to remove record
</div>

<a href="index.jsp">Back to Home</a>

</div>

</body>
</html>