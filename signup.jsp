<%-- 
    Document   : signup
    Created on : Nov 19, 2021, 10:53:17 PM
    Author     : Administrator
--%>

<%@page import="java.io.IOException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <title>Toggle Login and SignUp Form with HTML,CSS and jquery</title>
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <link rel="stylesheet" href="style.css">
</head>

<style>
    
    body{
      font-family:arial;
  justify-content: center;
  align-items: center;
  height: 100vh;
  display: flex;
  background: rgb(195, 203, 212);
}
.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
  
}
.form {
  position: relative;
  z-index: 1;
  background: #333366;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
  border-radius: 20px;
}
.form input {
   
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
   
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
  font-weight: bold;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 15px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}
.form .register-form {
  display: none;
}
.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}
.container:before, .container:after {
  content: "";
  display: block;
  clear: both;
}
</style>
<%@page contentType="text/html" import="java.sql.*"%>
<%@page import="java.sql.*"%>
<%
String nm1=request.getParameter("Username");
String nm2=request.getParameter("Reg Number");
String nm3=request.getParameter("Email");

try{
Class.forName("com.mysql.jdbc.Driver"
        + ""
        + "");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/signup","root","");
Statement st=con.createStatement();
if(nm1==null||nm2==null||nm3==null||nm3==null){
System.out.println("There is an empty field");        
}
else{

st.executeUpdate("insert into user values('"+0+"','"+nm1+"','"+nm2+"','"+nm3+"')");
out.print("The data has been inserted successfully");

}}
    catch(Exception e){
e.getMessage();
out.print(e);
}
%>
<body>
<div class="login-page">
  <div class="form">
    <form class="register-form">
      <input type="text" name="Username" placeholder="Username"/>
      <input type="password" name="Reg Number" placeholder="Reg Number"/>
      <input type="password" placeholder="Comform Reg Number"/>
      <input type="text"name="Email" placeholder="Email Address"/>
      <button>create</button>
      <p class="message">Already registered? <a href="#">Login Here</a></p>
    </form>
    <form class="login-form">
      <input type="text" placeholder="Username"/>
      <input type="password" placeholder="Reg Number"/>
      <button>login</button>
      <p class="message">Not registered? <a href="#">Create an account</a></p>
    </form>
  </div>
</div>
<script>
  $('.message a').click(function(){
   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
});
</script>

</body>
</html>