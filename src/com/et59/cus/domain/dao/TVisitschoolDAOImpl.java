package com.et59.cus.domain.dao;

import com.et59.cus.domain.entity.TVisitschool;
import com.et59.cus.domain.entity.TVisitschoolExample;
import java.util.List;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

public class TVisitschoolDAOImpl extends SqlMapClientDaoSupport implements TVisitschoolDAO {

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	public TVisitschoolDAOImpl() {
		super();
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	public int countByExample(TVisitschoolExample example) {
		Integer count = (Integer) getSqlMapClientTemplate().queryForObject(
				"t_visitschool.ibatorgenerated_countByExample", example);
		return count.intValue();
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	public int deleteByExample(TVisitschoolExample example) {
		int rows = getSqlMapClientTemplate().delete(
				"t_visitschool.ibatorgenerated_deleteByExample", example);
		return rows;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	public int deleteByPrimaryKey(Long visitid) {
		TVisitschool key = new TVisitschool();
		key.setVisitid(visitid);
		int rows = getSqlMapClientTemplate().delete(
				"t_visitschool.ibatorgenerated_deleteByPrimaryKey", key);
		return rows;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	public void insert(TVisitschool record) {
		getSqlMapClientTemplate().insert(
				"t_visitschool.ibatorgenerated_insert", record);
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	public void insertSelective(TVisitschool record) {
		getSqlMapClientTemplate().insert(
				"t_visitschool.ibatorgenerated_insertSelective", record);
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	public List selectByExample(TVisitschoolExample example) {
		List list = getSqlMapClientTemplate().queryForList(
				"t_visitschool.ibatorgenerated_selectByExample", example);
		return list;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	public TVisitschool selectByPrimaryKey(Long visitid) {
		TVisitschool key = new TVisitschool();
		key.setVisitid(visitid);
		TVisitschool record = (TVisitschool) getSqlMapClientTemplate()
				.queryForObject(
						"t_visitschool.ibatorgenerated_selectByPrimaryKey", key);
		return record;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	public int updateByExampleSelective(TVisitschool record,
			TVisitschoolExample example) {
		UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
		int rows = getSqlMapClientTemplate()
				.update("t_visitschool.ibatorgenerated_updateByExampleSelective",
						parms);
		return rows;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	public int updateByExample(TVisitschool record, TVisitschoolExample example) {
		UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
		int rows = getSqlMapClientTemplate().update(
				"t_visitschool.ibatorgenerated_updateByExample", parms);
		return rows;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	public int updateByPrimaryKeySelective(TVisitschool record) {
		int rows = getSqlMapClientTemplate().update(
				"t_visitschool.ibatorgenerated_updateByPrimaryKeySelective",
				record);
		return rows;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	public int updateByPrimaryKey(TVisitschool record) {
		int rows = getSqlMapClientTemplate().update(
				"t_visitschool.ibatorgenerated_updateByPrimaryKey", record);
		return rows;
	}

	/**
	 * This class was generated by Apache iBATIS ibator. This class corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	private static class UpdateByExampleParms extends TVisitschoolExample {
		private Object record;

		public UpdateByExampleParms(Object record, TVisitschoolExample example) {
			super(example);
			this.record = record;
		}

		public Object getRecord() {
			return record;
		}
	}
}