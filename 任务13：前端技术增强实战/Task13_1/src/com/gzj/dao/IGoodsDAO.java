/**
 * 
 */
package com.gzj.dao;

import java.util.List;

import com.gzj.entity.Goods;
import com.gzj.entity.Orders;
import com.gzj.entity.Users;
import com.gzj.util.Cart;

/**
 * 商品DAO
 *
 */
public interface IGoodsDAO {

	/**
	 * 根据ID查找商品
	 */
	public Goods getGoodById(int id);
	
	/**
	 * 根据名称查找商品
	 */
	public List<Goods> getGoodByName(String goodsName);
	
	/**
	 * 删除商品
	 */
	public boolean delGoodById(int id);
	
	
	/**
	 * 添加商品
	 */
	public boolean addGood(Goods goods);

	/**
	 * 获取查询总记录数
	 * 
	 * @return
	 */
	public int getRowCount();

	/**
	 * 查询类别一共多少页记录
	 */
	public int getAllPageBySort(String searchBy);

	/**
	 * 获取当前页要显示的商品
	 */
	public List<Goods> getGoodsBySort(String searchBy, int currentPage);

	/**
	 * 查询价格一共多少页记录
	 */
	public int getAllPageByPrice(String searchBy);

	/**
	 * 获取当前页要显示的商品
	 */
	public List<Goods> getGoodsByPrice(String searchBy, int currentPage);

	/**
	 * 查询花材一共多少页记录
	 */
	public int getAllPageByMaterial(String searchBy);

	/**
	 * 获取当前页要显示的商品
	 */
	public List<Goods> getGoodsByMaterial(String searchBy, int currentPage);

	/**
	 * 快速查询一共多少页记录
	 */
	public int getAllPageByLowerSelect(String goodsName, String sortName);

	/**
	 * 获取快速查询当前页要显示的商品
	 */
	public List<Goods> getGoodsByLowerSelect(String goodsName, String sortName, int currentPage);

	/**
	 * 高级查询一共多少页记录
	 */
	public int getAllPageByHeightSelect(String searchBy, String searchOption, String goodsPrice, String sortName);

	/**
	 * 获取高级查询当前页要显示的商品
	 */
	public List<Goods> getGoodsByHeightSelect(String searchBy, String searchOption, String goodsPrice, String sortName,
			int currentPage);

	/**
	 * 根据购物车生成订单
	 */
	public Orders buildOrder(Cart cart, Users users);

}
