package es.project.bperan.dao.impl;

import java.util.Collection;

import org.hibernate.Criteria;
import org.hibernate.criterion.Example;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Fotos;

public class FotosDAOImpl extends HibernateDaoSupport implements GenericDAO<Fotos> {

	public void add(Fotos fotos) {
		/*Utiliza SessionFactory de Hibernate para crear la sesión y, finalmente, 
		se utiliza el método saveOrUpdate () para añadir/modificar el objeto Fotos en base de datos */
		getHibernateTemplate().saveOrUpdate(fotos);	
	}

	@SuppressWarnings("unchecked")
	public Collection<Fotos> findAll() {
		return (Collection<Fotos>) getHibernateTemplate().find("FROM Fotos");
	}

	@Override
	public void delete(Fotos pojo) {
		getHibernateTemplate().delete(pojo);	
	}
	
	public Fotos findById(int idfotos) {
		return (Fotos) getHibernateTemplate().get(Fotos.class, idfotos);
	}

	@Override
	public Collection<Fotos> findByPojo(Fotos fotos) {
		Example fotosCriteria = Example.create(fotos);
		Criteria criteria = getSession().createCriteria(Fotos.class).add(fotosCriteria);
		
		return criteria.list();		
	}
	
}
