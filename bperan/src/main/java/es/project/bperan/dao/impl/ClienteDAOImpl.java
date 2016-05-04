package es.project.bperan.dao.impl;

import java.util.Collection;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Cliente;

public class ClienteDAOImpl extends HibernateDaoSupport implements GenericDAO<Cliente> {

	public void add(Cliente cliente) {
		/*Utiliza SessionFactory de Hibernate para crear la sesión y, finalmente, 
		se utiliza el método .save () para añadir el objeto cliente en base de datos */
		getHibernateTemplate().save(cliente);		
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
}
