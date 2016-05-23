package es.project.bperan.web.action;

import java.security.Principal;
import java.util.Collection;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.collections.CollectionUtils;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.pojo.Cliente;
import es.project.bperan.pojo.Empleado;
import es.project.bperan.pojo.Fotos;
import es.project.bperan.pojo.Obras;
import es.project.bperan.pojo.Presupuesto;
import es.project.bperan.pojo.Usuario;

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
		private GenericBO<Usuario> usuarioBo;
		private GenericBO<Fotos> fotosBo;
		
		public void setFotosBo(GenericBO<Fotos> fotosBo) {
			this.fotosBo = fotosBo;
		}

		public void setUsuarioBo(GenericBO<Usuario> usuarioBo) {
			this.usuarioBo = usuarioBo;
		}

		public void setObrasBo(GenericBO<Obras> obrasBo) {
			this.obrasBo = obrasBo;
		}
			
		public void setObras(Obras obras) {
			this.obras = obras;
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
			 	
			Empleado empleado = new Empleado(); 
				
			Obras obra = obrasBo.findById(getId());
			getServletRequest().setAttribute("obras", obra);
			
			Fotos fotos = new Fotos();
			fotos.setObras(obra);
			Collection<Fotos> listaFotos = fotosBo.findByPojo(fotos);
			getServletRequest().setAttribute("listaFotos", listaFotos);
						
			empleado.setObras(obra);
			
			Collection<Empleado> empleadosObra = empleadoBo.findByPojo(empleado);
			getServletRequest().setAttribute("empleado", empleadosObra);
			
			Presupuesto presupuesto = new Presupuesto();
			
			if (getServletRequest().isUserInRole("cliente")) {
				Principal userPrincipal = getServletRequest().getUserPrincipal();
				
				String nombreUsuario = userPrincipal.getName();
				
				Usuario usuario = new Usuario();
				usuario.setNombre(nombreUsuario);
				usuario = (Usuario) CollectionUtils.get(usuarioBo.findByPojo(usuario), 0);
				
				Cliente cliente = new Cliente();
				cliente.setUsuario(usuario);
				
				Collection<Cliente> listaClientes = clienteBo.findByPojo(cliente);
				
				if (CollectionUtils.isNotEmpty(listaClientes)) {
					cliente = (Cliente) CollectionUtils.get(listaClientes, 0);
					presupuesto.setCliente(cliente);
				}
			}
			
			presupuesto.setObras(obra);
			Collection<Presupuesto> presupuestoObra = presupuestoBo.findByPojo(presupuesto);
			getServletRequest().setAttribute("presupuesto", presupuestoObra);
			
			return ActionSupport.SUCCESS;
		}
}
