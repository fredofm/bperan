package es.project.bperan.web.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.web.struts.ActionSupport;

import es.project.bperan.bo.UsuariosBO;
import es.project.bperan.vo.UsuarioVO;
import es.project.bperan.web.form.UsuarioForm;

public class AddUsuarioAction extends ActionSupport {
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		UsuariosBO usuarioBo = (UsuariosBO) getWebApplicationContext().getBean("customerBo");

		UsuarioForm usuarioForm = (UsuarioForm) form;
		UsuarioVO usuario = new UsuarioVO();

		// copy customerform to model
		BeanUtils.copyProperties(usuario, usuarioForm);

		// save it
		usuarioBo.addUsuario(usuario);

		return mapping.findForward("success");
	}
}
