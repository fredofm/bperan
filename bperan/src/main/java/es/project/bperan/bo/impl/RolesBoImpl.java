package es.project.bperan.bo.impl;

import java.util.Collection;

import org.springframework.transaction.annotation.Transactional;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Role;

@Transactional
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
		Role role = roleDAO.findById(pojo.getIdrole()); 
		
		roleDAO.delete(role);
		
	}

	@Override
	public Role findById(int id) {
		return roleDAO.findById(id);
	}

}
