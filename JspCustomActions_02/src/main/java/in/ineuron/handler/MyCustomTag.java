package in.ineuron.handler;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.IterationTag;
import javax.servlet.jsp.tagext.Tag;

public class MyCustomTag implements IterationTag {

	PageContext pageContext;
	private int count=0;
	
	public int getCount() {
		System.out.println("getCount");
		return count;
	}

	public void setCount(int count) {
		System.out.println("setCount");
		this.count = count;
	}

	static {
		System.out.println("MyCustomTag .class file loading..");
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
	

	@Override
	public int doStartTag() throws JspException {
		System.out.println("doStartTag");
		if(count>0) {
			return EVAL_BODY_INCLUDE;
		}
		return SKIP_BODY;
	}
	@Override
	public int doAfterBody() throws JspException {
		System.out.println("doAfterBody");
			if(--count>0) {
				return EVAL_BODY_AGAIN;
			}
		return SKIP_BODY;
	}
	
	@Override
	public int doEndTag() throws JspException {
		System.out.println("doEndTag");
		return EVAL_PAGE;
	}
	

}
