

<%! int fontsize; %>
<html>
<head><title>WHILE LOOP Example</title></head>
<body>
<% while(fontsize <= 7) { %>
 <font color="green" size="<%= fontsize %>" >
 JSP Tutorials
 </font><br/>
<% fontsize++;
} %>
 
</body>
</html>

