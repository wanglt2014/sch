package com.et59.cus.domain.dao;

import com.et59.cus.domain.entity.TjActiontime;
import com.et59.cus.domain.entity.TjActiontimeExample;
import java.util.List;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

public class TjActiontimeDAOImpl extends SqlMapClientDaoSupport implements TjActiontimeDAO {

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table tj_actiontime
	 * @abatorgenerated
	 */
	public TjActiontimeDAOImpl() {
		super();
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table tj_actiontime
	 * @abatorgenerated
	 */
	public void insert(TjActiontime record) {
		getSqlMapClientTemplate().insert(
				"tj_actiontime.abatorgenerated_insert", record);
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table tj_actiontime
	 * @abatorgenerated
	 */
	public int updateByPrimaryKey(TjActiontime record) {
		int rows = getSqlMapClientTemplate().update(
				"tj_actiontime.abatorgenerated_updateByPrimaryKey", record);
		return rows;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table tj_actiontime
	 * @abatorgenerated
	 */
	public int updateByPrimaryKeySelective(TjActiontime record) {
		int rows = getSqlMapClientTemplate().update(
				"tj_actiontime.abatorgenerated_updateByPrimaryKeySelective",
				record);
		return rows;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table tj_actiontime
	 * @abatorgenerated
	 */
	@SuppressWarnings("unchecked")
	public List<TjActiontime> selectByExample(TjActiontimeExample example) {
		List<TjActiontime> list = (List<TjActiontime>) getSqlMapClientTemplate()
				.queryForList("tj_actiontime.abatorgenerated_selectByExample",
						example);
		return list;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table tj_actiontime
	 * @abatorgenerated
	 */
	public TjActiontime selectByPrimaryKey(Long id) {
		TjActiontime key = new TjActiontime();
		key.setId(id);
		TjActiontime record = (TjActiontime) getSqlMapClientTemplate()
				.queryForObject(
						"tj_actiontime.abatorgenerated_selectByPrimaryKey", key);
		return record;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table tj_actiontime
	 * @abatorgenerated
	 */
	public int deleteByExample(TjActiontimeExample example) {
		int rows = getSqlMapClientTemplate().delete(
				"tj_actiontime.abatorgenerated_deleteByExample", example);
		return rows;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table tj_actiontime
	 * @abatorgenerated
	 */
	public int deleteByPrimaryKey(Long id) {
		TjActiontime key = new TjActiontime();
		key.setId(id);
		int rows = getSqlMapClientTemplate().delete(
				"tj_actiontime.abatorgenerated_deleteByPrimaryKey", key);
		return rows;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table tj_actiontime
	 * @abatorgenerated
	 */
	public int countByExample(TjActiontimeExample example) {
		Integer count = (Integer) getSqlMapClientTemplate().queryForObject(
				"tj_actiontime.abatorgenerated_countByExample", example);
		return count;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table tj_actiontime
	 * @abatorgenerated
	 */
	public int updateByExampleSelective(TjActiontime record,
			TjActiontimeExample example) {
		UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
		int rows = getSqlMapClientTemplate()
				.update("tj_actiontime.abatorgenerated_updateByExampleSelective",
						parms);
		return rows;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table tj_actiontime
	 * @abatorgenerated
	 */
	public int updateByExample(TjActiontime record, TjActiontimeExample example) {
		UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
		int rows = getSqlMapClientTemplate().update(
				"tj_actiontime.abatorgenerated_updateByExample", parms);
		return rows;
	}

	/**
	 * This class was generated by Abator for iBATIS. This class corresponds to the database table tj_actiontime
	 * @abatorgenerated
	 */
	private static class UpdateByExampleParms extends TjActiontimeExample {
		private Object record;

		public UpdateByExampleParms(Object record, TjActiontimeExample example) {
			super(example);
			this.record = record;
		}

		public Object getRecord() {
			return record;
		}
	}
}