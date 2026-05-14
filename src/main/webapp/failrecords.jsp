
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fail Records</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body{
    font-family:Arial, sans-serif;
    background:#f4f4f4;
    padding:40px;
}

.container{
    width:85%;
    margin:auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
}

h2{
    text-align:center;
    color:red;
    margin-bottom:20px;
}

table{
    width:100%;
    border-collapse:collapse;
}

table th{
    background:red;
    color:white;
    padding:12px;
    border:1px solid black;
}

table td{
    padding:10px;
    text-align:center;
    border:1px solid black;
}

tr:nth-child(even){
    background:#f2f2f2;
}

.btn{
    display:inline-block;
    margin-top:20px;
    padding:10px 20px;
    background:red;
    color:white;
    text-decoration:none;
    border-radius:5px;
}

.btn:hover{
    background:darkred;
}

</style>

</head>

<body>

<div class="container">

<h2>Failed Students Records</h2>

<table>

<tr>
    <th>Student ID</th>
    <th>Student Name</th>
    <th>Subject</th>
    <th>Mark</th>
    <th>Status</th>
</tr>

<%

Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;

try{

    // Load Driver
    Class.forName("com.mysql.cj.jdbc.Driver");

    // Database Connection
    con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/MarkWebApp",
        "root",
        "bhavanachulove"
    );

    // SQL Query
    String sql = "SELECT * FROM studentmarks WHERE marks < 35";

    ps = con.prepareStatement(sql);

    rs = ps.executeQuery();

    while(rs.next()){

%>

<tr>

<td><%= rs.getInt("studentID") %></td>

<td><%= rs.getString("StudentName") %></td>

<td><%= rs.getString("Subject") %></td>

<td><%= rs.getInt("Marks") %></td>

<td style="color:red; font-weight:bold;">
    Fail
</td>

</tr>

<%

    }

}catch(Exception e){

%>

<tr>
<td colspan="5">
    <%= e.getMessage() %>
</td>
</tr>

<%

}finally{

    try{
        if(rs!=null) rs.close();
        if(ps!=null) ps.close();
        if(con!=null) con.close();
    }catch(Exception e){
        out.println(e);
    }
}

%>

</table>

<center>
<a href="index.jsp" class="btn">Back</a>
</center>

</div>

</body>
</html>