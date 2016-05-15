package es.project.bperan.web.action;

import java.util.Collection;

import org.apache.commons.beanutils.BeanUtils;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.pojo.Bajalaboral;
import es.project.bperan.pojo.Empleado;
import es.project.bperan.pojo.Obras;

/**
 * @author Carol
 *
 */
public class BajalaboralAction extends BperanAction implements ModelDriven<Bajalaboral>  {
	
		private Bajalaboral bajalaboral; 		
		private GenericBO<Bajalaboral> bajalaboralBo;
		private GenericBO<Empleado>empleadoBo;	
		
		public void setBajalaboralBo(GenericBO<Bajalaboral> bajalaboralBo) {
			this.bajalaboralBo = bajalaboralBo;
		}			
		
		public void setEmpleadoBo(GenericBO<Empleado> empleadoBo) {
			this.empleadoBo = empleadoBo;
		}

		public void setBajalaboral(Bajalaboral bajalaboral) {
			this.bajalaboral = bajalaboral;
		}

		public Bajalaboral getModel() {
			try {
				if (getId() != null) {
					bajalaboral = bajalaboralBo.findById(getId());
				}
			} catch (Throwable e) {
				// TODO traza error
			}
			
			return bajalaboral;
		}		
		
		public String delete() throws Exception {						
			bajalaboralBo.delete(bajalaboral);
			
			return ActionSupport.SUCCESS;
		}

		/*prepare carga la lista de empleados */
		public String prepare() throws Exception {
			getServletRequest().setAttribute("listaEmpleados", empleadoBo.findAll());	
			
			return ActionSupport.SUCCESS;
		}
		
		public String create() throws Exception{				
			bajalaboralBo.add(bajalaboral);
			
			return ActionSupport.SUCCESS;
		}
				
		public String list() throws Exception{
			Collection<Bajalaboral> listaBajalaboral = bajalaboralBo.findAll();
			
			getServletRequest().setAttribute("listaBajalaboral", listaBajalaboral);
			
			return ActionSupport.SUCCESS;		
		}


		public String buscar() throws Exception{
			Bajalaboral bajalaboralAux = (Bajalaboral) BeanUtils.cloneBean(bajalaboral);
			
			Collection<Bajalaboral> listaBajalaboral = bajalaboralBo.findByPojo(bajalaboralAux);
			
			getServletRequest().setAttribute("listaBajalaboral", listaBajalaboral);
			
			return ActionSupport.SUCCESS;		
		}

}
