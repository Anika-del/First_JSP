package my;
import javax.servlet.*;
import java.sql.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import java.util.*;
import java.io.*;

public class Insert extends TagSupport 
{
	private String query;
	
	
public void setQuery(String query){
	this.query=query;
}
public String getQuery(){
	return query;
}


public int doStartTag()throws JspException
{

	try{
		JspWriter out = pageContext.getOut();
		//out.println(query);
		
		Connection con = (Connection)pageContext.getAttribute("con" ,PageContext.APPLICATION_SCOPE);
		//out.println(con);
		
		Statement s = con.createStatement();
		int x = s.executeUpdate(query);
	}catch(Exception e){
	}
		return SKIP_BODY;
		
}}