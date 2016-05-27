package es.project.bperan.bo.impl;

import java.util.Collection;
import java.util.Iterator;

import org.springframework.transaction.annotation.Transactional;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.dao.GenericDAO;
import es.project.bperan.pojo.Cliente;
import es.project.bperan.pojo.Empleado;
import es.project.bperan.pojo.Fotos;
import es.project.bperan.pojo.Obras;
import es.project.bperan.pojo.Presupuesto;

@Transactional
public class ObrasBoImpl implements GenericBO<Obras> {

	private GenericDAO<Obras> obraDAO;
	private GenericDAO<Presupuesto> presupuestoDAO;
	private GenericBO<Empleado> empleadoBo;
	private GenericDAO<Fotos> fotosDAO;
	
	public ObrasBoImpl() {
		super();
	}
	
	public void setObraDAO(GenericDAO<Obras> obraDAO) {
		this.obraDAO = obraDAO;
	}
	
	public void setPresupuestoDAO(GenericDAO<Presupuesto> presupuestoDAO) {
		this.presupuestoDAO = presupuestoDAO;
	}
	
	public void setEmpleadoBo(GenericBO<Empleado> empleadoBo) {
		this.empleadoBo = empleadoBo;
	}	

	public void setFotosDAO(GenericDAO<Fotos> fotosDAO) {
		this.fotosDAO = fotosDAO;
	}

	@Override
	public void add(Obras obra) {
		
		obraDAO.add(obra);
		
	}

	@Override
	public Collection<Obras> findAll() {
		return obraDAO.findAll();
	}

	@Override
	public void delete(Obras pojo) {
		Obras obra = obraDAO.findById(pojo.getIdobra()); 
		
		Presupuesto presupuesto = new Presupuesto();
		presupuesto.setObras(obra);
		Collection<Presupuesto> listaPresupuestoObra = presupuestoDAO.findByPojo(presupuesto); 	
		Iterator<Presupuesto> itPresupuesto = listaPresupuestoObra.iterator();		 
		while (itPresupuesto.hasNext()) {		 
			presupuestoDAO.delete(itPresupuesto.next());			
		}	
		
		Empleado empleado = new Empleado();
		empleado.setObras(obra);
		Collection<Empleado> listaEmpleadoObra = empleadoBo.findByPojo(empleado); 	
		Iterator<Empleado> itEmpleado = listaEmpleadoObra.iterator();		 
		while (itEmpleado.hasNext()) {		
			Empleado empleadoAux = itEmpleado.next();
			empleadoAux.setObras(null);			
			//saveorupdate
			empleadoBo.add(empleadoAux);
		}
		
		Fotos fotos = new Fotos();
		fotos.setObras(obra);
		Collection<Fotos> listaFotosObra = fotosDAO.findByPojo(fotos); 	
		Iterator<Fotos> itFotos = listaFotosObra.iterator();		 
		while (itFotos.hasNext()) {		 
			fotosDAO.delete(itFotos.next());			
		}	
		
		obraDAO.delete(obra);
		
	}

	@Override
	public Obras findById(int id) {
		return obraDAO.findById(id);
	}

	@Override
	public Collection<Obras> findByPojo(Obras obra) {
		return obraDAO.findByPojo(obra);
	}

	
	
}
