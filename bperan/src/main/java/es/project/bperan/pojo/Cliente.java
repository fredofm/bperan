package es.project.bperan.pojo;
// Generated 28-abr-2016 22:22:17 by Hibernate Tools 5.1.0.Alpha1

import java.util.HashSet;
import java.util.Set;

/**
 * Cliente generated by hbm2java
 */
public class Cliente implements java.io.Serializable {

	private Integer idcliente;
	private Usuario usuario;
	private String nombreempresa;
	private Integer telefono;
	private Integer fax;
	private String direccion;
	private String poblacion;
	private String provincia;
	private Integer codigopostal;
	private String emial;
	private String cifNif;
	private String estado;
	private Set presupuestos = new HashSet(0);

	public Cliente() {
	}

	public Cliente(Usuario usuario, String nombreempresa, Integer telefono, String direccion, String poblacion,
			String provincia, Integer codigopostal, String cifNif, String estado) {
		this.usuario = usuario;
		this.nombreempresa = nombreempresa;
		this.telefono = telefono;
		this.direccion = direccion;
		this.poblacion = poblacion;
		this.provincia = provincia;
		this.codigopostal = codigopostal;
		this.cifNif = cifNif;
		this.estado = estado;
	}

	public Cliente(Usuario usuario, String nombreempresa, Integer telefono, Integer fax, String direccion, String poblacion,
			String provincia, Integer codigopostal, String emial, String cifNif, String estado, Set presupuestos) {
		this.usuario = usuario;
		this.nombreempresa = nombreempresa;
		this.telefono = telefono;
		this.fax = fax;
		this.direccion = direccion;
		this.poblacion = poblacion;
		this.provincia = provincia;
		this.codigopostal = codigopostal;
		this.emial = emial;
		this.cifNif = cifNif;
		this.estado = estado;
		this.presupuestos = presupuestos;
	}

	public Integer getIdcliente() {
		return this.idcliente;
	}

	public void setIdcliente(Integer idcliente) {
		this.idcliente = idcliente;
	}

	public Usuario getUsuario() {
		return this.usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public String getNombreempresa() {
		return this.nombreempresa;
	}

	public void setNombreempresa(String nombreempresa) {
		this.nombreempresa = nombreempresa;
	}

	public Integer getTelefono() {
		return this.telefono;
	}

	public void setTelefono(Integer telefono) {
		this.telefono = telefono;
	}

	public Integer getFax() {
		return this.fax;
	}

	public void setFax(Integer fax) {
		this.fax = fax;
	}

	public String getDireccion() {
		return this.direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getPoblacion() {
		return this.poblacion;
	}

	public void setPoblacion(String poblacion) {
		this.poblacion = poblacion;
	}

	public String getProvincia() {
		return this.provincia;
	}

	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}

	public Integer getCodigopostal() {
		return this.codigopostal;
	}

	public void setCodigopostal(Integer codigopostal) {
		this.codigopostal = codigopostal;
	}

	public String getEmial() {
		return this.emial;
	}

	public void setEmial(String emial) {
		this.emial = emial;
	}

	public String getCifNif() {
		return this.cifNif;
	}

	public void setCifNif(String cifNif) {
		this.cifNif = cifNif;
	}

	public String getEstado() {
		return this.estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public Set getPresupuestos() {
		return this.presupuestos;
	}

	public void setPresupuestos(Set presupuestos) {
		this.presupuestos = presupuestos;
	}

}
