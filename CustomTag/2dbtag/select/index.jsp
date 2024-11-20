<%@ taglib prefix="SqlTag" uri="/WEB-INF/tlds/db.tld" %>
<html>
<body>

<SqlTag:DbTag driver="oracle.jdbc.driver.OracleDriver" 
url="jdbc:oracle:thin:@localhost:1521:xe" user="system" pass="mca6"  >
<SqlTag:Select>
select * from emp55
</SqlTag:Select>
</SqlTag:DbTag>

</body>
</html>

