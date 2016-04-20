package es.project.bperan.pojo;

// default package
// Generated 20-abr-2016 19:25:26 by Hibernate Tools 5.1.0.Alpha1

import java.util.Date;

/**
 * Bajalaboral generated by hbm2java
 */
public class Bajalaboral implements java.io.Serializable {

	private Integer idbajalaboral;
	private Empleado empleado;
	private Date fechaInicio;
	private Date fechaFin;
	private String tipo;

	public Bajalaboral() {
	}

	public Bajalaboral(Empleado empleado, Date fechaInicio, Date fechaFin, String tipo) {
		this.empleado = empleado;
		this.fechaInicio = fechaInicio;
		this.fechaFin = fechaFin;
		this.tipo = tipo;
	}

	public Integer getIdbajalaboral() {
		return this.idbajalaboral;
	}

	public void setIdbajalaboral(Integer idbajalaboral) {
		this.idbajalaboral = idbajalaboral;
	}

	public Empleado getEmpleado() {
		return this.empleado;
	}

	public void setEmpleado(Empleado empleado) {
		this.empleado = empleado;
	}

	public Date getFechaInicio() {
		return this.fechaInicio;
	}

	public void setFechaInicio(Date fechaInicio) {
		this.fechaInicio = fechaInicio;
	}

	public Date getFechaFin() {
		return this.fechaFin;
	}

	public void setFechaFin(Date fechaFin) {
		this.fechaFin = fechaFin;
	}

	public String getTipo() {
		return this.tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

}
