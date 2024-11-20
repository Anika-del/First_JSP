<%@ taglib prefix="MyTag" uri="/WEB-INF/tlds/my1.tld" %>
<html>
<body>

<%! String s="Attribute"; %>

<MyTag:MyDate name="<%=s %>" >
<MyTag:SubTag    />
</MyTag:MyDate>

</body>
</html>

