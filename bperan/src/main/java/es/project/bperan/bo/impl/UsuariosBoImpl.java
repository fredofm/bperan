package es.project.bperan.bo.impl;

import java.util.Collection;
import java.util.Date;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Usuario;

public class UsuariosBoImpl implements GenericBO<Usuario> {

	private GenericDAO<Usuario> usuarioDAO;
	
	public UsuariosBoImpl() {
		super();
	}
	
	public void setUsuarioDAO(GenericDAO<Usuario> usuarioDAO) {
		this.usuarioDAO = usuarioDAO;
	}

	@Override
	public void add(Usuario usuario) {
		usuario.setFechacreacion(new Date());
		
		usuarioDAO.add(usuario);
		
	}

	@Override
	public Collection<Usuario> findAll() {
		return usuarioDAO.findAll();
	}
	
	
}
