<html>
<body>

<jsp:useBean id="t1" class="my.AddBean" scope="session" />
<jsp:getProperty name="t1" property="firstno" />
<br>
<jsp:getProperty name="t1" property="secondno"  />
<br>

<% 
int r=t1.add();
out.println(" the sum of two number = " + r );
 %>

</body>
</html>

