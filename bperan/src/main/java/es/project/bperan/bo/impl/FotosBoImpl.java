package es.project.bperan.bo.impl;

import java.util.Collection;
import org.springframework.transaction.annotation.Transactional;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Fotos;

@Transactional
public class FotosBoImpl implements GenericBO<Fotos> {

	private GenericDAO<Fotos> fotosDAO;
	
	public FotosBoImpl() {
		super();
	}
	
	public void setUsuarioDAO(GenericDAO<Fotos> fotosDAO) {
		this.fotosDAO = fotosDAO;
	}

	@Override
	public void add(Fotos fotos) {
			
		fotosDAO.add(fotos);
		
	}

	@Override
	@Transactional(readOnly = true)
	public Collection<Fotos> findAll() {
		return fotosDAO.findAll();
	}

	@Override
	public void delete(Fotos pojo) {
		Fotos fotos = fotosDAO.findById(pojo.getIdfoto()); 
		
		fotosDAO.delete(fotos);
		
	}

	@Override
	public Fotos findById(int id) {
		return fotosDAO.findById(id);
	}

	@Override
	public Collection<Fotos> findByPojo(Fotos fotos) {
		return fotosDAO.findByPojo(fotos);
	}
	
	
}
