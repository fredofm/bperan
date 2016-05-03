package es.project.bperan.web.action;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.pojo.Role;
import es.project.bperan.pojo.Usuario;

public class UsuarioAction extends ActionSupport implements ModelDriven<Usuario>, ServletRequestAware  {
	
		private Usuario usuario; 		
		private GenericBO<Usuario> usuarioBo;
		private GenericBO<Role> roleBo;
		
		private HttpServletRequest request;
		
		public void setServletRequest(HttpServletRequest request) {
			this.request = request;			
		}
		
		public void setUsuarioBo(GenericBO<Usuario> usuarioBo) {
			this.usuarioBo = usuarioBo;
		}
		
		public void setRoleBo(GenericBO<Role> roleBo) {
			this.roleBo = roleBo;
		}
		
		public void setUsuario(Usuario usuario) {
			this.usuario = usuario;
		}
		
		public Usuario getUsuario() {
			return usuario;
		}

		@Override
		public Usuario getModel() {
			return usuario;
		}		
		
		public String delete() throws Exception {						
			usuarioBo.delete(usuario);
			
			return ActionSupport.SUCCESS;
		}

		public String prepare() throws Exception {
			request.setAttribute("listaRoles", roleBo.findAll());						
			
			try {
				Integer idusuario = Integer.parseInt(request.getParameter("idusuario"));
			
				usuario = usuarioBo.findById(idusuario);
			} catch (Throwable e) {
				// TODO traza error
			}						
			
			return ActionSupport.SUCCESS;
		}
		
		public String create() throws Exception{				
			usuarioBo.add(usuario);
			
			return ActionSupport.SUCCESS;
		}
				
		public String list() throws Exception{
			Collection<Usuario> listaUsuarios = usuarioBo.findAll();
			
			request.setAttribute("listaUsuarios", listaUsuarios);
			
			return ActionSupport.SUCCESS;		
		}
}
