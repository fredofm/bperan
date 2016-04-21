package es.project.bperan.bo.impl;

import java.util.Collection;
import java.util.Date;

import es.project.bperan.bo.UsuariosBO;
import es.project.bperan.dao.UsuarioDAO;
import es.project.bperan.pojo.Usuario;

public class UsuariosBoImpl implements UsuariosBO {

	private UsuarioDAO usuarioDAO;
	
	public UsuariosBoImpl() {
		super();
	}
	
	public void setUsuarioDAO(UsuarioDAO usuarioDAO) {
		this.usuarioDAO = usuarioDAO;
	}

	@Override
	public void addUsuario(Usuario usuario) {
		usuario.setFechacreacio(new Date());
		
		usuarioDAO.addUsuario(usuario);
		
	}

	@Override
	public Collection<Usuario> findAllUsuario() {
		return usuarioDAO.findAllUsuario();
	}
	
	
}
