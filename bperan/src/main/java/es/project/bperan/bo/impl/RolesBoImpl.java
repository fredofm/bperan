package es.project.bperan.bo.impl;

import java.util.Collection;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Role;

public class RolesBoImpl implements GenericBO<Role> {
	
	private GenericDAO<Role> roleDAO;
	
	public RolesBoImpl() {
		super();
	}
	
	public void setRoleDAO(GenericDAO<Role> roleDAO) {
		this.roleDAO = roleDAO;
	}
	
	public void add(Role pojo) {
		roleDAO.add(pojo);		
	}

	
	public Collection<Role> findAll() {
		return roleDAO.findAll();
	}

	@Override
	public void delete(Role pojo) {
		roleDAO.delete(pojo);
		
	}

}
