package es.project.bperan.dao.impl;

import java.util.Collection;

import org.hibernate.Criteria;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import es.project.bperan.dao.GenericDAO;
import es.project.bperan.dao.utils.DAOUtils;
import es.project.bperan.pojo.Empleado;


public class EmpleadoDAOImpl extends HibernateDaoSupport implements GenericDAO<Empleado> {

	public void add(Empleado empleado) {
		/*Utiliza SessionFactory de Hibernate para crear la sesión y, finalmente, 
		se utiliza el método .saveOrUpdate () para añadir/modificar el objeto empleado en base de datos */
		getHibernateTemplate().saveOrUpdate(empleado);	
	}

	@SuppressWarnings("unchecked")
	public Collection<Empleado> findAll() {
		return (Collection<Empleado>) getHibernateTemplate().find("FROM Empleado");
	}

	@Override
	public void delete(Empleado pojo) {
		getHibernateTemplate().delete(pojo);	
	}
	
	public Empleado findById(int idempleado) {
		return (Empleado) getHibernateTemplate().get(Empleado.class, idempleado);
	}

	public Collection<Empleado> findByPojo(Empleado empleado) {										
		
		DAOUtils.nullifyStrings(empleado);
		DAOUtils.enableWildcards(empleado);
		
		Example empleadoCriteria = Example.create(empleado)
				.excludeZeroes()           //exclude zero valued properties
			    //.excludeProperty("color")  //exclude the property named "color"
			    .ignoreCase()              //perform case insensitive string comparisons
			    .enableLike();             //use like for string comparisons
		
		Criteria criteria = getSession().createCriteria(Empleado.class).add(empleadoCriteria);		
		
		if(empleado.getObras() != null) {
			DAOUtils.nullifyStrings(empleado.getObras());
			DAOUtils.enableWildcards(empleado.getObras());
			
			criteria = criteria.createCriteria("obras");
			
			if (empleado.getObras().getIdobra() != null){
		
			   criteria = criteria.add(Restrictions.eq("idobra", empleado.getObras().getIdobra()));
			}
			
			if (empleado.getObras().getNombreobra() != null) {
			   criteria.add(Restrictions.like("nombreobra", empleado.getObras().getNombreobra()));
			}
		}						
		
		return criteria.list();					
	}
}
