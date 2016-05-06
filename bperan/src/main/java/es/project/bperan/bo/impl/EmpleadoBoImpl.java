package es.project.bperan.bo.impl;

import java.util.Collection;

import org.springframework.transaction.annotation.Transactional;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Empleado;

@Transactional
public class EmpleadoBoImpl implements GenericBO<Empleado> {

	private GenericDAO<Empleado> empleadoDAO;
	
	public EmpleadoBoImpl() {
		super();
	}
	
	public void setEmpleadoDAO(GenericDAO<Empleado> empleadoDAO) {
		this.empleadoDAO = empleadoDAO;
	}

	@Override
	public void add(Empleado empleado) {
				
		empleadoDAO.add(empleado);
		
	}

	@Override
	public Collection<Empleado> findAll() {
		return empleadoDAO.findAll();
	}

	@Override
	public void delete(Empleado pojo) {
		Empleado empleado = empleadoDAO.findById(pojo.getIdempleado()); 
		
		empleadoDAO.delete(empleado);
		
	}

	@Override
	public Empleado findById(int id) {
		return empleadoDAO.findById(id);
	}

	@Override
	public Collection<Empleado> findByPojo(Empleado empleado) {
		return empleadoDAO.findByPojo(empleado);
	}
	
	
}
