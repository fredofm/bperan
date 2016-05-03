package es.project.bperan.dao.impl;

import java.util.Collection;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Usuario;

public class UsuarioDAOImpl extends HibernateDaoSupport implements GenericDAO<Usuario> {

	public void add(Usuario usuario) {
		/*Utiliza SessionFactory de Hibernate para crear la sesión y, finalmente, 
		se utiliza el método .save () para añadir el objeto usuario en base de datos */
		getHibernateTemplate().saveOrUpdate(usuario);	
	}

	@SuppressWarnings("unchecked")
	public Collection<Usuario> findAll() {
		return (Collection<Usuario>) getHibernateTemplate().find("FROM Usuario");
	}

	@Override
	public void delete(Usuario pojo) {
		getHibernateTemplate().delete(pojo);	
	}
	
	public Usuario findById(int idusuario) {
		return (Usuario) getHibernateTemplate().get(Usuario.class, idusuario);
	}
}
