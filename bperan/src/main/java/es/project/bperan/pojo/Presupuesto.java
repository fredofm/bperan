package es.project.bperan.pojo;
// Generated 15-may-2016 13:11:59 by Hibernate Tools 5.1.0.Alpha1

import java.util.Date;

/**
 * Presupuesto generated by hbm2java
 */
public class Presupuesto implements java.io.Serializable {

	private Integer idpresupuesto;
	private Cliente cliente;
	private Obras obras;
	private Float costeTotal;
	private Date fechaInicio;
	private Date fechaFin;
	private String estado;

	public Presupuesto() {
	}

	public Presupuesto(Cliente cliente, Obras obras, Float costeTotal, Date fechaInicio, Date fechaFin, String estado) {
		this.cliente = cliente;
		this.obras = obras;
		this.costeTotal = costeTotal;
		this.fechaInicio = fechaInicio;
		this.fechaFin = fechaFin;
		this.estado = estado;
	}

	public Integer getIdpresupuesto() {
		return this.idpresupuesto;
	}

	public void setIdpresupuesto(Integer idpresupuesto) {
		this.idpresupuesto = idpresupuesto;
	}

	public Cliente getCliente() {
		return this.cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Obras getObras() {
		return this.obras;
	}

	public void setObras(Obras obras) {
		this.obras = obras;
	}

	public Float getCosteTotal() {
		return this.costeTotal;
	}

	public void setCosteTotal(Float costeTotal) {
		this.costeTotal = costeTotal;
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

	public String getEstado() {
		return this.estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

}
