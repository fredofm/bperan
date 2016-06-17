package es.project.bperan.dao.impl;

import java.util.Collection;

import org.hibernate.Criteria;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import es.project.bperan.dao.GenericDAO;
import es.project.bperan.dao.utils.DAOUtils;
import es.project.bperan.pojo.Cliente;


public class ClienteDAOImpl extends HibernateDaoSupport implements GenericDAO<Cliente> {

	public void add(Cliente cliente) {
		/*
		 * Utiliza SessionFactory de Hibernate para crear la sesión y,
		 * finalmente, se utiliza el método .saveOrUpdate () para
		 * añadir/modificar el objeto cliente en base de datos
		 */
		getHibernateTemplate().saveOrUpdate(cliente);
	}

	@SuppressWarnings("unchecked")
	public Collection<Cliente> findAll() {
		return (Collection<Cliente>) getHibernateTemplate().find("FROM Cliente");
	}

	@Override
	public void delete(Cliente pojo) {
		getHibernateTemplate().delete(pojo);
	}

	public Cliente findById(int idcliente) {
		return (Cliente) getHibernateTemplate().get(Cliente.class, idcliente);
	}

	public Collection<Cliente> findByPojo(Cliente cliente) {

		DAOUtils.nullifyStrings(cliente);
		DAOUtils.enableWildcards(cliente);

		Example clienteCriteria = Example.create(cliente)
				.excludeZeroes() // exclude zero valued properties
				// .excludeProperty("color") //exclude the property named "color"
				.ignoreCase() // perform case insensitive string comparisons
				.enableLike(); // use like for string comparisons
		Criteria criteria = getSession().createCriteria(Cliente.class).add(clienteCriteria);

		if (cliente.getUsuario() != null) {

			DAOUtils.nullifyStrings(cliente.getUsuario());
			DAOUtils.enableWildcards(cliente.getUsuario());
			
			/*Example usuarioCriteria = Example.create(cliente.getUsuario()).excludeZeroes();
			criteria = criteria.createCriteria("usuario").add(usuarioCriteria);
			*/
			criteria = criteria.createCriteria("usuario");
			
			if (cliente.getUsuario().getIdusuario() != null) {
				criteria = criteria.add(Restrictions.eq("idusuario", cliente.getUsuario().getIdusuario()));
			}
			
			if (cliente.getUsuario().getNombre() != null) {
				criteria.add(Restrictions.like("nombre", cliente.getUsuario().getNombre()));
			}
		}

		return criteria.list();
	}

}
