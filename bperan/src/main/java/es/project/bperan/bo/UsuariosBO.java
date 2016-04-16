package es.project.bperan.bo;

import java.util.Collection;

import es.project.bperan.vo.UsuarioVO;

public interface UsuariosBO {
	public void addUsuario(UsuarioVO usuario);

	public Collection<UsuarioVO> findAllUsuario();
}
