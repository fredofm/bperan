package es.project.bperan.pojo;

// default package
// Generated 20-abr-2016 19:25:26 by Hibernate Tools 5.1.0.Alpha1

/**
 * Fotos generated by hbm2java
 */
public class Fotos implements java.io.Serializable {

	private Integer idfoto;
	private Obras obras;
	private String imagen;

	public Fotos() {
	}

	public Fotos(Obras obras, String imagen) {
		this.obras = obras;
		this.imagen = imagen;
	}

	public Integer getIdfoto() {
		return this.idfoto;
	}

	public void setIdfoto(Integer idfoto) {
		this.idfoto = idfoto;
	}

	public Obras getObras() {
		return this.obras;
	}

	public void setObras(Obras obras) {
		this.obras = obras;
	}

	public String getImagen() {
		return this.imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

}
