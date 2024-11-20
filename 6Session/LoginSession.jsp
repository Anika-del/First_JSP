<html>
<body>

<%@ page import="java.sql.*" %>
<%@ page session="false" %>


<%
String name = request.getParameter("name");
String pass = request.getParameter("pass");
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system", "mca6");
	Statement s2 = c.createStatement();
	
	String s1 = "select * from emp102 where name='"+name+"' and pass='"+pass+"' ";
	ResultSet rs1 = s2.executeQuery(s1);
	if(rs1.next()){
		HttpSession s  = request.getSession();
		s.setAttribute("name",name);
		s.setAttribute("pass",pass);
		out.println("data set sucessfully" +s.isNew());
		out.println("<br>");
		out.println("<a href='session1.jsp' >Welcome </a>");
		
	}else{
		
		out.println("User is Invalid");
	}
	
	
}catch(Exception e){ System.out.println(e);}

 %>
 
</body>
</html>

