package es.project.bperan.bo;

import java.util.Collection;

import es.project.bperan.pojo.Usuario;

public interface UsuariosBO {
	public void addUsuario(Usuario usuario);

	public Collection<Usuario> findAllUsuario();
}
