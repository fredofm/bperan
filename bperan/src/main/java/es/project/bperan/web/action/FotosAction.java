package es.project.bperan.web.action;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Collection;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.pojo.Fotos;
import es.project.bperan.pojo.Obras;

public class FotosAction extends BperanAction {
	private File userImage;
	private Integer idobra;
	private GenericBO<Fotos> fotosBo;
	private InputStream fileInputStream;
	private String userImageContentType;
	private String userImageFileName;
	
	public File getUserImage() {
		return userImage;
	}

	public void setUserImage(File userImage) {
		this.userImage = userImage;
	}

	public InputStream getFileInputStream() {
		return fileInputStream;
	}

	public void setFileInputStream(InputStream is) {
		this.fileInputStream = is;
	}

	public Integer getIdobra() {
		return idobra;
	}

	public void setIdobra(Integer idobra) {
		this.idobra = idobra;
	}

	public void setFotosBo(GenericBO<Fotos> fotosBO) {
		this.fotosBo = fotosBO;
	}

	public String upload() {		
		
		byte[] bFile = new byte[(int) userImage.length()];

		try {
			FileInputStream fileInputStream = new FileInputStream(userImage);
			// convert file into array of bytes
			fileInputStream.read(bFile);
			fileInputStream.close();
			
			Obras obra = new Obras();
			obra.setIdobra(this.idobra);
			
			Fotos foto = new Fotos();
			foto.setBinario(bFile);
			foto.setObras(obra);
			foto.setImagen("Foto de Obra " + this.idobra);
			
			fotosBo.add(foto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return SUCCESS;
	}		

	public String displayAll() {
		Fotos fotos = new Fotos();
		
		Obras obra = new Obras();
		obra.setIdobra(this.idobra);
		
		fotos.setObras(obra);
		
		Collection<Fotos> listaFotos = fotosBo.findByPojo(fotos);
		
		getServletRequest().setAttribute("listaFotos", listaFotos);
		
		return SUCCESS;
	}
	
	public String displayFoto() {
		Fotos foto = fotosBo.findById(getId());
		fileInputStream = new ByteArrayInputStream(foto.getBinario());
		
		return SUCCESS;
	}
	
	public String delete() {
		if (getId() != null) {
			
			Fotos foto = fotosBo.findById(getId());			
			fotosBo.delete(foto);
		}
		
		return SUCCESS;
	}

	public String getUserImageContentType() {
		return userImageContentType;
	}

	public void setUserImageContentType(String userImageContentType) {
		this.userImageContentType = userImageContentType;
	}

	public String getUserImageFileName() {
		return userImageFileName;
	}

	public void setUserImageFileName(String userImageFileName) {
		this.userImageFileName = userImageFileName;
	}

}
