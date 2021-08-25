<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        
    <body style="background-image: url(https://i.pinimg.com/originals/c8/21/e6/c821e6f6a409765d5b593ec84eb06cc8.jpg);">
        <h2 style="font-size: 60px;" ><center> Customer Details</center></h2>

    
<form action="./newfile1.jsp" method="post" style="margin-left: 70px;">
   <table style="font-size: 20px;">
       
       <tr>
           <td>
               <b>
    <label for="fname">First Name: &nbsp;&nbsp;&nbsp; </label></td>
    <td  style="margin-top: 10px;">

    <input type="text" id="fname" name="fname"required placeholder="John"><br><br>
</b>
           </td>
           
           </tr>
           <tr>
               <td>
                <b>
    <label for="lname">Last Name:&nbsp;&nbsp;&nbsp;</label></td>
 <td>  <input type="text" id="fname" name="lname" required placeholder="Smith"><br><br>
    </td>
           </tr>
           <tr>
            <td>
                <b>
    <label for="mobile">Mobile Number:&nbsp;&nbsp;&nbsp;</label></td>
  <td>  <input type="text" id="fname" name="mnum"required placeholder="123-456-7890"><br><br>
</td>
</tr>
    <tr>
        <td>
            <b>
    <label for="address">Address:&nbsp;&nbsp;&nbsp;</label></td>
    <td>  <input type="text" id="fname" name="address" style "" required placeholder="Shipping Address" ><br><br>
</td>
</tr>

<tr>
    <td >
        <br>
        <br>
    <button type ="submit" value="Submit">Submit</button>
    &nbsp;&nbsp;&nbsp;
    <button type="reset" value="Reset">Reset</button>
</td>
</tr>

</h4>

        </table>
  </form>
    </body>
  </html>