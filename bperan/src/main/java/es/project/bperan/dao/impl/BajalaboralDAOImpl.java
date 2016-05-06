package es.project.bperan.dao.impl;

import java.util.Collection;

import org.hibernate.Criteria;
import org.hibernate.criterion.Example;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Bajalaboral;

public class BajalaboralDAOImpl extends HibernateDaoSupport implements GenericDAO<Bajalaboral> {

	public void add(Bajalaboral bajalaboral) {
		/*Utiliza SessionFactory de Hibernate para crear la sesión y, finalmente, 
		se utiliza el método .save () para añadir el objeto usuario en base de datos */
		getHibernateTemplate().saveOrUpdate(bajalaboral);	
	}

	@SuppressWarnings("unchecked")
	public Collection<Bajalaboral> findAll() {
		return (Collection<Bajalaboral>) getHibernateTemplate().find("FROM Bajalaboral");
	}

	@Override
	public void delete(Bajalaboral pojo) {
		getHibernateTemplate().delete(pojo);	
	}
	
	public Bajalaboral findById(int idbajalaboral) {
		return (Bajalaboral) getHibernateTemplate().get(Bajalaboral.class, idbajalaboral);
	}

	@Override
	public Collection<Bajalaboral> findByPojo(Bajalaboral bajalaboral) {
		Example bajalaboralCriteria = Example.create(bajalaboral);
		Criteria criteria = getSession().createCriteria(Bajalaboral.class).add(bajalaboralCriteria);
		
		return criteria.list();		
	}
	
}
