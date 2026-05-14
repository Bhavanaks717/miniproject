<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<title>Update Student Marks</title>

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
background:linear-gradient(135deg,#ff9966,#ff5e62);
}

.container{
width:430px;
background:white;
padding:35px;
border-radius:22px;
box-shadow:0 15px 35px rgba(0,0,0,0.25);
text-align:center;
}

h2{
color:#ff5e62;
margin-bottom:25px;
font-size:30px;
}

label{
display:block;
text-align:left;
font-weight:bold;
margin-top:12px;
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
border-color:#ff5e62;
box-shadow:0 0 8px rgba(255,94,98,0.35);
}

.btn{
width:100%;
margin-top:22px;
padding:14px;
border:none;
border-radius:12px;
background:linear-gradient(to right,#ff9966,#ff5e62);
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
color:#ff5e62;
font-size:16px;
}

a:hover{
color:#e64a4a;
}

</style>
 

</head>

<body>

<div class="container">

<h2>Update Student Marks</h2>

<form action="FetchStudentServlet" method="post">

<label>Student ID</label>
<input type="text" name="id" class="input-box"
placeholder="Enter Student ID">

<input type="submit" value="Fetch Record" class="btn">

</form>

<div class="note">
Enter Student ID to fetch record
</div>
</body>
</html>