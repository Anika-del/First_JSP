<html>
<body>

<%!
int x=3;
int square(int a){
	return a*a;
}
 %>
<% int s=square(x);
out.println(" three square is: "+ s);
 %>
</br>

<%=square(10)%>
<br>

<%=square(20)%>

</body>
</html>

