/**
 * 
 */
package es.project.bperan.vo;

import java.io.Serializable;
import java.util.Date;

public class UsuarioVO implements Serializable {

	private int idusuario;
	
	private String nombre;
	
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

	public Date getFechaCreacion() {
		return fechaCreacion;
	}

	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}

	private Date fechaCreacion;
}
