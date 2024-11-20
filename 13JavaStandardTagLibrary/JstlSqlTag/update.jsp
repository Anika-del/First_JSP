<%@ taglib uri="/WEB-INF/sql.tld" prefix="sql" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<html>
<head>
<title>JSTL sql:query Tag</title>
</head>
<body>
 
<sql:setDataSource var="ds" driver="oracle.jdbc.driver.OracleDriver"
     url="jdbc:oracle:thin:@localhost:1521:xe"
     user="system"  password="mca6" />
<sql:update dataSource="${ds}" var="count">
   INSERT INTO  emp55 VALUES (2021,'76')
</sql:update>
<sql:update dataSource="${ds}" 
	                  sql="UPDATE  emp55 SET name='june'  WHERE id =13" 
	                  var="result" />	

<sql:query dataSource="${ds}" var="result">
SELECT * from emp55
</sql:query>
 
<table border="1" width="60%" bgcolor="red" align="center">
<tr>
<th>Name</th>
<th>Id</th>

</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
<td><c:out value="${row.name}" /></td>
<td><c:out value="${row.id}" /></td>
</tr>
</c:forEach>
</table>

</body>
</html>