package com.et59.cus.domain.dao;

import com.et59.cus.domain.entity.TLearnact;
import com.et59.cus.domain.entity.TLearnactExample;
import java.util.List;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

public class TLearnactDAOImpl extends SqlMapClientDaoSupport implements TLearnactDAO {

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_learnact
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    public TLearnactDAOImpl() {
        super();
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_learnact
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    public int countByExample(TLearnactExample example) {
        Integer count = (Integer)  getSqlMapClientTemplate().queryForObject("t_learnact.ibatorgenerated_countByExample", example);
        return count.intValue();
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_learnact
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    public int deleteByExample(TLearnactExample example) {
        int rows = getSqlMapClientTemplate().delete("t_learnact.ibatorgenerated_deleteByExample", example);
        return rows;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_learnact
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    public int deleteByPrimaryKey(Long actid) {
        TLearnact key = new TLearnact();
        key.setActid(actid);
        int rows = getSqlMapClientTemplate().delete("t_learnact.ibatorgenerated_deleteByPrimaryKey", key);
        return rows;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_learnact
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    public void insert(TLearnact record) {
        getSqlMapClientTemplate().insert("t_learnact.ibatorgenerated_insert", record);
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_learnact
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    public void insertSelective(TLearnact record) {
        getSqlMapClientTemplate().insert("t_learnact.ibatorgenerated_insertSelective", record);
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_learnact
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    public List selectByExample(TLearnactExample example) {
        List list = getSqlMapClientTemplate().queryForList("t_learnact.ibatorgenerated_selectByExample", example);
        return list;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_learnact
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    public TLearnact selectByPrimaryKey(Long actid) {
        TLearnact key = new TLearnact();
        key.setActid(actid);
        TLearnact record = (TLearnact) getSqlMapClientTemplate().queryForObject("t_learnact.ibatorgenerated_selectByPrimaryKey", key);
        return record;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_learnact
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    public int updateByExampleSelective(TLearnact record, TLearnactExample example) {
        UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
        int rows = getSqlMapClientTemplate().update("t_learnact.ibatorgenerated_updateByExampleSelective", parms);
        return rows;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_learnact
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    public int updateByExample(TLearnact record, TLearnactExample example) {
        UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
        int rows = getSqlMapClientTemplate().update("t_learnact.ibatorgenerated_updateByExample", parms);
        return rows;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_learnact
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    public int updateByPrimaryKeySelective(TLearnact record) {
        int rows = getSqlMapClientTemplate().update("t_learnact.ibatorgenerated_updateByPrimaryKeySelective", record);
        return rows;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_learnact
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    public int updateByPrimaryKey(TLearnact record) {
        int rows = getSqlMapClientTemplate().update("t_learnact.ibatorgenerated_updateByPrimaryKey", record);
        return rows;
    }

    /**
     * This class was generated by Apache iBATIS ibator.
     * This class corresponds to the database table t_learnact
     *
     * @ibatorgenerated Tue Jul 21 14:25:55 CST 2015
     */
    private static class UpdateByExampleParms extends TLearnactExample {
        private Object record;

        public UpdateByExampleParms(Object record, TLearnactExample example) {
            super(example);
            this.record = record;
        }

        public Object getRecord() {
            return record;
        }
    }
}