package es.project.bperan.dao.impl;

import java.util.Collection;

import org.hibernate.Criteria;
import org.hibernate.criterion.Example;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import es.project.bperan.dao.GenericDAO;
import es.project.bperan.dao.utils.DAOUtils;
import es.project.bperan.pojo.Obras;

public class ObrasDAOImpl extends HibernateDaoSupport implements GenericDAO<Obras> {

	public void add(Obras obra) {
		/*Utiliza SessionFactory de Hibernate para crear la sesión y, finalmente, 
		se utiliza el método saveOrUpdate () para añadir/modificar el objeto obra en base de datos */
		getHibernateTemplate().saveOrUpdate(obra);		
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
	
	public Collection<Obras> findByPojo(Obras obra) {										
		
		DAOUtils.nullifyStrings(obra);
		DAOUtils.enableWildcards(obra);
		
		Example obraCriteria = Example.create(obra)
				.excludeZeroes()           //exclude zero valued properties
			    //.excludeProperty("color")  //exclude the property named "color"
			    .ignoreCase()              //perform case insensitive string comparisons
			    .enableLike();             //use like for string comparisons
		Criteria criteria = getSession().createCriteria(Obras.class).add(obraCriteria);				
		
		return criteria.list();				
	}
}
