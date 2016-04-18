package es.project.bperan.bo.impl;

import java.util.Collection;

import es.project.bperan.bo.UsuariosBO;
import es.project.bperan.dao.UsuarioDAO;
import es.project.bperan.pojo.Usuario;

public class UsuariosBoImpl implements UsuariosBO {

	private UsuarioDAO usuarioDAO;
	
	public void setUsuarioDAO(UsuarioDAO usuarioDAO) {
		this.usuarioDAO = usuarioDAO;
	}

	@Override
	public void addUsuario(Usuario usuario) {
		usuarioDAO.addUsuario(usuario);
		
	}

	@Override
	public Collection<Usuario> findAllUsuario() {
		return usuarioDAO.findAllUsuario();
	}
	
	
}
