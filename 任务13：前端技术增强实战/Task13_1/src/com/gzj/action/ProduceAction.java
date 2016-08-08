/**
 * 
 */
package com.gzj.action;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.dao.IProduceDAO;
import com.gzj.entity.Produce;
import com.gzj.entity.ProduceDetail;
import com.gzj.entity.Users;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 厂商action
 *
 */
public class ProduceAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private int produceId;
	private String produceName;
	private IProduceDAO produceDAO;

	public int getProduceId() {
		return produceId;
	}

	public void setProduceId(int produceId) {
		this.produceId = produceId;
	}

	public String getProduceName() {
		return produceName;
	}

	public void setProduceName(String produceName) {
		this.produceName = produceName;
	}

	public IProduceDAO getProduceDAO() {
		return produceDAO;
	}

	public void setProduceDAO(IProduceDAO produceDAO) {
		this.produceDAO = produceDAO;
	}

	public String getProduce() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		List<Produce> list = produceDAO.getProduce();
		session.setAttribute("Produce", list);

		return SUCCESS;
	}

	public String getDetail() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		List<ProduceDetail> list = produceDAO.getDetail(produceId);
		session.setAttribute("ProduceDetail", list);

		return SUCCESS;
	}
	
	public String addProduce() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		Produce produce=new Produce();
		produce.setProduceName(produceName);
		boolean result=produceDAO.addProduce(produce);
		String addProduce="";
		if (result) {
			addProduce="添加成功！";
		}else {
			addProduce="添加失败！";
		}
		session.setAttribute("AddProduce", addProduce);

		return SUCCESS;
	}
	
	public String delProduce()throws Exception{
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
				
		if (produceDAO.delProduce(produceId)) {

			List<Produce> user1 = produceDAO.getProduce();
			if (user1 != null) {
				session.setAttribute("Produce", user1);
			}
		}else {
			System.out.println("删除失败！");
		}
		
		return SUCCESS;
	}

}
