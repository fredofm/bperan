/**
 * 
 */
package es.project.bperan.pojo;

import java.io.Serializable;
import java.util.Date;

public class Usuario implements Serializable {

	private int idusuario;
	
	private String nombre;	
	
	public Usuario() {
		
	}
	
	public int getIdusuario() {
		return idusuario;
	}

	public void setIdusuario(int idusuario) {
		this.idusuario = idusuario;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Date getFechacreacion() {
		return fechacreacion;
	}

	public void setFechacreacion(Date fechaCreacion) {
		this.fechacreacion = fechaCreacion;
	}

	private Date fechacreacion;
}
