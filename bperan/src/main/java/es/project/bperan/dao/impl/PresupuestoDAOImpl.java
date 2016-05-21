package es.project.bperan.dao.impl;

import java.util.Collection;

import org.hibernate.Criteria;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import es.project.bperan.dao.GenericDAO;
import es.project.bperan.dao.utils.DAOUtils;
import es.project.bperan.pojo.Fotos;
import es.project.bperan.pojo.Presupuesto;

public class PresupuestoDAOImpl extends HibernateDaoSupport implements GenericDAO<Presupuesto> {

	public void add(Presupuesto presupuesto) {
		/*
		 * Utiliza SessionFactory de Hibernate para crear la sesión y,
		 * finalmente, se utiliza el método .saveOrUpdate () para
		 * añadir/modificar el objeto Presupuesto en base de datos
		 */
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

	public Collection<Presupuesto> findByPojo(Presupuesto presupuesto) {

		DAOUtils.nullifyStrings(presupuesto);
		DAOUtils.enableWildcards(presupuesto);

		Example presupuestoCriteria = Example.create(presupuesto).excludeZeroes() // exclude
																					// zero
																					// valued
																					// properties
				// .excludeProperty("color") //exclude the property named
				// "color"
				.ignoreCase() // perform case insensitive string comparisons
				.enableLike(); // use like for string comparisons
		Criteria criteriaBase = getSession().createCriteria(Presupuesto.class).add(presupuestoCriteria);
		if (presupuesto.getObras() != null) {
			Criteria criteria = criteriaBase.createCriteria("obras");

			if (presupuesto.getObras().getIdobra() != null) {
				criteria = criteria.add(Restrictions.eq("idobra", presupuesto.getObras().getIdobra()));
			}
			
			if (presupuesto.getObras().getNombreobra() != null) {
				   criteria.add(Restrictions.like("nombreobra", presupuesto.getObras().getNombreobra()));
				}
		}
		
		if (presupuesto.getCliente() != null) {
			Criteria criteria = criteriaBase.createCriteria("cliente");

			if (presupuesto.getCliente().getIdcliente() != null) {
				criteria.add(Restrictions.eq("idcliente", presupuesto.getCliente().getIdcliente()));
			}
		}

		return criteriaBase.list();
	}

}
