<html>
<body>
<%
Cookie c = new Cookie("name","test");
response.addCookie(c);
out.println("cookie added");
%>
</body>
</html>