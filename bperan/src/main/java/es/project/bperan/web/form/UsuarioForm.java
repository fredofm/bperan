package es.project.bperan.web.form;

import org.apache.struts.action.ActionForm;

public class UsuarioForm extends ActionForm {
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
