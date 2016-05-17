package es.project.bperan.dao.impl;

import java.util.Collection;

import org.hibernate.Criteria;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import es.project.bperan.dao.GenericDAO;
import es.project.bperan.dao.utils.DAOUtils;
import es.project.bperan.pojo.Bajalaboral;
import es.project.bperan.pojo.Obras;
import es.project.bperan.pojo.Presupuesto;

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

	public Collection<Bajalaboral> findByPojo(Bajalaboral bajalaboral) {										
		
		Example bajalaboralCriteria = Example.create(bajalaboral);
		Criteria criteria = getSession().createCriteria(Bajalaboral.class).add(bajalaboralCriteria);
		if(bajalaboral.getEmpleado() != null && bajalaboral.getEmpleado().getIdempleado() != null){
			criteria.createCriteria("bajalaboral").add(Restrictions.eq("idempleado", bajalaboral.getEmpleado().getIdempleado()));
		}						
		
		return criteria.list();				
	}
	
}
