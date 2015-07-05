package com.et59.cus.domain.dao;

import com.et59.cus.domain.entity.TPartjob;
import com.et59.cus.domain.entity.TPartjobExample;
import java.util.List;

public interface TPartjobDAO {

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	int countByExample(TPartjobExample example);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	int deleteByExample(TPartjobExample example);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	int deleteByPrimaryKey(Long partid);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	void insert(TPartjob record);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	void insertSelective(TPartjob record);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	List selectByExample(TPartjobExample example);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	TPartjob selectByPrimaryKey(Long partid);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	int updateByExampleSelective(TPartjob record, TPartjobExample example);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	int updateByExample(TPartjob record, TPartjobExample example);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	int updateByPrimaryKeySelective(TPartjob record);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	int updateByPrimaryKey(TPartjob record);
}