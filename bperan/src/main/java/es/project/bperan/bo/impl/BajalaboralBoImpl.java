package es.project.bperan.bo.impl;

import java.util.Collection;

import org.springframework.transaction.annotation.Transactional;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Bajalaboral;

@Transactional
public class BajalaboralBoImpl implements GenericBO<Bajalaboral> {

	private GenericDAO<Bajalaboral> bajalaboralDAO;
	
	public BajalaboralBoImpl() {
		super();
	}
	
	public void setBajalaboralDAO(GenericDAO<Bajalaboral> bajalaboralDAO) {
		this.bajalaboralDAO = bajalaboralDAO;
	}

	@Override
	public void add(Bajalaboral bajalaboral) {
		
		bajalaboralDAO.add(bajalaboral);
		
	}

	@Override
	@Transactional(readOnly = true)
	public Collection<Bajalaboral> findAll() {
		return bajalaboralDAO.findAll();
	}

	@Override
	public void delete(Bajalaboral pojo) {
		Bajalaboral bajalaboral = bajalaboralDAO.findById(pojo.getIdbajalaboral()); 
		
		bajalaboralDAO.delete(bajalaboral);
		
	}

	@Override
	public Bajalaboral findById(int id) {
		return bajalaboralDAO.findById(id);
	}

	@Override
	public Collection<Bajalaboral> findByPojo(Bajalaboral bajalaboral) {
		return bajalaboralDAO.findByPojo(bajalaboral);
	}
	
	
}
