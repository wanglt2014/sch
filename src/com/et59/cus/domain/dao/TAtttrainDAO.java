package com.et59.cus.domain.dao;

import com.et59.cus.domain.entity.TAtttrain;
import com.et59.cus.domain.entity.TAtttrainExample;
import java.util.List;

public interface TAtttrainDAO {
    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_atttrain
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    int countByExample(TAtttrainExample example);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_atttrain
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    int deleteByExample(TAtttrainExample example);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_atttrain
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    int deleteByPrimaryKey(Long atttrainid);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_atttrain
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    void insert(TAtttrain record);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_atttrain
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    void insertSelective(TAtttrain record);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_atttrain
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    List selectByExample(TAtttrainExample example);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_atttrain
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    TAtttrain selectByPrimaryKey(Long atttrainid);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_atttrain
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    int updateByExampleSelective(TAtttrain record, TAtttrainExample example);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_atttrain
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    int updateByExample(TAtttrain record, TAtttrainExample example);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_atttrain
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    int updateByPrimaryKeySelective(TAtttrain record);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_atttrain
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    int updateByPrimaryKey(TAtttrain record);
}