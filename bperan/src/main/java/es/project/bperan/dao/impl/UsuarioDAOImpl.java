package es.project.bperan.dao.impl;

import java.util.Collection;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import es.project.bperan.dao.UsuarioDAO;
import es.project.bperan.pojo.Usuario;

public class UsuarioDAOImpl extends HibernateDaoSupport implements UsuarioDAO {

//	public UsuarioDAOImpl() {
//		super();
//	}
	
	
	
	public void addUsuario(Usuario usuario) {
		getHibernateTemplate().save(usuario);		
	}

	public Collection<Usuario> findAllUsuario() {
		return getHibernateTemplate().find("FROM Usuario");
	}
}
