package es.project.bperan.web.action;

import java.util.Collection;

import org.apache.commons.beanutils.BeanUtils;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.pojo.Cliente;
import es.project.bperan.pojo.Obras;
import es.project.bperan.pojo.Presupuesto;

/**
 * @author Carol
 *
 */
public class PresupuestoAction extends BperanAction implements ModelDriven<Presupuesto> {

	private Presupuesto presupuesto;
	private GenericBO<Presupuesto> presupuestoBo;
	private GenericBO<Obras> obrasBo;
	private GenericBO<Cliente> clienteBo;

	public void setPresupuestoBo(GenericBO<Presupuesto> presupuestoBo) {
		this.presupuestoBo = presupuestoBo;
	}

	public void setObrasBo(GenericBO<Obras> obrasBo) {
		this.obrasBo = obrasBo;
	}

	public void setClienteBo(GenericBO<Cliente> clienteBo) {
		this.clienteBo = clienteBo;
	}

	public void setPresupuesto(Presupuesto presupuesto) {
		this.presupuesto = presupuesto;
	}

	public Presupuesto getModel() {
		try {
			if (getId() != null) {
				presupuesto = presupuestoBo.findById(getId());
			}
		} catch (Throwable e) {
			// TODO traza error
		}

		return presupuesto;
	}

	public String delete() throws Exception {
		presupuestoBo.delete(presupuesto);

		return ActionSupport.SUCCESS;
	}

	/* prepare carga la lista de obras y lista */
	public String prepare() throws Exception {
		getServletRequest().setAttribute("listaObras", obrasBo.findAll());
		getServletRequest().setAttribute("listaCliente", clienteBo.findAll());

		return ActionSupport.SUCCESS;
	}

	public String create() throws Exception {
		presupuestoBo.add(presupuesto);

		return ActionSupport.SUCCESS;
	}

	public String list() throws Exception {
		Collection<Presupuesto> listaPresupuestos = presupuestoBo.findAll();

		getServletRequest().setAttribute("listaPresupuestos", listaPresupuestos);

		return ActionSupport.SUCCESS;
	}

	public String buscar() throws Exception {
		Presupuesto presupuestoAux = (Presupuesto) BeanUtils.cloneBean(presupuesto);

		if (presupuesto.getObras() != null) {
			presupuestoAux.setObras((Obras) BeanUtils.cloneBean(presupuesto.getObras()));
		}

		Collection<Presupuesto> listaPresupuestos = presupuestoBo.findByPojo(presupuestoAux);

		getServletRequest().setAttribute("listaPresupuestos", listaPresupuestos);

		return ActionSupport.SUCCESS;
	}

	public String detalle() throws Exception {

		return ActionSupport.SUCCESS;
	}
}
