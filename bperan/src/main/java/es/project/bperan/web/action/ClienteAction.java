package es.project.bperan.web.action;

import java.util.Collection;

import org.apache.commons.beanutils.BeanUtils;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.pojo.Bajalaboral;
import es.project.bperan.pojo.Cliente;
import es.project.bperan.pojo.Empleado;
import es.project.bperan.pojo.Usuario;

public class ClienteAction extends BperanAction implements ModelDriven<Cliente>  {
	
		Cliente cliente; 
		
		GenericBO<Cliente> clienteBo;
		private GenericBO<Usuario> usuarioBo;
			
				
		public void setClienteBo(GenericBO<Cliente> clienteBo) {
			this.clienteBo = clienteBo;
		}
						
		public GenericBO<Usuario> getUsuarioBo() {
			return usuarioBo;
		}

		public void setUsuarioBo(GenericBO<Usuario> usuarioBo) {
			this.usuarioBo = usuarioBo;
		}

		public void setCliente(Cliente cliente) {
			this.cliente = cliente;
		}				

		public Cliente getModel() {
			try {
				if (getId() != null) {
					cliente = clienteBo.findById(getId());
				}
			} catch (Throwable e) {
				// TODO traza error
			}
			return cliente;
		}		
		
		public String delete() throws Exception {						
			clienteBo.delete(cliente);
			
			return ActionSupport.SUCCESS;
		}
		
		/*prepare carga la lista de usuarios de la request*/
		public String prepare() throws Exception {
					
			getServletRequest().setAttribute("listaUsuarios", usuarioBo.findAll());		
						
			return ActionSupport.SUCCESS;
		}
		
		public String create() throws Exception{				
			clienteBo.add(cliente);
			
			return ActionSupport.SUCCESS;
		}
				
		public String list() throws Exception{
			Collection<Cliente> listaCliente = clienteBo.findAll();
			
			getServletRequest().setAttribute("listaCliente", listaCliente);
			
			return ActionSupport.SUCCESS;		
		}

		public String buscar() throws Exception{
			Cliente clienteAux = (Cliente) BeanUtils.cloneBean(cliente);
			//Se hace un clone para que entienda el '*' y no lo transforme en un '%' en el buscador
			clienteAux.setUsuario((Usuario) BeanUtils.cloneBean(cliente.getUsuario()));
			
			Collection<Cliente> listaCliente = clienteBo.findByPojo(clienteAux);
			
			getServletRequest().setAttribute("listaCliente", listaCliente);
			
			return ActionSupport.SUCCESS;		
		}

		public String detalle() throws Exception{
			
			return ActionSupport.SUCCESS;
		}
}
