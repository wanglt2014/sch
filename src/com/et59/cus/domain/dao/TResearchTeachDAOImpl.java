package com.et59.cus.domain.dao;

import com.et59.cus.domain.entity.TResearchTeach;
import com.et59.cus.domain.entity.TResearchTeachExample;
import java.util.List;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

public class TResearchTeachDAOImpl extends SqlMapClientDaoSupport implements TResearchTeachDAO {

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_research_teach
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    public TResearchTeachDAOImpl() {
        super();
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_research_teach
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    public int countByExample(TResearchTeachExample example) {
        Integer count = (Integer)  getSqlMapClientTemplate().queryForObject("t_research_teach.ibatorgenerated_countByExample", example);
        return count.intValue();
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_research_teach
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    public int deleteByExample(TResearchTeachExample example) {
        int rows = getSqlMapClientTemplate().delete("t_research_teach.ibatorgenerated_deleteByExample", example);
        return rows;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_research_teach
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    public int deleteByPrimaryKey(Long researchid) {
        TResearchTeach key = new TResearchTeach();
        key.setResearchid(researchid);
        int rows = getSqlMapClientTemplate().delete("t_research_teach.ibatorgenerated_deleteByPrimaryKey", key);
        return rows;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_research_teach
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    public void insert(TResearchTeach record) {
        getSqlMapClientTemplate().insert("t_research_teach.ibatorgenerated_insert", record);
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_research_teach
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    public void insertSelective(TResearchTeach record) {
        getSqlMapClientTemplate().insert("t_research_teach.ibatorgenerated_insertSelective", record);
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_research_teach
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    public List selectByExample(TResearchTeachExample example) {
        List list = getSqlMapClientTemplate().queryForList("t_research_teach.ibatorgenerated_selectByExample", example);
        return list;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_research_teach
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    public TResearchTeach selectByPrimaryKey(Long researchid) {
        TResearchTeach key = new TResearchTeach();
        key.setResearchid(researchid);
        TResearchTeach record = (TResearchTeach) getSqlMapClientTemplate().queryForObject("t_research_teach.ibatorgenerated_selectByPrimaryKey", key);
        return record;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_research_teach
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    public int updateByExampleSelective(TResearchTeach record, TResearchTeachExample example) {
        UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
        int rows = getSqlMapClientTemplate().update("t_research_teach.ibatorgenerated_updateByExampleSelective", parms);
        return rows;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_research_teach
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    public int updateByExample(TResearchTeach record, TResearchTeachExample example) {
        UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
        int rows = getSqlMapClientTemplate().update("t_research_teach.ibatorgenerated_updateByExample", parms);
        return rows;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_research_teach
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    public int updateByPrimaryKeySelective(TResearchTeach record) {
        int rows = getSqlMapClientTemplate().update("t_research_teach.ibatorgenerated_updateByPrimaryKeySelective", record);
        return rows;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_research_teach
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    public int updateByPrimaryKey(TResearchTeach record) {
        int rows = getSqlMapClientTemplate().update("t_research_teach.ibatorgenerated_updateByPrimaryKey", record);
        return rows;
    }

    /**
     * This class was generated by Apache iBATIS ibator.
     * This class corresponds to the database table t_research_teach
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    private static class UpdateByExampleParms extends TResearchTeachExample {
        private Object record;

        public UpdateByExampleParms(Object record, TResearchTeachExample example) {
            super(example);
            this.record = record;
        }

        public Object getRecord() {
            return record;
        }
    }
}