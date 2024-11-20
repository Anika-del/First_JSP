<html>
<body>
<%
out.println("hellooooooooo from include and demo1 ");
%>
<br>

<% String name=request.getParameter("name");
String pass=request.getParameter("pass");

out.println(name +" "+ pass +" via demo1 using login ");
%>

</body>
</html>