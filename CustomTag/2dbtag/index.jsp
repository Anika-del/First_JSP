<%@ taglib prefix="SqlTag" uri="/WEB-INF/tlds/db.tld" %>
<html>
<body>

<SqlTag:DbTag driver="oracle.jdbc.driver.OracleDriver" 
url="jdbc:oracle:thin:@localhost:1521:xe" user="system" pass="mca6"  >

<SqlTag:Insert query="insert into emp55 value(101, '1may')" />
<SqlTag:Update query="update emp55 set name='Sun78' where id=1002 " />
<SqlTag:Delete query="delete from emp55 where id=1006" />
<SqlTag:Select query="select * from from emp55" />
</SqlTag:DbTag>

</body>
</html>


