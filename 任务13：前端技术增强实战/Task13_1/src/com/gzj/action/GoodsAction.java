/**
 * 
 */
package com.gzj.action;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gzj.dao.IGoodsDAO;
import com.gzj.entity.Goods;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 商品action
 *
 */
public class GoodsAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
		
	private int goodsId;
	private IGoodsDAO goodsDAO;
	private String searchBy;		//查询关键字
	private String searchOption;	//查询方式
	private String goodsPrice;	
	private int currentPage;
	private String goodsName;
	private String sortName;

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getSortName() {
		return sortName;
	}

	public void setSortName(String sortName) {
		this.sortName = sortName;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public String getSearchBy() {
		return searchBy;
	}

	public void setSearchBy(String searchBy) {
		this.searchBy = searchBy;
	}

	public String getSearchOption() {
		return searchOption;
	}

	public void setSearchOption(String searchOption) {
		this.searchOption = searchOption;
	}

	public String getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(String goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public IGoodsDAO getGoodsDAO() {
		return goodsDAO;
	}

	public void setGoodsDAO(IGoodsDAO goodsDAO) {
		this.goodsDAO = goodsDAO;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public String getGood() throws Exception {

		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		Goods goods = goodsDAO.getGoodById(goodsId);
		if (goods != null) {
			session.setAttribute("Goods", goods);
		}
		return SUCCESS;

	}

	public String getGoodsBySort() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		session.setAttribute("sortName", searchBy);
		int pageCount = goodsDAO.getAllPageBySort(searchBy);
		session.setAttribute("pageCount", pageCount); // 将一共几页写入
		session.setAttribute("rowCount", goodsDAO.getRowCount());// 将一共几条记录写入
		session.setAttribute("currentPage", currentPage);// 将当前的页数写入
		List<Goods> list = goodsDAO.getGoodsBySort(searchBy, currentPage);
		session.setAttribute("SearchGoods", list);

		return SUCCESS;
	}

	public String getGoodsByPrice() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		session.setAttribute("goodsPrice", searchBy);
		int pageCount = goodsDAO.getAllPageByPrice(searchBy);
		session.setAttribute("pageCount", pageCount); // 将一共几页写入
		session.setAttribute("rowCount", goodsDAO.getRowCount());// 将一共几条记录写入
		session.setAttribute("currentPage", currentPage);// 将当前的页数写入
		List<Goods> list = goodsDAO.getGoodsByPrice(searchBy, currentPage);
		session.setAttribute("SearchGoods", list);

		return SUCCESS;
	}

	public String getGoodsByMaterial() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		session.setAttribute("goodsmaterial", searchBy);
		int pageCount = goodsDAO.getAllPageByMaterial(searchBy);
		session.setAttribute("pageCount", pageCount); // 将一共几页写入
		session.setAttribute("rowCount", goodsDAO.getRowCount());// 将一共几条记录写入
		session.setAttribute("currentPage", currentPage);// 将当前的页数写入
		List<Goods> list = goodsDAO.getGoodsByMaterial(searchBy, currentPage);
		session.setAttribute("SearchGoods", list);

		return SUCCESS;
	}

	public String getGoodsByLowerSelect() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		session.setAttribute("goodsName", goodsName);
		session.setAttribute("sortName", sortName);

		int pageCount = goodsDAO.getAllPageByLowerSelect(goodsName, sortName);
		session.setAttribute("pageCount", pageCount); // 将一共几页写入
		session.setAttribute("rowCount", goodsDAO.getRowCount());// 将一共几条记录写入
		session.setAttribute("currentPage", currentPage);// 将当前的页数写入
		List<Goods> list = goodsDAO.getGoodsByLowerSelect(goodsName, sortName, currentPage);
		session.setAttribute("SearchGoods", list);

		return SUCCESS;
	}
	
	public String getGoodsByHeightSelect() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		session.setAttribute("searchBy", searchBy);
		session.setAttribute("searchOption", searchOption);
		session.setAttribute("goodsPrice", goodsPrice);
		session.setAttribute("sortName", sortName);

		int pageCount = goodsDAO.getAllPageByHeightSelect(searchBy, searchOption, goodsPrice, sortName);
		session.setAttribute("pageCount", pageCount); // 将一共几页写入
		session.setAttribute("rowCount", goodsDAO.getRowCount());// 将一共几条记录写入
		session.setAttribute("currentPage", currentPage);// 将当前的页数写入
		List<Goods> list = goodsDAO.getGoodsByHeightSelect(searchBy, searchOption, goodsPrice, sortName, currentPage);
		session.setAttribute("SearchGoods", list);

		return SUCCESS;
	}
	
}
