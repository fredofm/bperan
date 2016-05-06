package es.project.bperan.dao;

import java.util.Collection;

public interface GenericDAO<T> {
	public void add(T pojo);

	public Collection<T> findAll();
	
	public void delete(T pojo);
	
	public T findById(int id);
	
	public Collection<T> findByPojo(T pojo);
}
