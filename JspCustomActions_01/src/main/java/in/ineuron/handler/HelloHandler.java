package in.ineuron.handler;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.Tag;

public class HelloHandler implements Tag {
	
	PageContext pageContext;
	private String name;
	
	public String getName() {
		System.out.println("Set Name Method");
		return name;
	}
	public void setName(String name) {
		System.out.println("Get Name Method");
		this.name = name;
	}

	static {
		System.out.println("HelloHandler .class file is loading...");
	}

		public HelloHandler() {
			System.out.println("HelloHandler Object is created...");
		}
	@Override
	public int doEndTag() throws JspException {
		System.out.println("doEndTag");
		//return SKIP_PAGE;
		return EVAL_PAGE;
	}

	@Override
	public int doStartTag() throws JspException {
		System.out.println("doStartTag");
		try {
			JspWriter out=pageContext.getOut();
			
		out.println("<h1>This is from doStartTag()</h1>");
		if(name==null) {
			out.println("<h1>Hello Guest...</h1>");
		}
		else {
			out.println("<h1>Hello.."+name+"</h1>");
		}
		}
		catch(IOException ie) {
			ie.printStackTrace();
		}
		//return SKIP_BODY;
		return EVAL_BODY_INCLUDE;
	}

	@Override
	public Tag getParent() {
		System.out.println("getParent");
		return null;
	}

	@Override
	public void release() {
		System.out.println("release");
		
	}

	@Override
	public void setPageContext(PageContext pageContext) {
		this.pageContext=pageContext;
		System.out.println("setPageContext");
	}

	@Override
	public void setParent(Tag arg0) {
		
		System.out.println("setParent");
	}


}
