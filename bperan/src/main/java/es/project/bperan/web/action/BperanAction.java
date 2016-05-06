package es.project.bperan.web.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

public abstract class BperanAction extends ActionSupport implements ServletRequestAware {
	private Integer id;

	private HttpServletRequest request;
	
	public Integer getId() {
		if (id == null) {
			
			try {
				id = Integer.parseInt(request.getParameter("id"));
			} catch (NumberFormatException e) {
				
			}
		}
		
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}		
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;			
	}
	
	public HttpServletRequest getServletRequest() {
		return request;
	}
}
