package es.project.bperan.dao.impl;

import java.util.Collection;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import es.project.bperan.dao.UsuarioDAO;
import es.project.bperan.vo.UsuarioVO;

public class UsuarioDAOImpl extends HibernateDaoSupport implements UsuarioDAO {

	@Override
	public void addUsuario(UsuarioVO usuario) {
		getHibernateTemplate().save(usuario);		
	}

	@Override
	public Collection findAllUsuario() {
		return getHibernateTemplate().find("from Usuario");
	}
}
