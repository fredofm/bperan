package es.project.bperan.dao.impl;

import java.util.Collection;

import org.hibernate.Criteria;
import org.hibernate.criterion.Example;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Empleado;
import es.project.bperan.pojo.Usuario;

public class EmpleadoDAOImpl extends HibernateDaoSupport implements GenericDAO<Empleado> {

	public void add(Empleado empleado) {
		/*Utiliza SessionFactory de Hibernate para crear la sesión y, finalmente, 
		se utiliza el método .save () para añadir el objeto empleado en base de datos */
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

	@Override
	public Collection<Empleado> findByPojo(Empleado empleado) {
		Example empleadoCriteria = Example.create(empleado);
		Criteria criteria = getSession().createCriteria(Empleado.class).add(empleadoCriteria);
		
		return criteria.list();	
	}
}
