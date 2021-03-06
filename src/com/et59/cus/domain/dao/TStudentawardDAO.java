package com.et59.cus.domain.dao;

import com.et59.cus.domain.entity.TStudentaward;
import com.et59.cus.domain.entity.TStudentawardExample;
import java.util.List;

public interface TStudentawardDAO {
    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_studentaward
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    int countByExample(TStudentawardExample example);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_studentaward
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    int deleteByExample(TStudentawardExample example);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_studentaward
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    int deleteByPrimaryKey(Long awardid);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_studentaward
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    void insert(TStudentaward record);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_studentaward
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    void insertSelective(TStudentaward record);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_studentaward
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    List selectByExample(TStudentawardExample example);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_studentaward
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    TStudentaward selectByPrimaryKey(Long awardid);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_studentaward
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    int updateByExampleSelective(TStudentaward record, TStudentawardExample example);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_studentaward
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    int updateByExample(TStudentaward record, TStudentawardExample example);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_studentaward
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    int updateByPrimaryKeySelective(TStudentaward record);

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_studentaward
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    int updateByPrimaryKey(TStudentaward record);
}