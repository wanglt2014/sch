package com.et59.cus.domain.dao;

import com.et59.cus.domain.entity.TPrize;
import com.et59.cus.domain.entity.TPrizeExample;

import java.util.List;

public interface TPrizeDAO {

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 30 11:59:04 CST 2015
	 */
	int countByExample(TPrizeExample example);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 30 11:59:04 CST 2015
	 */
	int deleteByExample(TPrizeExample example);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 30 11:59:04 CST 2015
	 */
	int deleteByPrimaryKey(Long prizeid);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 30 11:59:04 CST 2015
	 */
	void insert(TPrize record);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 30 11:59:04 CST 2015
	 */
	void insertSelective(TPrize record);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 30 11:59:04 CST 2015
	 */
	List selectByExample(TPrizeExample example);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 30 11:59:04 CST 2015
	 */
	TPrize selectByPrimaryKey(Long prizeid);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 30 11:59:04 CST 2015
	 */
	int updateByExampleSelective(TPrize record, TPrizeExample example);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 30 11:59:04 CST 2015
	 */
	int updateByExample(TPrize record, TPrizeExample example);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 30 11:59:04 CST 2015
	 */
	int updateByPrimaryKeySelective(TPrize record);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 30 11:59:04 CST 2015
	 */
	int updateByPrimaryKey(TPrize record);

	/**新增返回主键
	 * @param record
	 * @return
	 */
	public Long insertReturnId(TPrize record);
}