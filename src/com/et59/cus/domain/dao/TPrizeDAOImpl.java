package com.et59.cus.domain.dao;

import com.et59.cus.domain.entity.TPrize;
import com.et59.cus.domain.entity.TPrizeExample;

import java.util.List;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

public class TPrizeDAOImpl extends SqlMapClientDaoSupport implements TPrizeDAO {

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	public TPrizeDAOImpl() {
		super();
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	public int countByExample(TPrizeExample example) {
		Integer count = (Integer) getSqlMapClientTemplate().queryForObject(
				"t_prize.ibatorgenerated_countByExample", example);
		return count.intValue();
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	public int deleteByExample(TPrizeExample example) {
		int rows = getSqlMapClientTemplate().delete(
				"t_prize.ibatorgenerated_deleteByExample", example);
		return rows;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	public int deleteByPrimaryKey(Long prizeid) {
		TPrize key = new TPrize();
		key.setPrizeid(prizeid);
		int rows = getSqlMapClientTemplate().delete(
				"t_prize.ibatorgenerated_deleteByPrimaryKey", key);
		return rows;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	public void insert(TPrize record) {
		getSqlMapClientTemplate().insert("t_prize.ibatorgenerated_insert",
				record);
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	public void insertSelective(TPrize record) {
		getSqlMapClientTemplate().insert(
				"t_prize.ibatorgenerated_insertSelective", record);
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	public List selectByExample(TPrizeExample example) {
		List list = getSqlMapClientTemplate().queryForList(
				"t_prize.ibatorgenerated_selectByExample", example);
		return list;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	public TPrize selectByPrimaryKey(Long prizeid) {
		TPrize key = new TPrize();
		key.setPrizeid(prizeid);
		TPrize record = (TPrize) getSqlMapClientTemplate().queryForObject(
				"t_prize.ibatorgenerated_selectByPrimaryKey", key);
		return record;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	public int updateByExampleSelective(TPrize record, TPrizeExample example) {
		UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
		int rows = getSqlMapClientTemplate().update(
				"t_prize.ibatorgenerated_updateByExampleSelective", parms);
		return rows;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	public int updateByExample(TPrize record, TPrizeExample example) {
		UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
		int rows = getSqlMapClientTemplate().update(
				"t_prize.ibatorgenerated_updateByExample", parms);
		return rows;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	public int updateByPrimaryKeySelective(TPrize record) {
		int rows = getSqlMapClientTemplate().update(
				"t_prize.ibatorgenerated_updateByPrimaryKeySelective", record);
		return rows;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	public int updateByPrimaryKey(TPrize record) {
		int rows = getSqlMapClientTemplate().update(
				"t_prize.ibatorgenerated_updateByPrimaryKey", record);
		return rows;
	}

	/**
	 * This class was generated by Apache iBATIS ibator. This class corresponds to the database table t_prize
	 * @ibatorgenerated  Sat May 16 18:50:10 CST 2015
	 */
	private static class UpdateByExampleParms extends TPrizeExample {
		private Object record;

		public UpdateByExampleParms(Object record, TPrizeExample example) {
			super(example);
			this.record = record;
		}

		public Object getRecord() {
			return record;
		}
	}

	/**新增返回主键
	 * @param record
	 * @return
	 */
	public Long insertReturnId(TPrize record) {
		return (Long) getSqlMapClientTemplate().insert("t_prize.insertSelective_returnId",
				record);
	}
}