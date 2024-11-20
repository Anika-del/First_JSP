
<%! int day = 3; %>
<html>
<body>
<% 
switch(day){
	case 0:%>
	<font color="red" size="10">JSP Tutorial</font></br>
<% break;
    case 1:%>
	<font color="blue" size="7">Its SUNDAY</font></br>
<% break;
    case 2:%>
	<font color="blue" size="7">Its MUNDAY</font></br>
<% break;
    case 3:%>
	<font color="blue" size="7">Its TUEDAY</font></br>
<% break;
    case 4:%>
	<font color="blue" size="7">Its WEDNESDAY</font></br>
<% break;
    case 5:%>
	<font color="blue" size="7">Its THURDAY</font></br>
	
<% break;
    case 6:
	out.println("It\'s Friday ");
   break;
    default:
	out.println("It\'s Saturday");
}
	%>
	 
</body>
</html>

