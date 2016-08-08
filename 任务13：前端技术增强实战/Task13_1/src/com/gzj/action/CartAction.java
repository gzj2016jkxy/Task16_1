/**
 * 
 */
package com.gzj.action;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.dao.IGoodsDAO;
import com.gzj.entity.Goods;
import com.gzj.entity.Orders;
import com.gzj.entity.Users;
import com.gzj.util.Cart;
import com.gzj.util.CartGood;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 购物action
 *
 */
public class CartAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private int goodsId;
	private int quantity;
	private IGoodsDAO goodsDAO;

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public IGoodsDAO getGoodsDAO() {
		return goodsDAO;
	}

	public void setGoodsDAO(IGoodsDAO goodsDAO) {
		this.goodsDAO = goodsDAO;
	}

	public String addToCart() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		Goods goods = goodsDAO.getGoodById(goodsId);
		Cart cart = (Cart) session.getAttribute("Cart");
		if (cart == null) {
			cart = new Cart();
		}
		CartGood cartGood = new CartGood();
		cartGood.setGoodsName(goods.getGoodsName());
		cartGood.setGoodsPrice(goods.getGoodsPrice());
		cartGood.setQuantity(quantity);
		cart.addOrUpdateItem(String.valueOf(goodsId), cartGood);

		session.setAttribute("Cart", cart); // 购物信息写入

		return SUCCESS;
	}

	public String buildOrder() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		Users users = (Users) session.getAttribute("Users");
		if (users == null) {
			return ERROR;
		}

		Cart cart = (Cart) session.getAttribute("Cart");
		if (cart == null) {
			return ERROR;
		}

		Orders orders = goodsDAO.buildOrder(cart, users);
		session.setAttribute("Orders", orders);

		session.removeAttribute("Cart"); // 生成订单后清空购物车

		return SUCCESS;
	}

	public String delCartItem() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		
		Cart cart = (Cart) session.getAttribute("Cart");

		cart.removeItem(String.valueOf(goodsId));

		session.setAttribute("Cart", cart); // 购物信息写入

		return SUCCESS;
	}

}
