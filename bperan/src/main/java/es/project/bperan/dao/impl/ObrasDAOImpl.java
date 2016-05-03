package es.project.bperan.dao.impl;

import java.util.Collection;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Obras;

public class ObrasDAOImpl extends HibernateDaoSupport implements GenericDAO<Obras> {

	public void add(Obras obra) {
		/*Utiliza SessionFactory de Hibernate para crear la sesión y, finalmente, 
		se utiliza el método .save () para añadir el objeto obra en base de datos */
		getHibernateTemplate().save(obra);		
	}

	@SuppressWarnings("unchecked")
	public Collection<Obras> findAll() {
		return (Collection<Obras>) getHibernateTemplate().find("FROM Obras");
	}

	@Override
	public void delete(Obras pojo) {
		getHibernateTemplate().delete(pojo);	
	}
	
	public Obras findById(int idobra) {
		return (Obras) getHibernateTemplate().get(Obras.class, idobra);
	}
}
