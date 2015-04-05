package com.et59.cus.domain.dao;

import java.util.List;

import com.et59.cus.domain.entity.TResearch;
import com.et59.cus.domain.entity.TResearchExample;

public interface TResearchDAO {

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_research
	 * @ibatorgenerated  Sat Apr 04 16:53:51 CST 2015
	 */
	int countByExample(TResearchExample example);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_research
	 * @ibatorgenerated  Sat Apr 04 16:53:51 CST 2015
	 */
	int deleteByExample(TResearchExample example);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_research
	 * @ibatorgenerated  Sat Apr 04 16:53:51 CST 2015
	 */
	int deleteByPrimaryKey(Long researchid);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_research
	 * @ibatorgenerated  Sat Apr 04 16:53:51 CST 2015
	 */
	void insertSelective(TResearch record);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_research
	 * @ibatorgenerated  Sat Apr 04 16:53:51 CST 2015
	 */
	List selectByExample(TResearchExample example);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_research
	 * @ibatorgenerated  Sat Apr 04 16:53:51 CST 2015
	 */
	TResearch selectByPrimaryKey(Long researchid);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_research
	 * @ibatorgenerated  Sat Apr 04 16:53:51 CST 2015
	 */
	int updateByExampleSelective(TResearch record, TResearchExample example);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_research
	 * @ibatorgenerated  Sat Apr 04 16:53:51 CST 2015
	 */
	int updateByExample(TResearch record, TResearchExample example);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_research
	 * @ibatorgenerated  Sat Apr 04 16:53:51 CST 2015
	 */
	int updateByPrimaryKeySelective(TResearch record);

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_research
	 * @ibatorgenerated  Sat Apr 04 16:53:51 CST 2015
	 */
	int updateByPrimaryKey(TResearch record);
	
	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_research
	 * @ibatorgenerated  Sat Apr 04 16:53:51 CST 2015
	 */
	Long insert(TResearch record);
}