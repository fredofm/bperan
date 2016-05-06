package es.project.bperan.bo;

import java.util.Collection;

public interface GenericBO<T> {
	public void add(T pojo);

	public Collection<T> findAll();
	
	public void delete(T pojo);
	
	public T findById(int id);
	
	public Collection<T> findByPojo(T pojo);
}
