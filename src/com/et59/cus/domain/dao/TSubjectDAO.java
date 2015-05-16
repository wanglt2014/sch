package com.et59.cus.domain.dao;

import java.util.List;

import com.et59.cus.domain.entity.TSubject;
import com.et59.cus.domain.entity.TSubjectExample;

public interface TSubjectDAO {

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_subject
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	int countByExample(TSubjectExample example);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_subject
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	int deleteByExample(TSubjectExample example);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_subject
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	int deleteByPrimaryKey(Long subjectid);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_subject
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	void insert(TSubject record);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_subject
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	void insertSelective(TSubject record);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_subject
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	List selectByExample(TSubjectExample example);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_subject
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	TSubject selectByPrimaryKey(Long subjectid);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_subject
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	int updateByExampleSelective(TSubject record, TSubjectExample example);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_subject
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	int updateByExample(TSubject record, TSubjectExample example);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_subject
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	int updateByPrimaryKeySelective(TSubject record);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_subject
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	int updateByPrimaryKey(TSubject record);

	// WLT
	public Long insertReturnId(TSubject record);

}