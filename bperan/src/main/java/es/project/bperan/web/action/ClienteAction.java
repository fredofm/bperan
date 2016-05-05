package es.project.bperan.web.action;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.pojo.Cliente;
import es.project.bperan.pojo.Usuario;

public class ClienteAction extends ActionSupport implements ModelDriven<Cliente>, ServletRequestAware  {
	
		Cliente cliente; 
		
		GenericBO<Cliente> clienteBo;
		private GenericBO<Usuario> usuarioBo;
			
		private HttpServletRequest request;
		
		public void setServletRequest(HttpServletRequest request) {
			this.request = request;			
		}
		
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

		public Cliente getCliente() {
			return cliente;
		}

		public Cliente getModel() {
			return cliente;
		}		
		
		public String delete() throws Exception {						
			clienteBo.delete(cliente);
			
			return ActionSupport.SUCCESS;
		}
		
		public void reset() {
			cliente = new Cliente();
		}

		/*prepare carga el cliente de la request*/
		public String prepare() throws Exception {
					
			request.setAttribute("listaUsuarios", usuarioBo.findAll());		
			
			try {
				Integer idcliente = Integer.parseInt(request.getParameter("idcliente"));
			
				cliente = clienteBo.findById(idcliente);
			} catch (Throwable e) {
				// TODO traza error
			}		
			//reset();
			
			return ActionSupport.SUCCESS;
		}
		
		public String create() throws Exception{				
			clienteBo.add(cliente);
			
			return ActionSupport.SUCCESS;
		}
				
		public String list() throws Exception{
			Collection<Cliente> listaCliente = clienteBo.findAll();
			
			request.setAttribute("listaCliente", listaCliente);
			
			return ActionSupport.SUCCESS;		
		}
}
