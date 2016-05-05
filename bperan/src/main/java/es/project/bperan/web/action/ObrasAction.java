package es.project.bperan.web.action;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.pojo.Obras;

public class ObrasAction extends ActionSupport implements ModelDriven<Obras>, ServletRequestAware  {
	
		Obras obras; 
		
		GenericBO<Obras> obrasBo;
			
		private HttpServletRequest request;
		
		public void setServletRequest(HttpServletRequest request) {
			this.request = request;			
		}
		
		public void setObrasBo(GenericBO<Obras> obrasBo) {
			this.obrasBo = obrasBo;
		}
				
		public void setObras(Obras obras) {
			this.obras = obras;
		}			
		
		public Obras getObras() {
			return obras;
		}


		public Obras getModel() {
			return obras;
		}		
		
		public String delete() throws Exception {						
			obrasBo.delete(obras);
			
			return ActionSupport.SUCCESS;
		}
		
		public void reset() {
			obras = new Obras();
		}

		/*prepare carga la obra de la request*/
		public String prepare() throws Exception {
			
			try {
				Integer idobra = Integer.parseInt(request.getParameter("idobra"));
			
				obras = obrasBo.findById(idobra);
			} catch (Throwable e) {
				// TODO traza error
			}		
			//reset();
			
			return ActionSupport.SUCCESS;
		}
				
		public String create() throws Exception{				
			obrasBo.add(obras);
			
			return ActionSupport.SUCCESS;
		}
				
		public String list() throws Exception{
			Collection<Obras> listaObras = obrasBo.findAll();
			
			request.setAttribute("listaObras", listaObras);
			
			return ActionSupport.SUCCESS;		
		}
}
