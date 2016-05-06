package es.project.bperan.bo.impl;

import java.util.Collection;

import org.springframework.transaction.annotation.Transactional;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Vacaciones;

@Transactional
public class VacacionesBoImpl implements GenericBO<Vacaciones> {

	private GenericDAO<Vacaciones> vacacionesDAO;
	
	public VacacionesBoImpl() {
		super();
	}
	
	public void setVacacionesDAO(GenericDAO<Vacaciones> vacacionesDAO) {
		this.vacacionesDAO = vacacionesDAO;
	}

	@Override
	public void add(Vacaciones vacaciones) {
			
		vacacionesDAO.add(vacaciones);
		
	}

	@Override
	@Transactional(readOnly = true)
	public Collection<Vacaciones> findAll() {
		return vacacionesDAO.findAll();
	}

	@Override
	public void delete(Vacaciones pojo) {
		Vacaciones vacaciones = vacacionesDAO.findById(pojo.getIdvacaciones()); 
		
		vacacionesDAO.delete(vacaciones);
		
	}

	@Override
	public Vacaciones findById(int id) {
		return vacacionesDAO.findById(id);
	}

	@Override
	public Collection<Vacaciones> findByPojo(Vacaciones vacaciones) {
		return vacacionesDAO.findByPojo(vacaciones);
	}
}
	
