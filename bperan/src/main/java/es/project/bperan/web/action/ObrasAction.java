package es.project.bperan.web.action;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.pojo.Obras;
import es.project.bperan.pojo.Usuario;

public class ObrasAction extends ActionSupport implements ModelDriven<Obras>, ServletRequestAware  {
	
		Obras obra; 
		
		GenericBO<Obras> obraBo;
			
		private HttpServletRequest request;
		
		public void setServletRequest(HttpServletRequest request) {
			this.request = request;			
		}
		
		public void setObrasBo(GenericBO<Obras> obraBo) {
			this.obraBo = obraBo;
		}
				
		public void setObras(Obras obra) {
			this.obra = obra;
		}				

		public Obras getModel() {
			return obra;
		}		
		
		public String delete() throws Exception {						
			obraBo.delete(obra);
			
			return ActionSupport.SUCCESS;
		}
		
		public void reset() {
			obra = new Obras();
		}

		public String prepare() throws Exception {
			
			reset();
			
			return ActionSupport.SUCCESS;
		}
		
		public String create() throws Exception{				
			obraBo.add(obra);
			
			return ActionSupport.SUCCESS;
		}
				
		public String list() throws Exception{
			Collection<Obras> listaObras = obraBo.findAll();
			
			request.setAttribute("listaObras", listaObras);
			
			return ActionSupport.SUCCESS;		
		}
}
