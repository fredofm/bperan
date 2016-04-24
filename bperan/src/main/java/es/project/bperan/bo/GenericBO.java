package es.project.bperan.bo;

import java.util.Collection;

public interface GenericBO<T> {
	public void add(T pojo);

	public Collection<T> findAll();
}
