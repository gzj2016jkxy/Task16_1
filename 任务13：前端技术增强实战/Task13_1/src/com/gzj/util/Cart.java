/**
 * 
 */
package com.gzj.util;

import java.util.HashMap;

/**
 * 购物车
 *
 */
public class Cart {
	/**
	 * 购物项（商品ID,商品信息）
	 */
	private HashMap<String, CartGood> items;

	public HashMap<String, CartGood> getItems() {
		return items;
	}

	public void setItems(HashMap<String, CartGood> items) {
		this.items = items;
	}

	public Cart() {
		if (items == null) {
			items = new HashMap<String, CartGood>();
		}
	}

	public void addOrUpdateItem(String goodsId, CartGood cartGood) {
		if (items.containsKey(goodsId)) {
			items.remove(goodsId);
		}
		items.put(goodsId, cartGood);
	}

	public void removeItem(String goodsId) {
		items.remove(goodsId);
	}
}
