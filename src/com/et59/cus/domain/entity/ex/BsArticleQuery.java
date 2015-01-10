package com.et59.cus.domain.entity.ex;

import java.util.Date;

import com.et59.cus.domain.entity.BsArticle;
/***
 * 查询条件
 *
 */
public class BsArticleQuery extends BsArticle {
	/**
	 * 开始日期
	 */
	private Date startdatacreatenew;
	/**
	 * 结束日期
	 */
	private Date enddatacreatenew;
	public Date getStartdatacreatenew() {
		return startdatacreatenew;
	}
	public void setStartdatacreatenew(Date startdatacreatenew) {
		this.startdatacreatenew = startdatacreatenew;
	}
	public Date getEnddatacreatenew() {
		return enddatacreatenew;
	}
	public void setEnddatacreatenew(Date enddatacreatenew) {
		this.enddatacreatenew = enddatacreatenew;
	}
	
}
