package es.project.bperan.web.action;

import java.util.Collection;

import org.apache.commons.beanutils.BeanUtils;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.pojo.Cliente;
import es.project.bperan.pojo.Empleado;
import es.project.bperan.pojo.Obras;
import es.project.bperan.pojo.Presupuesto;

/**
 * @author Carol
 *
 */
public class ObrasAction extends BperanAction implements ModelDriven<Obras>  {
	
		private Obras obras; 		
		private GenericBO<Obras> obrasBo;	
		private GenericBO<Presupuesto> presupuestoBo;
		private GenericBO<Cliente> clienteBo;
		private GenericBO<Empleado> empleadoBo;
		Presupuesto presupuesto; 		
		Cliente cliente; 	
		Empleado empleado; 
		
		public void setObrasBo(GenericBO<Obras> obrasBo) {
			this.obrasBo = obrasBo;
		}
			
		public void setObras(Obras obras) {
			this.obras = obras;
		}
			
		public Presupuesto getPresupuesto() {
			return presupuesto;
		}

		public void setPresupuesto(Presupuesto presupuesto) {
			this.presupuesto = presupuesto;
		}

		public Cliente getCliente() {
			return cliente;
		}

		public void setCliente(Cliente cliente) {
			this.cliente = cliente;
		}

		public Empleado getEmpleado() {
			return empleado;
		}

		public void setEmpleado(Empleado empleado) {
			this.empleado = empleado;
		}

		public GenericBO<Presupuesto> getPresupuestoBo() {
			return presupuestoBo;
		}

		public void setPresupuestoBo(GenericBO<Presupuesto> presupuestoBo) {
			this.presupuestoBo = presupuestoBo;
		}
		
		public GenericBO<Cliente> getClienteBo() {
			return clienteBo;
		}

		public void setClienteBo(GenericBO<Cliente> clienteBo) {
			this.clienteBo = clienteBo;
		}
				
		public GenericBO<Empleado> getEmpleadoBo() {
			return empleadoBo;
		}

		public void setEmpleadoBo(GenericBO<Empleado> empleadoBo) {
			this.empleadoBo = empleadoBo;
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
		
		public String detalle() throws Exception{
			/*llamar a obrasbo hacer un gtbyid (getid())
			request obras
			pintar los datos igual en las tablas
			pojo presupuesto
			pojo clientes 
			en el resto de pojos hacer un findbypojo			
			request obras, presupuesto, cliente, empleado...
			*/
			/*
			Presupuesto presupuesto = new Presupuesto(); 		
			Cliente cliente = new Cliente(); 	
			Empleado empleado = new Empleado(); 
			*/	
			Obras obrasId = obrasBo.findById(getId());
			Obras obrasprueba = obrasBo.findById(obras.getIdobra());
			getServletRequest().setAttribute("obras", obrasprueba);
			
			Collection<Presupuesto> presupuestoObra = presupuestoBo.findByPojo(presupuesto);
			getServletRequest().setAttribute("presupuesto", presupuestoObra);
			
			Collection<Cliente> clienteObra = clienteBo.findByPojo(cliente);
			getServletRequest().setAttribute("cliente", clienteObra);
						
			Collection<Empleado> empleadoObra = empleadoBo.findByPojo(empleado);
			getServletRequest().setAttribute("empleado", empleadoObra);
			
			
			return ActionSupport.SUCCESS;
		}
}
