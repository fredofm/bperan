package es.project.bperan.dao.impl;

import java.util.Collection;

import org.hibernate.Criteria;
import org.hibernate.criterion.Example;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Vacaciones;
import es.project.bperan.pojo.Empleado;

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

	@Override
	public Collection<Vacaciones> findByPojo(Vacaciones vacaciones) {
		Example vacacionesCriteria = Example.create(vacaciones);
		Criteria criteria = getSession().createCriteria(Vacaciones.class).add(vacacionesCriteria);
		
		return criteria.list();		
	}
	
}
