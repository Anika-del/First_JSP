<%@ page import="java.io.*, java.util.*" %>
<%

try{
	response.setContentType("image/jpeg");
	response.setHeader("Content-disposition","attachment;filename=bodyguard.mp3");
	
	String path = application.getRealPath("dt")+"\\"+"bodyguard.mp3";
	
	File ff=new File(path);
	byte b[] = new byte[(int) ff.length()];
	
	FileInputStream pp=new FileInputStream(ff);
	pp.read(b);
	
	OutputStream os = response.getOutputStream();
	os.write(b);
	
	}
catch(Exception e){

}

%>