package es.project.bperan.bo.impl;

import java.util.Collection;

import org.springframework.transaction.annotation.Transactional;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Cliente;


@Transactional
public class ClienteBoImpl implements GenericBO<Cliente> {

	private GenericDAO<Cliente> clienteDAO;
	
	public ClienteBoImpl() {
		super();
	}
	
	public void setClienteDAO(GenericDAO<Cliente> clienteDAO) {
		this.clienteDAO = clienteDAO;
	}

	@Override
	public void add(Cliente cliente) {
		
		clienteDAO.add(cliente);
		
	}

	@Override
	public Collection<Cliente> findAll() {
		return clienteDAO.findAll();
	}

	@Override
	public void delete(Cliente pojo) {
		Cliente cliente = clienteDAO.findById(pojo.getIdcliente()); 
		
		clienteDAO.delete(cliente);
		
	}

	@Override
	public Cliente findById(int id) {
		return clienteDAO.findById(id);
	}

	
	
}
