<%@page import="project.Connectionprovider" %>
<%@page import="java.sql.*" %>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">All SingUp User  <i class="fas fa-sign-in-alt"></i></div>

<table>
        <thead>
          <tr>
            <th scope="col">name <i class="fas fa-file-signature"></i></th>
            <th scope="col">email <i class="fas fa-envelope-open-text"></i></th>
            <th scope="col">mobileNumber <i class="fas fa-phone-volume"></i></th>
            <th scope="col">address <i class="fas fa-address-card"></i></th>
            <th scope="col">city <i class="fas fa-city"></i></th>
            <th scope="col">state <i class="fas fa-flag"></i></th>
            <th scope="col">country <i class="fas fa-globe-asia"></i></th>
            
          </tr>
        </thead>
        <tbody>
    <%
    try{
    	Connection con=Connectionprovider.getCon();
		Statement st=con.createStatement();
        ResultSet rs= st.executeQuery("select * from singin ");
    while(rs.next())
    {
   %>   
          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(7) %></td>
            <td><%=rs.getString(8) %></td>
            <td><%=rs.getString(9) %></td>
            <td><%=rs.getString(10) %></td>

          </tr>
        <%
    }
    }
    catch(Exception e)
    {
    	System.out.println(e);
    }
        %> 
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>