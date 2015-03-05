package com.et59.cus.domain.dao;

import com.et59.cus.domain.entity.TTeacherResearchExample;
import com.et59.cus.domain.entity.TTeacherResearchKey;
import java.util.List;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

public class TTeacherResearchDAOImpl extends SqlMapClientDaoSupport implements TTeacherResearchDAO {

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_teacher_research
     *
     * @ibatorgenerated Tue Mar 03 17:43:02 CST 2015
     */
    public TTeacherResearchDAOImpl() {
        super();
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_teacher_research
     *
     * @ibatorgenerated Tue Mar 03 17:43:02 CST 2015
     */
    public int countByExample(TTeacherResearchExample example) {
        Integer count = (Integer)  getSqlMapClientTemplate().queryForObject("t_teacher_research.ibatorgenerated_countByExample", example);
        return count.intValue();
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_teacher_research
     *
     * @ibatorgenerated Tue Mar 03 17:43:02 CST 2015
     */
    public int deleteByExample(TTeacherResearchExample example) {
        int rows = getSqlMapClientTemplate().delete("t_teacher_research.ibatorgenerated_deleteByExample", example);
        return rows;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_teacher_research
     *
     * @ibatorgenerated Tue Mar 03 17:43:02 CST 2015
     */
    public int deleteByPrimaryKey(TTeacherResearchKey key) {
        int rows = getSqlMapClientTemplate().delete("t_teacher_research.ibatorgenerated_deleteByPrimaryKey", key);
        return rows;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_teacher_research
     *
     * @ibatorgenerated Tue Mar 03 17:43:02 CST 2015
     */
    public void insert(TTeacherResearchKey record) {
        getSqlMapClientTemplate().insert("t_teacher_research.ibatorgenerated_insert", record);
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_teacher_research
     *
     * @ibatorgenerated Tue Mar 03 17:43:02 CST 2015
     */
    public void insertSelective(TTeacherResearchKey record) {
        getSqlMapClientTemplate().insert("t_teacher_research.ibatorgenerated_insertSelective", record);
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_teacher_research
     *
     * @ibatorgenerated Tue Mar 03 17:43:02 CST 2015
     */
    public List selectByExample(TTeacherResearchExample example) {
        List list = getSqlMapClientTemplate().queryForList("t_teacher_research.ibatorgenerated_selectByExample", example);
        return list;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_teacher_research
     *
     * @ibatorgenerated Tue Mar 03 17:43:02 CST 2015
     */
    public int updateByExampleSelective(TTeacherResearchKey record, TTeacherResearchExample example) {
        UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
        int rows = getSqlMapClientTemplate().update("t_teacher_research.ibatorgenerated_updateByExampleSelective", parms);
        return rows;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_teacher_research
     *
     * @ibatorgenerated Tue Mar 03 17:43:02 CST 2015
     */
    public int updateByExample(TTeacherResearchKey record, TTeacherResearchExample example) {
        UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
        int rows = getSqlMapClientTemplate().update("t_teacher_research.ibatorgenerated_updateByExample", parms);
        return rows;
    }

    /**
     * This class was generated by Apache iBATIS ibator.
     * This class corresponds to the database table t_teacher_research
     *
     * @ibatorgenerated Tue Mar 03 17:43:02 CST 2015
     */
    private static class UpdateByExampleParms extends TTeacherResearchExample {
        private Object record;

        public UpdateByExampleParms(Object record, TTeacherResearchExample example) {
            super(example);
            this.record = record;
        }

        public Object getRecord() {
            return record;
        }
    }
}