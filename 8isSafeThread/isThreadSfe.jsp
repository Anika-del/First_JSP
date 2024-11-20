<%@ page isThreadSafe="false" %>
<html>
<body>
<%
out.println(Thread.currentThread().getName());
%>
<br>

<%
out.println(this);

try
{
	Thread.sleep(6000);
}catch(Exception e){}
%>

</body>
</html>