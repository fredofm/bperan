package es.project.bperan.dao.impl;

import java.util.Collection;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Usuario;

public class UsuarioDAOImpl extends HibernateDaoSupport implements GenericDAO<Usuario> {

	public void add(Usuario usuario) {
		getHibernateTemplate().save(usuario);		
	}

	@SuppressWarnings("unchecked")
	public Collection<Usuario> findAll() {
		return getHibernateTemplate().find("FROM Usuario");
	}
}
