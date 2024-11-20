
<%@page import="java.io.* ,java.util.* "  %>
<%
String title="Accessing Request Param";
%>

<html>
<body>
<h1><% out.print(title); %></h1>
<p>${param["name"]}</p>
</body>
</html>

