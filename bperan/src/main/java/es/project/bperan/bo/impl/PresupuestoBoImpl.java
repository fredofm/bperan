package es.project.bperan.bo.impl;

import java.util.Collection;

import org.springframework.transaction.annotation.Transactional;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Presupuesto;

@Transactional
public class PresupuestoBoImpl implements GenericBO<Presupuesto> {

	private GenericDAO<Presupuesto> presupuestoDAO;
	
	public PresupuestoBoImpl() {
		super();
	}
	
	public void setPresupuestoDAO(GenericDAO<Presupuesto> presupuestoDAO) {
		this.presupuestoDAO = presupuestoDAO;
	}

	@Override
	public void add(Presupuesto presupuesto) {
		presupuestoDAO.add(presupuesto);
		
	}

	@Override
	@Transactional(readOnly = true)
	public Collection<Presupuesto> findAll() {
		return presupuestoDAO.findAll();
	}

	@Override
	public void delete(Presupuesto pojo) {
		Presupuesto presupuesto = presupuestoDAO.findById(pojo.getIdpresupuesto()); 
		
		presupuestoDAO.delete(presupuesto);
		
	}

	@Override
	public Presupuesto findById(int id) {
		return presupuestoDAO.findById(id);
	}

	@Override
	public Collection<Presupuesto> findByPojo(Presupuesto presupuesto) {
		return presupuestoDAO.findByPojo(presupuesto);
	}
	
	
}
