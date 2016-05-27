package es.project.bperan.bo.impl;

import java.util.Collection;
import java.util.Iterator;

import org.springframework.transaction.annotation.Transactional;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Role;
import es.project.bperan.pojo.Usuario;

@Transactional
public class RolesBoImpl implements GenericBO<Role> {
	
	private GenericDAO<Role> roleDAO;
	private GenericDAO<Usuario> usuarioDAO;
	
	public RolesBoImpl() {
		super();
	}
	
	public void setRoleDAO(GenericDAO<Role> roleDAO) {
		this.roleDAO = roleDAO;
	}
	
	public void setUsuarioDAO(GenericDAO<Usuario> usuarioDAO) {
		this.usuarioDAO = usuarioDAO;
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
		
		Usuario usuario = new Usuario();
		usuario.setRole(role);
		Collection<Usuario> listaUsuarioRole = usuarioDAO.findByPojo(usuario); 	
		Iterator<Usuario> itUsuario = listaUsuarioRole.iterator();		 
		while (itUsuario.hasNext()) {		 
			usuarioDAO.delete(itUsuario.next());			
		}	
		
		roleDAO.delete(role);
		
	}

	@Override
	public Role findById(int id) {
		return roleDAO.findById(id);
	}

	@Override
	public Collection<Role> findByPojo(Role role) {
		return roleDAO.findByPojo(role);
	}

}
