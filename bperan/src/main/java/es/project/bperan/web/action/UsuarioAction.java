package es.project.bperan.web.action;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import es.project.bperan.bo.UsuariosBO;
import es.project.bperan.pojo.Usuario;

public class UsuarioAction extends ActionSupport {
	
		Usuario usuario = new Usuario();
		Collection<Usuario> usuarioList = new ArrayList<Usuario>();
		
		UsuariosBO usuarioBo;
		
		//DI via Spring
		public void setUsuarioBo(UsuariosBO usuarioBo) {
			this.usuarioBo = usuarioBo;
		}

		public Usuario getModel() {
			return usuario;
		}
		
		public Collection<Usuario> getUsuarioList() {
			return usuarioList;
		}

		public void setUsuarioList(List<Usuario> usuarioList) {
			this.usuarioList = usuarioList;
		}

		//save customer
		public String addUsuario() throws Exception{
			
			//save it			
			usuarioBo.addUsuario(usuario);		 			
			
			return "success";		
		}
		
		//list all customers
		public String listUsuario() throws Exception{
			
			usuarioList = usuarioBo.findAllUsuario();
			
			return "success";		
		}
}
