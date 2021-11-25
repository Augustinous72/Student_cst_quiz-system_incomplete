<form action = "contact.jsp" method = "POST"></form>
<input type="file" name="file_name" id="file"><br><br><br>
<input type="text" name="Deiscription" placeholder="description"/>
<button onclick="doupload()" name="submit">Upload File</button>
<style>
body {
 background-image: url("img/App1.png");
 background-color: #cccccc;
}
</style>
<%@page contentType="text/html" import="java.sql.*"%>
<%@page import="java.sql.*"%>
<%
String nm1=request.getParameter("file_name");
String nm2=request.getParameter("Deiscription");

try{
Class.forName("com.mysql.jdbc.Driver"
        + ""
        + "");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/it","root","");
Statement st=con.createStatement();
if(nm1==null||nm2==null){
System.out.println("There is an empty field");        
}
else{

st.executeUpdate("insert into it_data values('"+0+"','"+nm1+"','"+nm2+"')");
out.print("The data has been inserted successfully");

}}
    catch(Exception e){
e.getMessage();
out.print(e);
}
%>
<Script>
function doupload() {
    let data = document.getElementById("file").files[0];
    let entry = document.getElementById("file").files[0];
    console.log('doupload',entry,data)
    fetch('uploads/' + encodeURIComponent(entry.name), {method:'PUT',body:data});
    alert('your file has been uploaded');
    location.reload();
};
</Script>
