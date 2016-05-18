package es.project.bperan.web.action;

import java.util.Collection;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.BeanFactoryAnnotationUtils;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.pojo.Empleado;
import es.project.bperan.pojo.Vacaciones;

/**
 * @author Carol
 *
 */
public class VacacionesAction extends BperanAction implements ModelDriven<Vacaciones>  {
	
		private Vacaciones vacaciones; 		
		private GenericBO<Vacaciones> vacacionesBo;		
		private GenericBO<Empleado> empleadoBo;
		
		public void setVacacionesBo(GenericBO<Vacaciones> vacacionesBo) {
			this.vacacionesBo = vacacionesBo;
		}
			
		public void setVacaciones(Vacaciones vacaciones) {
			this.vacaciones = vacaciones;
		}

		public void setEmpleadoBo(GenericBO<Empleado> empleadoBo) {
			this.empleadoBo = empleadoBo;
		}

		public Vacaciones getModel() {
			try {
				if (getId() != null) {
					vacaciones = vacacionesBo.findById(getId());
				}
			} catch (Throwable e) {
				// TODO traza error
			}
			
			return vacaciones;
		}		
		
		public String delete() throws Exception {						
			vacacionesBo.delete(vacaciones);
			
			return ActionSupport.SUCCESS;
		}
		
		public String prepare() throws Exception {				
			getServletRequest().setAttribute("listaEmpleados", empleadoBo.findAll());
			
			return ActionSupport.SUCCESS;
		}
		
		public String create() throws Exception{				
			vacacionesBo.add(vacaciones);
			
			return ActionSupport.SUCCESS;
		}
				
		public String list() throws Exception{
			Collection<Vacaciones> listaVacaciones = vacacionesBo.findAll();
			
			getServletRequest().setAttribute("listaVacaciones", listaVacaciones);
			
			return ActionSupport.SUCCESS;		
		}
		
		public String buscar() throws Exception{
			Vacaciones vacacionesAux = (Vacaciones) BeanUtils.cloneBean(vacaciones);
			vacacionesAux.setEmpleado((Empleado) BeanUtils.cloneBean(vacaciones.getEmpleado()));
			
			Collection<Vacaciones> listaVacaciones = vacacionesBo.findByPojo(vacacionesAux);
			
			getServletRequest().setAttribute("listaVacaciones", listaVacaciones);
			
			return ActionSupport.SUCCESS;		
		}
		
		public String detalle() throws Exception{
			
			return ActionSupport.SUCCESS;
		}
}
