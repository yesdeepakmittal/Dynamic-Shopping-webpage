<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import ="java.sql.*" %><%@ page import ="shoppingpackage.DBconnect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String fname = request.getParameter("fname"); %>
<%String lname = request.getParameter("lname"); %>
<%String mnum = request.getParameter("mnum"); %>
<%String address = request.getParameter("address"); %>
<%
    Connection conn = null;ResultSet rs;
    try{Connection con=DBconnect.getCon();PreparedStatement ps;
    ps=con.prepareStatement("INSERT INTO user(fname, lname,mnum,address) VALUES(?,?,?,?)");

    ps.setString(1,fname);
    ps.setString(2,lname);
    ps.setString(3,mnum);
    ps.setString(4,address); 
    ps.executeUpdate();
    }catch(Exception e) {System.out.println(e);}
    
    %> Thank you for purchasing!<%= fname%>
</body>
</html>