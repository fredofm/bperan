package es.project.bperan.bo.impl;

import java.util.Collection;

import org.springframework.transaction.annotation.Transactional;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Obras;


@Transactional
public class ObrasBoImpl implements GenericBO<Obras> {

	private GenericDAO<Obras> obraDAO;
	
	public ObrasBoImpl() {
		super();
	}
	
	public void setObraDAO(GenericDAO<Obras> obraDAO) {
		this.obraDAO = obraDAO;
	}

	@Override
	public void add(Obras obra) {
		
		obraDAO.add(obra);
		
	}

	@Override
	public Collection<Obras> findAll() {
		return obraDAO.findAll();
	}

	@Override
	public void delete(Obras pojo) {
		Obras obra = obraDAO.findById(pojo.getIdobra()); 
		
		obraDAO.delete(obra);
		
	}

	@Override
	public Obras findById(int id) {
		return obraDAO.findById(id);
	}

	
	
}
