<%@ page import="java.io.*, com.oreilly.servlet.*" %>
<%

try{
	MultipartRequest mpr = new MultipartRequest(request,application.getRealPath("\\dt"),500*1024*1024);
	String s1 = mpr.getOriginalFileName("file");
	
	out.print("file uploaded sucessufully=" + s1);
}
catch(Exception e){
	out.print(e);
}

%>