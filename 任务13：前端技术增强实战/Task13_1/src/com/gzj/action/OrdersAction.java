/**
 * 
 */
package com.gzj.action;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.dao.IOrdersDAO;
import com.gzj.entity.Orders;
import com.gzj.entity.OrdersDetails;
import com.gzj.entity.Users;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 订单action
 *
 */
public class OrdersAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private IOrdersDAO ordersDAO;
	private int ordersId;
	private String usersName;

	public String getUsersName() {
		return usersName;
	}

	public void setUsersName(String usersName) {
		this.usersName = usersName;
	}

	public int getOrdersId() {
		return ordersId;
	}

	public void setOrdersId(int ordersId) {
		this.ordersId = ordersId;
	}

	public IOrdersDAO getOrdersDAO() {
		return ordersDAO;
	}

	public void setOrdersDAO(IOrdersDAO ordersDAO) {
		this.ordersDAO = ordersDAO;
	}

	public String getOrder() throws Exception {

		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		Users us = (Users) session.getAttribute("Users");
		if (us == null) {
			return SUCCESS;
		}

		List<Orders> list = ordersDAO.getOrderByName(us.getUsersName());
		if (list != null) {
			session.setAttribute("Orders", list);
		}
		return SUCCESS;

	}

	public String getOrderDetail() throws Exception {

		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		List<OrdersDetails> list = ordersDAO.getDetailByID(ordersId);
		if (list != null) {
			session.setAttribute("OrdersDetail", list);
		}
		return SUCCESS;

	}

	public String getAllOrder() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		List<Orders> list = ordersDAO.getAllOrder();
		session.removeAttribute("Orders");
		session.setAttribute("Orders", list);

		return SUCCESS;
	}

	public String getOrderByID() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		Orders list = ordersDAO.getOrderByID(ordersId);
		session.removeAttribute("Orders");
		session.setAttribute("Orders", list);

		return SUCCESS;
	}

	public String getOrderByName() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		List<Orders> list = ordersDAO.getOrderByName(usersName);
		session.removeAttribute("Orders");
		session.setAttribute("Orders", list);

		return SUCCESS;
	}
}
