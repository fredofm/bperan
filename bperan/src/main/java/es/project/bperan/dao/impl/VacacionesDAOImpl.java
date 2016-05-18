package es.project.bperan.dao.impl;

import java.util.Collection;

import org.apache.commons.beanutils.BeanUtils;
import org.hibernate.Criteria;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import es.project.bperan.dao.GenericDAO;
import es.project.bperan.dao.utils.DAOUtils;
import es.project.bperan.pojo.Bajalaboral;
import es.project.bperan.pojo.Fotos;
import es.project.bperan.pojo.Vacaciones;


public class VacacionesDAOImpl extends HibernateDaoSupport implements GenericDAO<Vacaciones> {

	public void add(Vacaciones vacaciones) {
		/*Utiliza SessionFactory de Hibernate para crear la sesión y, finalmente, 
		se utiliza el método .saveOrUpdate () para añadir/modificar el objeto vacaciones en base de datos */
		getHibernateTemplate().saveOrUpdate(vacaciones);	
	}

	@SuppressWarnings("unchecked")
	public Collection<Vacaciones> findAll() {
		return (Collection<Vacaciones>) getHibernateTemplate().find("FROM Vacaciones");
	}

	@Override
	public void delete(Vacaciones pojo) {
		getHibernateTemplate().delete(pojo);	
	}
	
	public Vacaciones findById(int idvacaciones) {
		return (Vacaciones) getHibernateTemplate().get(Vacaciones.class, idvacaciones);
		
	}
	
	public Collection<Vacaciones> findByPojo(Vacaciones vacaciones) {										
		
		DAOUtils.nullifyStrings(vacaciones);
		DAOUtils.enableWildcards(vacaciones);
		
		Example vacacionesCriteria = Example.create(vacaciones).excludeZeroes()           //exclude zero valued properties
			    //.excludeProperty("color")  //exclude the property named "color"
			    .ignoreCase()              //perform case insensitive string comparisons
			    .enableLike();             //use like for string comparisons
		Criteria criteria = getSession().createCriteria(Vacaciones.class).add(vacacionesCriteria);
		
		if(vacaciones.getEmpleado() != null) {
			DAOUtils.nullifyStrings(vacaciones.getEmpleado());
			DAOUtils.enableWildcards(vacaciones.getEmpleado());
			
			criteria = criteria.createCriteria("empleado");
			
			if (vacaciones.getEmpleado().getIdempleado() != null){
		
			   criteria = criteria.add(Restrictions.eq("idempleado", vacaciones.getEmpleado().getIdempleado()));
			}
			
			if (vacaciones.getEmpleado().getNombre() != null) {
			   criteria.add(Restrictions.like("nombre", vacaciones.getEmpleado().getNombre()));
			}
		}						
		
		return criteria.list();				
	}
	
}
