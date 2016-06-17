package es.project.bperan.web.action;

import java.security.Principal;
import java.util.Collection;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.collections.CollectionUtils;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.pojo.Bajalaboral;
import es.project.bperan.pojo.Cliente;
import es.project.bperan.pojo.Empleado;
import es.project.bperan.pojo.Fotos;
import es.project.bperan.pojo.Obras;
import es.project.bperan.pojo.Presupuesto;
import es.project.bperan.pojo.Usuario;
import es.project.bperan.pojo.Vacaciones;


public class EmpleadoAction extends BperanAction implements ModelDriven<Empleado> {
	
		private Empleado empleado; 		
		private GenericBO<Empleado> empleadoBo;
		private GenericBO<Obras> obrasBo;
		private GenericBO<Vacaciones> vacacionesBo;
		private GenericBO<Bajalaboral> bajalaboralBo;
			
		public void setEmpleadoBo(GenericBO<Empleado> empleadoBo) {
			this.empleadoBo = empleadoBo;
		}
	
		public void setObrasBo(GenericBO<Obras> obrasBo) {
			this.obrasBo = obrasBo;
		}

		public void setEmpleado(Empleado empleado) {
			this.empleado = empleado;
		}
		
		public void setVacacionesBo(GenericBO<Vacaciones> vacacionesBo) {
			this.vacacionesBo = vacacionesBo;
		}

		public void setBajalaboralBo(GenericBO<Bajalaboral> bajalaboralBo) {
			this.bajalaboralBo = bajalaboralBo;
		}

		@Override
		public Empleado getModel() {
			try {
				if (getId() != null) {
					empleado = empleadoBo.findById(getId());
				}
			} catch (Throwable e) {
				// TODO traza error
			}
			
			return empleado;
		}			
		
		public String delete() throws Exception {						
			empleadoBo.delete(empleado);
			
			return ActionSupport.SUCCESS;
		}

		/*prepare carga la lista de obras*/
		public String prepare() throws Exception {
			getServletRequest().setAttribute("listaObras", obrasBo.findAll());	
																		
  			return ActionSupport.SUCCESS;
  		}
			
		
		public String create() throws Exception{
			if (empleado != null && (empleado.getObras() == null || empleado.getObras().getIdobra() == null )) {
				empleado.setObras(null);
			}
			
			empleadoBo.add(empleado);
			
			return ActionSupport.SUCCESS;
		}
				
		public String list() throws Exception{
			Collection<Empleado> listaEmpleados = empleadoBo.findAll();
			
			getServletRequest().setAttribute("listaEmpleados", listaEmpleados);
			
			return ActionSupport.SUCCESS;		
		}
		
		public String buscar() throws Exception{
			Empleado empleadoAux = (Empleado) BeanUtils.cloneBean(empleado);
			empleadoAux.setObras((Obras) BeanUtils.cloneBean(empleado.getObras()));
			
			Collection<Empleado> listaEmpleados = empleadoBo.findByPojo(empleadoAux);
			
			getServletRequest().setAttribute("listaEmpleados", listaEmpleados);
			
			return ActionSupport.SUCCESS;		
			
		}
		
		public String detalle() throws Exception{
			
			Empleado empleado = empleadoBo.findById(getId());
			getServletRequest().setAttribute("empleado", empleado);
			
			Vacaciones vacaciones = new Vacaciones(); 			
			vacaciones.setEmpleado(empleado);
			
			Collection<Vacaciones> listavacacionesEmpleado = vacacionesBo.findByPojo(vacaciones);
			getServletRequest().setAttribute("listavacacionesEmpleado", listavacacionesEmpleado);
			
			Bajalaboral bajalaboral = new Bajalaboral();			
			bajalaboral.setEmpleado(empleado);
			
			Collection<Bajalaboral> listaBajalaboralEmpleado = bajalaboralBo.findByPojo(bajalaboral);
			getServletRequest().setAttribute("listaBajalaboralEmpleado", listaBajalaboralEmpleado);

			
			return ActionSupport.SUCCESS;
		}
}
