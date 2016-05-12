package es.project.bperan.web.action;

import java.util.Collection;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.BeanFactoryAnnotationUtils;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.pojo.Obras;

/**
 * @author Carol
 *
 */
public class ObrasAction extends BperanAction implements ModelDriven<Obras>  {
	
		private Obras obras; 		
		private GenericBO<Obras> obrasBo;			
		
		public void setObrasBo(GenericBO<Obras> obrasBo) {
			this.obrasBo = obrasBo;
		}
			
		public void setObras(Obras obras) {
			this.obras = obras;
		}

		public Obras getModel() {
			try {
				if (getId() != null) {
					obras = obrasBo.findById(getId());
				}
			} catch (Throwable e) {
				// TODO traza error
			}
			
			return obras;
		}		
		
		public String delete() throws Exception {						
			obrasBo.delete(obras);
			
			return ActionSupport.SUCCESS;
		}
		
		public String prepare() throws Exception {															
			
			return ActionSupport.SUCCESS;
		}
		
		public String create() throws Exception{				
			obrasBo.add(obras);
			
			return ActionSupport.SUCCESS;
		}
				
		public String list() throws Exception{
			Collection<Obras> listaObras = obrasBo.findAll();
			
			getServletRequest().setAttribute("listaObras", listaObras);
			
			return ActionSupport.SUCCESS;		
		}
		
		public String buscar() throws Exception{
			Obras obrasAux = (Obras) BeanUtils.cloneBean(obras);
			
			Collection<Obras> listaObras = obrasBo.findByPojo(obrasAux);
			
			getServletRequest().setAttribute("listaObras", listaObras);
			
			return ActionSupport.SUCCESS;		
		}
}
