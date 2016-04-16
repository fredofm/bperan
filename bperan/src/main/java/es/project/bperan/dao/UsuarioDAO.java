package es.project.bperan.dao;

import java.util.Collection;

import es.project.bperan.vo.UsuarioVO;

public interface UsuarioDAO {
	public void addUsuario(UsuarioVO usuario);

	public Collection findAllUsuario();
}
