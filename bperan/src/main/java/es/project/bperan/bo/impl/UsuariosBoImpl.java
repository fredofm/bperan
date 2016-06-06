package es.project.bperan.bo.impl;

import java.util.Collection;
import java.util.Date;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.transaction.annotation.Transactional;

import es.project.bperan.bo.UsuarioBO;
import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Usuario;

@Transactional
public class UsuariosBoImpl implements UsuarioBO<Usuario> {

	private GenericDAO<Usuario> usuarioDAO;

	public UsuariosBoImpl() {
		super();
	}

	public void setUsuarioDAO(GenericDAO<Usuario> usuarioDAO) {
		this.usuarioDAO = usuarioDAO;
	}

	@Override
	public void add(Usuario usuario) {												
		usuario.setPassword(encodedPassword(usuario.getPassword()));
		
		usuario.setFechacreacion(new Date());

		usuarioDAO.add(usuario);
	}
	
	private String encodedPassword(String password) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPassword = passwordEncoder.encode(password);
		
		return hashedPassword;
	}
	
	public void update(Usuario usuario, Boolean resetPassword) {
		if (usuario.getIdusuario() != null) {
			Usuario userBBDD = findById(usuario.getIdusuario());
			
			usuario.setFechacreacion(userBBDD.getFechacreacion());
			
			if (resetPassword) {
				usuario.setPassword(encodedPassword(usuario.getPassword()));
			} else {
				usuario.setPassword(userBBDD.getPassword());
			}
			
			usuarioDAO.add(usuario);
		}
	}

	@Override
	@Transactional(readOnly = true)
	public Collection<Usuario> findAll() {
		return usuarioDAO.findAll();
	}

	@Override
	public void delete(Usuario pojo) {
		Usuario usuario = usuarioDAO.findById(pojo.getIdusuario());

		usuarioDAO.delete(usuario);

	}

	@Override
	public Usuario findById(int id) {
		return usuarioDAO.findById(id);
	}

	@Override
	public Collection<Usuario> findByPojo(Usuario usuario) {
		return usuarioDAO.findByPojo(usuario);
	}
}
