package es.project.bperan.dao.impl;

import java.util.Collection;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Role;

public class RoleDAOImpl extends HibernateDaoSupport implements GenericDAO<Role> {

	public void add(Role role) {
		getHibernateTemplate().save(role);			
	}

	@SuppressWarnings("unchecked")
	public Collection<Role> findAll() {
		return getHibernateTemplate().find("FROM Role");
	}

	@Override
	public void delete(Role pojo) {
		getHibernateTemplate().delete(pojo);		
	}	
}
