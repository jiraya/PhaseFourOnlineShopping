<%@page import="project.Connectionprovider" %>
<%@page import="java.sql.*" %>
<%
String email=session.getAttribute("email").toString();
String securityQuestion=request.getParameter("securityQuestion");
String  newanswer=request.getParameter(" newanswer");
String  password=request.getParameter(" password");
int check=0;
try{
	Connection con=Connectionprovider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from singin where email='"+email+"' and password='"+password+"'");
while(rs.next())
{
	check=1;//password correct
	st.executeUpdate("update singin set securityQuestion='"+securityQuestion+"',answer='"+newanswer+"'where email='"+email+"'");
response.sendRedirect("changeSecurityQuestion.jsp?msg=done");  
}
if(check==0)//pwd incorrect
	response.sendRedirect("changeSecurityQuestion.jsp?msg=wrong");  
}
catch(Exception e)
{
	
}
%>