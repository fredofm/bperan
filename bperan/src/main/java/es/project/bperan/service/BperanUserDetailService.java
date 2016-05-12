package es.project.bperan.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Role;
import es.project.bperan.pojo.Usuario;

public class BperanUserDetailService implements UserDetailsService {

	GenericDAO<Usuario> usuarioDAO;
	
	public GenericDAO<Usuario> getUsuarioDAO() {
		return usuarioDAO;
	}

	public void setUsuarioDAO(GenericDAO<Usuario> usuarioDAO) {
		this.usuarioDAO = usuarioDAO;
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Usuario usuario = new Usuario();

		usuario.setNombre(username);

		Collection<Usuario> listaUsuarios = usuarioDAO.findByPojo(usuario);

		if (!listaUsuarios.isEmpty()) {
			usuario = (Usuario) CollectionUtils.get(listaUsuarios, 0);
		}

		List<GrantedAuthority> authorities = buildUserAuthority(usuario.getRole());

		return buildUserForAuthentication(usuario, authorities);
	}

	private User buildUserForAuthentication(Usuario usuario, List<GrantedAuthority> authorities) {
		return new User(usuario.getNombre(), usuario.getPassword(), true, true, true, true, authorities);
	}

	private List<GrantedAuthority> buildUserAuthority(Role role) {

		Set<GrantedAuthority> setAuths = new HashSet<GrantedAuthority>();

		setAuths.add(new SimpleGrantedAuthority(role.getNombre()));

		List<GrantedAuthority> Result = new ArrayList<GrantedAuthority>(setAuths);

		return Result;
	}
}
