package es.project.bperan.bo;

public interface UsuarioBO<T> extends GenericBO<T> {
	public void update(T pojo, Boolean resetPassword);
}
