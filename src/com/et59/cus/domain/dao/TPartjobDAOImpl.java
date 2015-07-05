package com.et59.cus.domain.dao;

import com.et59.cus.domain.entity.TPartjob;
import com.et59.cus.domain.entity.TPartjobExample;
import java.util.List;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

public class TPartjobDAOImpl extends SqlMapClientDaoSupport implements TPartjobDAO {

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	public TPartjobDAOImpl() {
		super();
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	public int countByExample(TPartjobExample example) {
		Integer count = (Integer) getSqlMapClientTemplate().queryForObject(
				"t_partjob.ibatorgenerated_countByExample", example);
		return count.intValue();
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	public int deleteByExample(TPartjobExample example) {
		int rows = getSqlMapClientTemplate().delete(
				"t_partjob.ibatorgenerated_deleteByExample", example);
		return rows;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	public int deleteByPrimaryKey(Long partid) {
		TPartjob key = new TPartjob();
		key.setPartid(partid);
		int rows = getSqlMapClientTemplate().delete(
				"t_partjob.ibatorgenerated_deleteByPrimaryKey", key);
		return rows;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	public void insert(TPartjob record) {
		getSqlMapClientTemplate().insert("t_partjob.ibatorgenerated_insert",
				record);
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	public void insertSelective(TPartjob record) {
		getSqlMapClientTemplate().insert(
				"t_partjob.ibatorgenerated_insertSelective", record);
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	public List selectByExample(TPartjobExample example) {
		List list = getSqlMapClientTemplate().queryForList(
				"t_partjob.ibatorgenerated_selectByExample", example);
		return list;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	public TPartjob selectByPrimaryKey(Long partid) {
		TPartjob key = new TPartjob();
		key.setPartid(partid);
		TPartjob record = (TPartjob) getSqlMapClientTemplate().queryForObject(
				"t_partjob.ibatorgenerated_selectByPrimaryKey", key);
		return record;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	public int updateByExampleSelective(TPartjob record, TPartjobExample example) {
		UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
		int rows = getSqlMapClientTemplate().update(
				"t_partjob.ibatorgenerated_updateByExampleSelective", parms);
		return rows;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	public int updateByExample(TPartjob record, TPartjobExample example) {
		UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
		int rows = getSqlMapClientTemplate().update(
				"t_partjob.ibatorgenerated_updateByExample", parms);
		return rows;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	public int updateByPrimaryKeySelective(TPartjob record) {
		int rows = getSqlMapClientTemplate()
				.update("t_partjob.ibatorgenerated_updateByPrimaryKeySelective",
						record);
		return rows;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	public int updateByPrimaryKey(TPartjob record) {
		int rows = getSqlMapClientTemplate().update(
				"t_partjob.ibatorgenerated_updateByPrimaryKey", record);
		return rows;
	}

	/**
	 * This class was generated by Apache iBATIS ibator. This class corresponds to the database table t_partjob
	 * @ibatorgenerated  Sun Jul 05 15:22:47 CST 2015
	 */
	private static class UpdateByExampleParms extends TPartjobExample {
		private Object record;

		public UpdateByExampleParms(Object record, TPartjobExample example) {
			super(example);
			this.record = record;
		}

		public Object getRecord() {
			return record;
		}
	}
}