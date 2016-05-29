package es.project.bperan.bo.impl;

import java.util.Collection;
import java.util.Iterator;

import org.springframework.transaction.annotation.Transactional;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Cliente;
import es.project.bperan.pojo.Presupuesto;


@Transactional
public class ClienteBoImpl implements GenericBO<Cliente> {

	private GenericDAO<Cliente> clienteDAO;
	private GenericDAO<Presupuesto> presupuestoDAO;
		
	public ClienteBoImpl() {
		super();
	}
	
	public void setClienteDAO(GenericDAO<Cliente> clienteDAO) {
		this.clienteDAO = clienteDAO;
	}
	
	public void setPresupuestoDAO(GenericDAO<Presupuesto> presupuestoDAO) {
		this.presupuestoDAO = presupuestoDAO;
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
		
		Presupuesto presupuesto = new Presupuesto();
		presupuesto.setCliente(cliente);
		Collection<Presupuesto> listaPresupuestoCliente = presupuestoDAO.findByPojo(presupuesto); 	
		Iterator<Presupuesto> itPresupuesto = listaPresupuestoCliente.iterator();		 
		while (itPresupuesto.hasNext()) {		 
			presupuestoDAO.delete(itPresupuesto.next());			
		}
		
		clienteDAO.delete(cliente);
		
	}

	@Override
	public Cliente findById(int id) {
		return clienteDAO.findById(id);
	}

	@Override
	public Collection<Cliente> findByPojo(Cliente cliente) {
		return clienteDAO.findByPojo(cliente);
	}

	
	
}
