package com.et59.cus.domain.dao;

import com.et59.cus.domain.entity.BsMarking;
import com.et59.cus.domain.entity.BsMarkingExample;
import java.util.List;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

public class BsMarkingDAOImpl extends SqlMapClientDaoSupport implements BsMarkingDAO {

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_marking
	 * @abatorgenerated
	 */
	public BsMarkingDAOImpl() {
		super();
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_marking
	 * @abatorgenerated
	 */
	public void insert(BsMarking record) {
		getSqlMapClientTemplate().insert("bs_marking.abatorgenerated_insert",
				record);
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_marking
	 * @abatorgenerated
	 */
	public int updateByPrimaryKey(BsMarking record) {
		int rows = getSqlMapClientTemplate().update(
				"bs_marking.abatorgenerated_updateByPrimaryKey", record);
		return rows;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_marking
	 * @abatorgenerated
	 */
	public int updateByPrimaryKeySelective(BsMarking record) {
		int rows = getSqlMapClientTemplate().update(
				"bs_marking.abatorgenerated_updateByPrimaryKeySelective",
				record);
		return rows;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_marking
	 * @abatorgenerated
	 */
	@SuppressWarnings("unchecked")
	public List<BsMarking> selectByExample(BsMarkingExample example) {
		List<BsMarking> list = (List<BsMarking>) getSqlMapClientTemplate()
				.queryForList("bs_marking.abatorgenerated_selectByExample",
						example);
		return list;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_marking
	 * @abatorgenerated
	 */
	public BsMarking selectByPrimaryKey(Integer id) {
		BsMarking key = new BsMarking();
		key.setId(id);
		BsMarking record = (BsMarking) getSqlMapClientTemplate()
				.queryForObject(
						"bs_marking.abatorgenerated_selectByPrimaryKey", key);
		return record;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_marking
	 * @abatorgenerated
	 */
	public int deleteByExample(BsMarkingExample example) {
		int rows = getSqlMapClientTemplate().delete(
				"bs_marking.abatorgenerated_deleteByExample", example);
		return rows;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_marking
	 * @abatorgenerated
	 */
	public int deleteByPrimaryKey(Integer id) {
		BsMarking key = new BsMarking();
		key.setId(id);
		int rows = getSqlMapClientTemplate().delete(
				"bs_marking.abatorgenerated_deleteByPrimaryKey", key);
		return rows;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_marking
	 * @abatorgenerated
	 */
	public int countByExample(BsMarkingExample example) {
		Integer count = (Integer) getSqlMapClientTemplate().queryForObject(
				"bs_marking.abatorgenerated_countByExample", example);
		return count;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_marking
	 * @abatorgenerated
	 */
	public int updateByExampleSelective(BsMarking record,
			BsMarkingExample example) {
		UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
		int rows = getSqlMapClientTemplate().update(
				"bs_marking.abatorgenerated_updateByExampleSelective", parms);
		return rows;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_marking
	 * @abatorgenerated
	 */
	public int updateByExample(BsMarking record, BsMarkingExample example) {
		UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
		int rows = getSqlMapClientTemplate().update(
				"bs_marking.abatorgenerated_updateByExample", parms);
		return rows;
	}

	/**
	 * This class was generated by Abator for iBATIS. This class corresponds to the database table bs_marking
	 * @abatorgenerated
	 */
	private static class UpdateByExampleParms extends BsMarkingExample {
		private Object record;

		public UpdateByExampleParms(Object record, BsMarkingExample example) {
			super(example);
			this.record = record;
		}

		public Object getRecord() {
			return record;
		}
	}
}