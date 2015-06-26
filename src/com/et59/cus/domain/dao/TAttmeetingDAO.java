package com.et59.cus.domain.dao;

import com.et59.cus.domain.entity.TAttmeeting;
import com.et59.cus.domain.entity.TAttmeetingExample;
import java.util.List;

public interface TAttmeetingDAO {
    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_attmeeting
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    int countByExample(TAttmeetingExample example);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_attmeeting
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    int deleteByExample(TAttmeetingExample example);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_attmeeting
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    int deleteByPrimaryKey(Long attendid);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_attmeeting
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    void insert(TAttmeeting record);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_attmeeting
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    void insertSelective(TAttmeeting record);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_attmeeting
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    List selectByExample(TAttmeetingExample example);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_attmeeting
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    TAttmeeting selectByPrimaryKey(Long attendid);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_attmeeting
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    int updateByExampleSelective(TAttmeeting record, TAttmeetingExample example);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_attmeeting
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    int updateByExample(TAttmeeting record, TAttmeetingExample example);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_attmeeting
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    int updateByPrimaryKeySelective(TAttmeeting record);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_attmeeting
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    int updateByPrimaryKey(TAttmeeting record);
}