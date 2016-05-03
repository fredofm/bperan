package es.project.bperan.dao.impl;

import java.util.Collection;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Role;

public class RoleDAOImpl extends HibernateDaoSupport implements GenericDAO<Role> {

	public void add(Role role) {
		/*Utiliza SessionFactory de Hibernate para crear la sesión y, finalmente, 
		se utiliza el método .save () para añadir el objeto role en base de datos */
		getHibernateTemplate().save(role);			
	}

	@SuppressWarnings("unchecked")
	public Collection<Role> findAll() {
		return (Collection<Role>) getHibernateTemplate().find("FROM Role");
	}

	@Override
	public void delete(Role pojo) {
		getHibernateTemplate().delete(pojo);		
	}

	@Override
	public Role findById(int id) {
		return (Role) getHibernateTemplate().get(Role.class, id);
	}	
}
