<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %><%@ page import ="shoppingpackage.DBconnect" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Website</title>
    <script>
        function addProd(){
            let x = document.forms["myForm"]["f1"].value;
            alert("You purchased "+x.toString()+ " stuff");   //add the product name in alert
        }
    </script>
</head>

<body bgcolor="pink">

    <div align="center">
    <%
    Connection conn = null;ResultSet rs=null;
    try{
    conn = DBconnect.getCon();
	Statement stmt =  conn.createStatement();
	rs = stmt.executeQuery("SELECT * FROM Product;");System.out.println("Exception NOt Hit");
    }catch(Exception e) {System.out.println(e);}%>
    
	
    <Table border=3 style= "color:black">
    <tr>
        <th bgcolor="skyblue">Product</th>
        <th bgcolor="skyblue">Product Name</th>
        <th bgcolor="skyblue">Price</th>
        <th bgcolor="skyblue">Discount</th>
        <th bgcolor="skyblue">Quantity Available</th>
        <th bgcolor="skyblue">Buy Now</th>
    </tr>
	<%
	while(rs.next()){
	%>
	<tr>
	<%--<td><%=rs.getString(1) %> --%>
	<td><img src="photo.jpg" alt="photo" style="width:90px;height:110px;"></td>
	<td><%=rs.getString(2)%>
	<td><%=rs.getInt(3) %>
	<td><%=rs.getInt(4) %>
	<td><%=rs.getInt(5) %>
	<td><form name="myForm" method="post"><a href="./form.jsp"><input type="Button" value="Buy Now" onClick="addProd()"></a>&nbsp;<input type="number" value="1" min="1" name="f1" style='width:3em'></form></td>
	</tr>
    <%}%>
    <caption>Online Departmental Store</caption>
   
    </table> 
  </div>
</body>
</html>