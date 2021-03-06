package es.project.bperan.web.action;

import java.util.Collection;

import org.apache.commons.beanutils.BeanUtils;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.bo.UsuarioBO;
import es.project.bperan.pojo.Role;
import es.project.bperan.pojo.Usuario;


public class UsuarioAction extends BperanAction implements ModelDriven<Usuario>  {
	
		private Usuario usuario; 		
		private UsuarioBO<Usuario> usuarioBo;
		private GenericBO<Role> roleBo;			
		private Boolean resetPassword = false;
		
		public void setUsuarioBo(UsuarioBO<Usuario> usuarioBo) {
			this.usuarioBo = usuarioBo;
		}
		
		public Boolean getResetPassword() {
			return resetPassword;
		}

		public void setResetPassword(Boolean resetPassword) {
			this.resetPassword = resetPassword;
		}

		public void setRoleBo(GenericBO<Role> roleBo) {
			this.roleBo = roleBo;
		}				

		public void setUsuario(Usuario usuario) {
			this.usuario = usuario;
		}

		public Usuario getModel() {
			try {
				if (getId() != null) {
					usuario = usuarioBo.findById(getId());
				}
			} catch (Throwable e) {
				// TODO traza error
			}
			
			return usuario;
		}		
		
		public String delete() throws Exception {						
			usuarioBo.delete(usuario);
			
			return ActionSupport.SUCCESS;
		}

		/*prepare carga la lista de roles*/
		public String prepare() throws Exception {
			getServletRequest().setAttribute("listaRoles", roleBo.findAll());
									
			return ActionSupport.SUCCESS;
		}
		
		public String create() throws Exception{
			
			if ( usuario.getIdusuario() != null) {
				usuarioBo.update(usuario, resetPassword);
			} else {
				usuarioBo.add(usuario);
			}			 						
			
			return ActionSupport.SUCCESS;
		}
				
		public String list() throws Exception{
			Collection<Usuario> listaUsuarios = usuarioBo.findAll();
			
			getServletRequest().setAttribute("listaUsuarios", listaUsuarios);
			
			return ActionSupport.SUCCESS;		
		}
		
		public String buscar() throws Exception{
			Usuario usuarioAux = (Usuario) BeanUtils.cloneBean(usuario);
			//usuarioAux.setRole((Role) BeanUtils.cloneBean(usuario.getRole()));
			
			Collection<Usuario> listaUsuarios = usuarioBo.findByPojo(usuarioAux);
			
			getServletRequest().setAttribute("listaUsuarios", listaUsuarios);
			
			return ActionSupport.SUCCESS;		
		}
		
		public String detalle() throws Exception{
			
			return ActionSupport.SUCCESS;
		}
}
