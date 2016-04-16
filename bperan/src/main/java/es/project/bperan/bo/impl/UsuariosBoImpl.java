package es.project.bperan.bo.impl;

import java.util.Collection;

import es.project.bperan.bo.UsuariosBO;
import es.project.bperan.dao.UsuarioDAO;
import es.project.bperan.vo.UsuarioVO;

public class UsuariosBoImpl implements UsuariosBO {

	private UsuarioDAO usuarioDAO;
	
	public void setUsuarioDAO(UsuarioDAO usuarioDAO) {
		this.usuarioDAO = usuarioDAO;
	}

	@Override
	public void addUsuario(UsuarioVO usuario) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Collection<UsuarioVO> findAllUsuario() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
