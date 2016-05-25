package es.project.bperan.bo.impl;

import java.util.Collection;
import java.util.Iterator;

import org.springframework.transaction.annotation.Transactional;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Bajalaboral;
import es.project.bperan.pojo.Empleado;
import es.project.bperan.pojo.Vacaciones;

@Transactional
public class EmpleadoBoImpl implements GenericBO<Empleado> {

	private GenericDAO<Empleado> empleadoDAO;
	private GenericDAO<Vacaciones> vacacionesDAO;
	private GenericDAO<Bajalaboral> bajalaboralDAO;
	
	public EmpleadoBoImpl() {
		super();
	}
	
	public void setEmpleadoDAO(GenericDAO<Empleado> empleadoDAO) {
		this.empleadoDAO = empleadoDAO;
	}
	
	public void setVacacionesDAO(GenericDAO<Vacaciones> vacacionesDAO) {
		this.vacacionesDAO = vacacionesDAO;
	}

	public void setBajalaboralDAO(GenericDAO<Bajalaboral> bajalaboralDAO) {
		this.bajalaboralDAO = bajalaboralDAO;
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
		
		Vacaciones vacaciones = new Vacaciones();
		vacaciones.setEmpleado(empleado);
		Collection<Vacaciones> listaVacacionesEmpleado = vacacionesDAO.findByPojo(vacaciones); 	
		Iterator<Vacaciones> itVacaciones = listaVacacionesEmpleado.iterator();		 
		while (itVacaciones.hasNext()) {		 
			vacacionesDAO.delete(itVacaciones.next());			
		}	
		
		Bajalaboral bajalaboral = new Bajalaboral();
		vacaciones.setEmpleado(empleado);
		Collection<Bajalaboral> listaBajalaboralEmpleado = bajalaboralDAO.findByPojo(bajalaboral);  
		Iterator<Bajalaboral> itBajas = listaBajalaboralEmpleado.iterator();		 
		while (itBajas.hasNext()) {		 
			bajalaboralDAO.delete(itBajas.next());			
		}			
		
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
