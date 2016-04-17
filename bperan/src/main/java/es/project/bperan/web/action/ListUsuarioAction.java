package es.project.bperan.web.action;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;
import org.springframework.web.struts.ActionSupport;

import es.project.bperan.bo.UsuariosBO;
import es.project.bperan.pojo.Usuario;

public class ListUsuarioAction extends ActionSupport {
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		UsuariosBO usuariosBo = (UsuariosBO) getWebApplicationContext().getBean("usuarioBo");

		DynaActionForm dynaUsuariosListForm = (DynaActionForm) form;

		Collection<Usuario> list = usuariosBo.findAllUsuario();

		dynaUsuariosListForm.set("listaUsuarios", list);

		return mapping.findForward("success");

	}
}
