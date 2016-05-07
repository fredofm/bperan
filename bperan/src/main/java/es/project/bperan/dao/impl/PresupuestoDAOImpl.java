package es.project.bperan.dao.impl;

import java.util.Collection;

import org.hibernate.Criteria;
import org.hibernate.criterion.Example;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Obras;
import es.project.bperan.pojo.Presupuesto;

public class PresupuestoDAOImpl extends HibernateDaoSupport implements GenericDAO<Presupuesto> {

	public void add(Presupuesto presupuesto) {
		/*Utiliza SessionFactory de Hibernate para crear la sesión y, finalmente, 
		se utiliza el método .saveOrUpdate () para añadir/modificar el objeto Presupuesto en base de datos */
		getHibernateTemplate().saveOrUpdate(presupuesto);	
	}

	@SuppressWarnings("unchecked")
	public Collection<Presupuesto> findAll() {
		return (Collection<Presupuesto>) getHibernateTemplate().find("FROM Presupuesto");
	}

	@Override
	public void delete(Presupuesto pojo) {
		getHibernateTemplate().delete(pojo);	
	}
	
	public Presupuesto findById(int idpresupuesto) {
		return (Presupuesto) getHibernateTemplate().get(Presupuesto.class, idpresupuesto);
	}

	@Override
	public Collection<Presupuesto> findByPojo(Presupuesto presupuesto) {
		Example presupuestoCriteria = Example.create(presupuesto);
		Criteria criteria = getSession().createCriteria(Presupuesto.class).add(presupuestoCriteria);
		
		return criteria.list();		
	}
	
}
