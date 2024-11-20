package my;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import java.util.*;
import java.io.*;

public class MyData1 extends TagSupport implements intr
{
	JspWriter out;
	String name;
	public void setName(String name){
		this.name = name;
	}
	public String getName(){
		return name;
	}
	
	public int doStartTag()throws JspException{
		out = pageContext.getOut();
	try{
		out.println("Start Tag..");
		out.println("<br>");
		pageContext.setAttribute("user","scripting variable");
		out.println("<br>");
	}catch(Exception e)
	{}
	return EVAL_BODY_INCLUDE;
	}
	int count = 0;
	public int doAfterBody() throws JspException{
		
		if(++count <5)
			return EVAL_BODY_AGAIN;
		else
			return SKIP_BODY;
	}
	public int doEndTag()throws JspException
	{
		String s = new Date().toString();
		try{
			out.println("<br>");
			out.println("Today'date: "+s+getName());
		}catch(Exception e){}
			return EVAL_PAGE;
		}
	}
			
			