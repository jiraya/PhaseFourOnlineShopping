<%@page import="project.Connectionprovider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String email=request.getParameter("email");
String status="cancel";
try{
	Connection con =Connectionprovider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("update cart set status='"+status+"' where product_id='"+id+"' and email='"+email+"' and address is not Null");
	response.sendRedirect("ordersReceived.jsp?msg=cancel");
	
	
}
catch(Exception e)
{
	response.sendRedirect("ordersReceived.jsp?msg=wrong");
	System.out.println(e);
}
%>