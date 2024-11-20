<html>
<body>

<%
String name = request.getParameter("name");
String pass = request.getParameter("pass");
RequestDispatcher rd = request.getRequestDispatcher("demo.jsp");
rd.include(request,response);
if(name.equals("appsquadz") && pass.equals("appsquadz"))
	out.println("valid user from login.jsp");
else
	out.println("invalid");

%>

</form>
</body>
</html>

