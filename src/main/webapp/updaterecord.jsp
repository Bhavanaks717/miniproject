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
font-family:Arial,sans-serif;
}

body{
height:100vh;
display:flex;
justify-content:center;
align-items:center;
background:linear-gradient(135deg,#667eea,#764ba2);
}

.container{
width:450px;
background:white;
padding:35px;
border-radius:20px;
box-shadow:0 15px 35px rgba(0,0,0,0.25);
}

h2{
text-align:center;
margin-bottom:25px;
color:#764ba2;
font-size:28px;
}

label{
display:block;
margin-top:14px;
margin-bottom:6px;
font-weight:bold;
color:#444;
}

.input-box{
width:100%;
padding:12px;
border:2px solid #ddd;
border-radius:10px;
font-size:15px;
outline:none;
transition:0.3s;
}

.input-box:focus{
border-color:#764ba2;
box-shadow:0 0 8px rgba(118,75,162,0.3);
}

.readonly{
background:#f3f3f3;
}

.btn{
width:100%;
padding:14px;
margin-top:22px;
border:none;
border-radius:12px;
background:linear-gradient(to right,#667eea,#764ba2);
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

a{
display:block;
text-align:center;
margin-top:18px;
text-decoration:none;
font-weight:bold;
color:#764ba2;
}

.note{
text-align:center;
font-size:13px;
color:gray;
margin-top:12px;
}
</style>

</head>
<body>

<div class="container">

<h2>Update Student Marks</h2>

<form action="UpdateMarkServlet" method="post">

<label>Student ID</label>
<input type="text" name="id" value="${id}" readonly
class="input-box readonly">

<label>Student Name</label>
<input type="text" value="${name}" readonly
class="input-box readonly">

<label>Subject</label>
<input type="text" value="${subject}" readonly
class="input-box readonly">

<label>Old Marks</label>
<input type="text" value="${marks}" readonly
class="input-box readonly">

<label>New Marks</label>
<input type="text" name="marks"
placeholder="Enter New Marks"
class="input-box">

<input type="submit" value="Update Marks" class="btn">

</form>

<div class="note">
Update only marks for selected student
</div>

<a href="index.jsp">Back to Home</a>

</div>

</body>
</html>