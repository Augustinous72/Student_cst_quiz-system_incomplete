<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<%@page contentType="text/html" import="java.sql.*"%>
<%@page import="java.sql.*"%>
<%
String nm1=request.getParameter("First_Name");
String nm2=request.getParameter("Last_Name");
String nm3=request.getParameter("Email");
String nm4=request.getParameter("Comment");
try{
Class.forName("com.mysql.jdbc.Driver"
        + ""
        + "");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/contact","root","");
Statement st=con.createStatement();
if(nm1==null||nm2==null||nm3==null||nm3==null ||nm4==null){
System.out.println("There is an empty field");        
}
else{

st.executeUpdate("insert into feedback values('"+0+"','"+nm1+"','"+nm2+"','"+nm3+"','"+nm4+"')");
out.print("The data has been inserted successfully");

}}
    catch(Exception e){
e.getMessage();
out.print(e);
}
%>
</head>
<body>

<h3>Give us feedback</h3>

<div class="container">
    <form action = "contact.jsp" method = "POST">
    <label for="fname">First Name</label>
    <input type="text" id="fname" name="First_Name" placeholder="Your name..">

    <label for="lname">Last Name</label>
    <input type="text" id="lname" name="Last_Name" placeholder="Your last name..">
    <label for="fname">Email</label>
    <input type="text" id="email" name="Email" placeholder="Your Email..">
    
    <label for="subject">Comment</label>
    <textarea id="subject" name="Comment" placeholder="Write something.." style="height:200px"></textarea>

    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>