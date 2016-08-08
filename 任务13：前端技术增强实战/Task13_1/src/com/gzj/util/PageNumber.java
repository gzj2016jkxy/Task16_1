/**
 * 
 */
package com.gzj.util;

/**
 * 分页类
 *
 */
public class PageNumber {
	int rowCount = 1, // 总记录数
			pageSize = 1, // 一页显示几条
			showPage = 1, // 第几页
			pageCount = 1; // 一共几页

	public void setRowCount(int n) {
		rowCount = n;
	}

	public int getRowCount() {
		return rowCount;
	}

	public void setPageCount(int r, int p) {
		rowCount = r;
		pageSize = p;
		int n = (rowCount % pageSize) == 0 ? (rowCount / pageSize) : (rowCount / pageSize + 1);
		pageCount = n;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setShowPage(int n) {
		showPage = n;
	}

	public int getShowPage() {
		return showPage;
	}

	public void setPageSize(int n) {
		pageSize = n;
	}

	public int getPageSize() {
		return pageSize;
	}
}
