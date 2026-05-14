<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<title>Mark Management System</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial,sans-serif;
}

/* LIGHT BACKGROUND IMAGE */
body{
background:url('https://images.unsplash.com/photo-1522202176988-66273c2fd55f?auto=format&fit=crop&w=1400&q=80');
background-size:cover;
background-position:center;
background-attachment:fixed;
padding:20px;
}

/* OVERLAY EFFECT */
body::before{
content:"";
position:fixed;
top:0;
left:0;
width:100%;
height:100%;
background:rgba(255,245,250,0.85);
z-index:-1;
}

/* HEADER */
.header{
text-align:center;
margin-bottom:20px;
}

.header h1{
font-size:38px;
letter-spacing:3px;
padding:14px 28px;
display:inline-block;
border-radius:18px;
background:white;
color:#e91e63;
box-shadow:0 5px 18px rgba(0,0,0,0.2);
}

/* BANNER */
.banner{
width:100%;
max-width:1100px;
margin:20px auto;
border-radius:22px;
overflow:hidden;
box-shadow:0 10px 25px rgba(0,0,0,0.2);
}

.banner img{
width:100%;
height:300px;
object-fit:cover;
}

/* GRID */
.container{
max-width:1100px;
margin:30px auto;
display:grid;
grid-template-columns:repeat(auto-fit,minmax(240px,1fr));
gap:25px;
}

/* CARD */
.card{
background:white;
border-radius:22px;
padding:25px;
text-align:center;
transition:0.3s;
box-shadow:0 8px 20px rgba(0,0,0,0.15);
}

.card:hover{
transform:translateY(-8px);
box-shadow:0 15px 30px rgba(0,0,0,0.25);
}

/* ICON */
.card img{
width:65px;
height:65px;
margin-bottom:12px;
background:#ffe4ec;
padding:10px;
border-radius:50%;
}

/* TEXT */
.card h2{
font-size:22px;
margin-bottom:10px;
color:#e91e63;
}

.card p{
font-size:14px;
color:#666;
margin-bottom:18px;
line-height:1.5;
}

/* BUTTON */
.btn{
display:inline-block;
padding:10px 20px;
background:#e91e63;
color:white;
border-radius:12px;
text-decoration:none;
font-weight:bold;
transition:0.3s;
}

.btn:hover{
background:#c2185b;
}

/* FOOTER */
.footer{
text-align:center;
margin-top:40px;
font-size:14px;
color:#444;
font-weight:bold;
}

</style>
</head>

<body>

<div class="header">
<h1>MARK MANAGEMENT SYSTEM</h1>
</div>

<!-- NEW LIGHT STUDENT IMAGE -->
<div class="banner">
<img src="https://images.unsplash.com/photo-1522202176988-66273c2fd55f?auto=format&fit=crop&w=1200&q=80">
</div>

<div class="container">

<div class="card">
<img src="https://cdn-icons-png.flaticon.com/512/1828/1828919.png">
<h2>Add Marks</h2>
<p>Add new student marks into database.</p>
<a href="LoadAddPageServlet" class="btn">Open</a>
</div>

<div class="card">
<img src="https://cdn-icons-png.flaticon.com/512/1827/1827933.png">
<h2>Update Marks</h2>
<p>Update marks using Student ID.</p>
<a href="update.jsp" class="btn">Open</a>
</div>

<div class="card">
<img src="https://cdn-icons-png.flaticon.com/512/1214/1214428.png">
<h2>Delete Record</h2>
<p>Delete student record easily.</p>
<a href="delete.jsp" class="btn">Open</a>
</div>

<div class="card">
<img src="https://cdn-icons-png.flaticon.com/512/942/942748.png">
<h2>Display Marks</h2>
<p>Search or display all records.</p>
<a href="display.jsp" class="btn">Open</a>
</div>

<div class="card">
<img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png">
<h2>Reports</h2>
<p>Generate custom student reports.</p>
<a href="reports.jsp" class="btn">Open</a>
</div>

<div class="card">
<img src="https://cdn-icons-png.flaticon.com/512/2921/2921222.png">
<h2>View Records</h2>
<p>View complete marks table.</p>
<a href="view.jsp" class="btn">Open</a>
</div>

<div class="card">
<img src="https://cdn-icons-png.flaticon.com/512/4333/4333609.png">
<h2>Fail Records</h2>
<p>Display students failed in exam.</p>
<a href="failrecords.jsp" class="btn">Open</a>
</div>

</div>

<div class="footer">
Student Marks Management System © 2026
</div>

</body>
</html>