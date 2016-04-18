package es.project.bperan.dao;

import java.util.Collection;

import es.project.bperan.pojo.Usuario;

public interface UsuarioDAO {
	public void addUsuario(Usuario usuario);

	public Collection<Usuario> findAllUsuario();
}
