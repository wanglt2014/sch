package com.et59.cus.domain.entity;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class THonorawardExample {

	/**
	 * This field was generated by Apache iBATIS ibator. This field corresponds to the database table t_honoraward
	 * @ibatorgenerated  Tue Jul 21 14:34:35 CST 2015
	 */
	protected String orderByClause;
	/**
	 * This field was generated by Apache iBATIS ibator. This field corresponds to the database table t_honoraward
	 * @ibatorgenerated  Tue Jul 21 14:34:35 CST 2015
	 */
	protected List oredCriteria;

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_honoraward
	 * @ibatorgenerated  Tue Jul 21 14:34:35 CST 2015
	 */
	public THonorawardExample() {
		oredCriteria = new ArrayList();
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_honoraward
	 * @ibatorgenerated  Tue Jul 21 14:34:35 CST 2015
	 */
	protected THonorawardExample(THonorawardExample example) {
		this.orderByClause = example.orderByClause;
		this.oredCriteria = example.oredCriteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_honoraward
	 * @ibatorgenerated  Tue Jul 21 14:34:35 CST 2015
	 */
	public void setOrderByClause(String orderByClause) {
		this.orderByClause = orderByClause;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_honoraward
	 * @ibatorgenerated  Tue Jul 21 14:34:35 CST 2015
	 */
	public String getOrderByClause() {
		return orderByClause;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_honoraward
	 * @ibatorgenerated  Tue Jul 21 14:34:35 CST 2015
	 */
	public List getOredCriteria() {
		return oredCriteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_honoraward
	 * @ibatorgenerated  Tue Jul 21 14:34:35 CST 2015
	 */
	public void or(Criteria criteria) {
		oredCriteria.add(criteria);
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_honoraward
	 * @ibatorgenerated  Tue Jul 21 14:34:35 CST 2015
	 */
	public Criteria createCriteria() {
		Criteria criteria = createCriteriaInternal();
		if (oredCriteria.size() == 0) {
			oredCriteria.add(criteria);
		}
		return criteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_honoraward
	 * @ibatorgenerated  Tue Jul 21 14:34:35 CST 2015
	 */
	protected Criteria createCriteriaInternal() {
		Criteria criteria = new Criteria();
		return criteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_honoraward
	 * @ibatorgenerated  Tue Jul 21 14:34:35 CST 2015
	 */
	public void clear() {
		oredCriteria.clear();
	}

	/**
	 * This class was generated by Apache iBATIS ibator. This class corresponds to the database table t_honoraward
	 * @ibatorgenerated  Tue Jul 21 14:34:35 CST 2015
	 */
	public static class Criteria {
		protected List criteriaWithoutValue;
		protected List criteriaWithSingleValue;
		protected List criteriaWithListValue;
		protected List criteriaWithBetweenValue;

		protected Criteria() {
			super();
			criteriaWithoutValue = new ArrayList();
			criteriaWithSingleValue = new ArrayList();
			criteriaWithListValue = new ArrayList();
			criteriaWithBetweenValue = new ArrayList();
		}

		public boolean isValid() {
			return criteriaWithoutValue.size() > 0
					|| criteriaWithSingleValue.size() > 0
					|| criteriaWithListValue.size() > 0
					|| criteriaWithBetweenValue.size() > 0;
		}

		public List getCriteriaWithoutValue() {
			return criteriaWithoutValue;
		}

		public List getCriteriaWithSingleValue() {
			return criteriaWithSingleValue;
		}

		public List getCriteriaWithListValue() {
			return criteriaWithListValue;
		}

		public List getCriteriaWithBetweenValue() {
			return criteriaWithBetweenValue;
		}

		protected void addCriterion(String condition) {
			if (condition == null) {
				throw new RuntimeException("Value for condition cannot be null");
			}
			criteriaWithoutValue.add(condition);
		}

		protected void addCriterion(String condition, Object value,
				String property) {
			if (value == null) {
				throw new RuntimeException("Value for " + property
						+ " cannot be null");
			}
			Map map = new HashMap();
			map.put("condition", condition);
			map.put("value", value);
			criteriaWithSingleValue.add(map);
		}

		protected void addCriterion(String condition, List values,
				String property) {
			if (values == null || values.size() == 0) {
				throw new RuntimeException("Value list for " + property
						+ " cannot be null or empty");
			}
			Map map = new HashMap();
			map.put("condition", condition);
			map.put("values", values);
			criteriaWithListValue.add(map);
		}

		protected void addCriterion(String condition, Object value1,
				Object value2, String property) {
			if (value1 == null || value2 == null) {
				throw new RuntimeException("Between values for " + property
						+ " cannot be null");
			}
			List list = new ArrayList();
			list.add(value1);
			list.add(value2);
			Map map = new HashMap();
			map.put("condition", condition);
			map.put("values", list);
			criteriaWithBetweenValue.add(map);
		}

		public Criteria andHonorawardidIsNull() {
			addCriterion("honorAwardId is null");
			return this;
		}

		public Criteria andHonorawardidIsNotNull() {
			addCriterion("honorAwardId is not null");
			return this;
		}

		public Criteria andHonorawardidEqualTo(Long value) {
			addCriterion("honorAwardId =", value, "honorawardid");
			return this;
		}

		public Criteria andHonorawardidNotEqualTo(Long value) {
			addCriterion("honorAwardId <>", value, "honorawardid");
			return this;
		}

		public Criteria andHonorawardidGreaterThan(Long value) {
			addCriterion("honorAwardId >", value, "honorawardid");
			return this;
		}

		public Criteria andHonorawardidGreaterThanOrEqualTo(Long value) {
			addCriterion("honorAwardId >=", value, "honorawardid");
			return this;
		}

		public Criteria andHonorawardidLessThan(Long value) {
			addCriterion("honorAwardId <", value, "honorawardid");
			return this;
		}

		public Criteria andHonorawardidLessThanOrEqualTo(Long value) {
			addCriterion("honorAwardId <=", value, "honorawardid");
			return this;
		}

		public Criteria andHonorawardidIn(List values) {
			addCriterion("honorAwardId in", values, "honorawardid");
			return this;
		}

		public Criteria andHonorawardidNotIn(List values) {
			addCriterion("honorAwardId not in", values, "honorawardid");
			return this;
		}

		public Criteria andHonorawardidBetween(Long value1, Long value2) {
			addCriterion("honorAwardId between", value1, value2, "honorawardid");
			return this;
		}

		public Criteria andHonorawardidNotBetween(Long value1, Long value2) {
			addCriterion("honorAwardId not between", value1, value2,
					"honorawardid");
			return this;
		}

		public Criteria andTeammemberIsNull() {
			addCriterion("teamMember is null");
			return this;
		}

		public Criteria andTeammemberIsNotNull() {
			addCriterion("teamMember is not null");
			return this;
		}

		public Criteria andTeammemberEqualTo(String value) {
			addCriterion("teamMember =", value, "teammember");
			return this;
		}

		public Criteria andTeammemberNotEqualTo(String value) {
			addCriterion("teamMember <>", value, "teammember");
			return this;
		}

		public Criteria andTeammemberGreaterThan(String value) {
			addCriterion("teamMember >", value, "teammember");
			return this;
		}

		public Criteria andTeammemberGreaterThanOrEqualTo(String value) {
			addCriterion("teamMember >=", value, "teammember");
			return this;
		}

		public Criteria andTeammemberLessThan(String value) {
			addCriterion("teamMember <", value, "teammember");
			return this;
		}

		public Criteria andTeammemberLessThanOrEqualTo(String value) {
			addCriterion("teamMember <=", value, "teammember");
			return this;
		}

		public Criteria andTeammemberLike(String value) {
			addCriterion("teamMember like", value, "teammember");
			return this;
		}

		public Criteria andTeammemberNotLike(String value) {
			addCriterion("teamMember not like", value, "teammember");
			return this;
		}

		public Criteria andTeammemberIn(List values) {
			addCriterion("teamMember in", values, "teammember");
			return this;
		}

		public Criteria andTeammemberNotIn(List values) {
			addCriterion("teamMember not in", values, "teammember");
			return this;
		}

		public Criteria andTeammemberBetween(String value1, String value2) {
			addCriterion("teamMember between", value1, value2, "teammember");
			return this;
		}

		public Criteria andTeammemberNotBetween(String value1, String value2) {
			addCriterion("teamMember not between", value1, value2, "teammember");
			return this;
		}

		public Criteria andHonortypeIsNull() {
			addCriterion("honorType is null");
			return this;
		}

		public Criteria andHonortypeIsNotNull() {
			addCriterion("honorType is not null");
			return this;
		}

		public Criteria andHonortypeEqualTo(String value) {
			addCriterion("honorType =", value, "honortype");
			return this;
		}

		public Criteria andHonortypeNotEqualTo(String value) {
			addCriterion("honorType <>", value, "honortype");
			return this;
		}

		public Criteria andHonortypeGreaterThan(String value) {
			addCriterion("honorType >", value, "honortype");
			return this;
		}

		public Criteria andHonortypeGreaterThanOrEqualTo(String value) {
			addCriterion("honorType >=", value, "honortype");
			return this;
		}

		public Criteria andHonortypeLessThan(String value) {
			addCriterion("honorType <", value, "honortype");
			return this;
		}

		public Criteria andHonortypeLessThanOrEqualTo(String value) {
			addCriterion("honorType <=", value, "honortype");
			return this;
		}

		public Criteria andHonortypeLike(String value) {
			addCriterion("honorType like", value, "honortype");
			return this;
		}

		public Criteria andHonortypeNotLike(String value) {
			addCriterion("honorType not like", value, "honortype");
			return this;
		}

		public Criteria andHonortypeIn(List values) {
			addCriterion("honorType in", values, "honortype");
			return this;
		}

		public Criteria andHonortypeNotIn(List values) {
			addCriterion("honorType not in", values, "honortype");
			return this;
		}

		public Criteria andHonortypeBetween(String value1, String value2) {
			addCriterion("honorType between", value1, value2, "honortype");
			return this;
		}

		public Criteria andHonortypeNotBetween(String value1, String value2) {
			addCriterion("honorType not between", value1, value2, "honortype");
			return this;
		}

		public Criteria andGrantorgIsNull() {
			addCriterion("grantOrg is null");
			return this;
		}

		public Criteria andGrantorgIsNotNull() {
			addCriterion("grantOrg is not null");
			return this;
		}

		public Criteria andGrantorgEqualTo(String value) {
			addCriterion("grantOrg =", value, "grantorg");
			return this;
		}

		public Criteria andGrantorgNotEqualTo(String value) {
			addCriterion("grantOrg <>", value, "grantorg");
			return this;
		}

		public Criteria andGrantorgGreaterThan(String value) {
			addCriterion("grantOrg >", value, "grantorg");
			return this;
		}

		public Criteria andGrantorgGreaterThanOrEqualTo(String value) {
			addCriterion("grantOrg >=", value, "grantorg");
			return this;
		}

		public Criteria andGrantorgLessThan(String value) {
			addCriterion("grantOrg <", value, "grantorg");
			return this;
		}

		public Criteria andGrantorgLessThanOrEqualTo(String value) {
			addCriterion("grantOrg <=", value, "grantorg");
			return this;
		}

		public Criteria andGrantorgLike(String value) {
			addCriterion("grantOrg like", value, "grantorg");
			return this;
		}

		public Criteria andGrantorgNotLike(String value) {
			addCriterion("grantOrg not like", value, "grantorg");
			return this;
		}

		public Criteria andGrantorgIn(List values) {
			addCriterion("grantOrg in", values, "grantorg");
			return this;
		}

		public Criteria andGrantorgNotIn(List values) {
			addCriterion("grantOrg not in", values, "grantorg");
			return this;
		}

		public Criteria andGrantorgBetween(String value1, String value2) {
			addCriterion("grantOrg between", value1, value2, "grantorg");
			return this;
		}

		public Criteria andGrantorgNotBetween(String value1, String value2) {
			addCriterion("grantOrg not between", value1, value2, "grantorg");
			return this;
		}

		public Criteria andGranttimeIsNull() {
			addCriterion("grantTime is null");
			return this;
		}

		public Criteria andGranttimeIsNotNull() {
			addCriterion("grantTime is not null");
			return this;
		}

		public Criteria andGranttimeEqualTo(String value) {
			addCriterion("grantTime =", value, "granttime");
			return this;
		}

		public Criteria andGranttimeNotEqualTo(String value) {
			addCriterion("grantTime <>", value, "granttime");
			return this;
		}

		public Criteria andGranttimeGreaterThan(String value) {
			addCriterion("grantTime >", value, "granttime");
			return this;
		}

		public Criteria andGranttimeGreaterThanOrEqualTo(String value) {
			addCriterion("grantTime >=", value, "granttime");
			return this;
		}

		public Criteria andGranttimeLessThan(String value) {
			addCriterion("grantTime <", value, "granttime");
			return this;
		}

		public Criteria andGranttimeLessThanOrEqualTo(String value) {
			addCriterion("grantTime <=", value, "granttime");
			return this;
		}

		public Criteria andGranttimeLike(String value) {
			addCriterion("grantTime like", value, "granttime");
			return this;
		}

		public Criteria andGranttimeNotLike(String value) {
			addCriterion("grantTime not like", value, "granttime");
			return this;
		}

		public Criteria andGranttimeIn(List values) {
			addCriterion("grantTime in", values, "granttime");
			return this;
		}

		public Criteria andGranttimeNotIn(List values) {
			addCriterion("grantTime not in", values, "granttime");
			return this;
		}

		public Criteria andGranttimeBetween(String value1, String value2) {
			addCriterion("grantTime between", value1, value2, "granttime");
			return this;
		}

		public Criteria andGranttimeNotBetween(String value1, String value2) {
			addCriterion("grantTime not between", value1, value2, "granttime");
			return this;
		}

		public Criteria andTeachernamesIsNull() {
			addCriterion("teacherNames is null");
			return this;
		}

		public Criteria andTeachernamesIsNotNull() {
			addCriterion("teacherNames is not null");
			return this;
		}

		public Criteria andTeachernamesEqualTo(String value) {
			addCriterion("teacherNames =", value, "teachernames");
			return this;
		}

		public Criteria andTeachernamesNotEqualTo(String value) {
			addCriterion("teacherNames <>", value, "teachernames");
			return this;
		}

		public Criteria andTeachernamesGreaterThan(String value) {
			addCriterion("teacherNames >", value, "teachernames");
			return this;
		}

		public Criteria andTeachernamesGreaterThanOrEqualTo(String value) {
			addCriterion("teacherNames >=", value, "teachernames");
			return this;
		}

		public Criteria andTeachernamesLessThan(String value) {
			addCriterion("teacherNames <", value, "teachernames");
			return this;
		}

		public Criteria andTeachernamesLessThanOrEqualTo(String value) {
			addCriterion("teacherNames <=", value, "teachernames");
			return this;
		}

		public Criteria andTeachernamesLike(String value) {
			addCriterion("teacherNames like", value, "teachernames");
			return this;
		}

		public Criteria andTeachernamesNotLike(String value) {
			addCriterion("teacherNames not like", value, "teachernames");
			return this;
		}

		public Criteria andTeachernamesIn(List values) {
			addCriterion("teacherNames in", values, "teachernames");
			return this;
		}

		public Criteria andTeachernamesNotIn(List values) {
			addCriterion("teacherNames not in", values, "teachernames");
			return this;
		}

		public Criteria andTeachernamesBetween(String value1, String value2) {
			addCriterion("teacherNames between", value1, value2, "teachernames");
			return this;
		}

		public Criteria andTeachernamesNotBetween(String value1, String value2) {
			addCriterion("teacherNames not between", value1, value2,
					"teachernames");
			return this;
		}

		public Criteria andRemarkIsNull() {
			addCriterion("remark is null");
			return this;
		}

		public Criteria andRemarkIsNotNull() {
			addCriterion("remark is not null");
			return this;
		}

		public Criteria andRemarkEqualTo(String value) {
			addCriterion("remark =", value, "remark");
			return this;
		}

		public Criteria andRemarkNotEqualTo(String value) {
			addCriterion("remark <>", value, "remark");
			return this;
		}

		public Criteria andRemarkGreaterThan(String value) {
			addCriterion("remark >", value, "remark");
			return this;
		}

		public Criteria andRemarkGreaterThanOrEqualTo(String value) {
			addCriterion("remark >=", value, "remark");
			return this;
		}

		public Criteria andRemarkLessThan(String value) {
			addCriterion("remark <", value, "remark");
			return this;
		}

		public Criteria andRemarkLessThanOrEqualTo(String value) {
			addCriterion("remark <=", value, "remark");
			return this;
		}

		public Criteria andRemarkLike(String value) {
			addCriterion("remark like", value, "remark");
			return this;
		}

		public Criteria andRemarkNotLike(String value) {
			addCriterion("remark not like", value, "remark");
			return this;
		}

		public Criteria andRemarkIn(List values) {
			addCriterion("remark in", values, "remark");
			return this;
		}

		public Criteria andRemarkNotIn(List values) {
			addCriterion("remark not in", values, "remark");
			return this;
		}

		public Criteria andRemarkBetween(String value1, String value2) {
			addCriterion("remark between", value1, value2, "remark");
			return this;
		}

		public Criteria andRemarkNotBetween(String value1, String value2) {
			addCriterion("remark not between", value1, value2, "remark");
			return this;
		}

		public Criteria andHonornameIsNull() {
			addCriterion("honorName is null");
			return this;
		}

		public Criteria andHonornameIsNotNull() {
			addCriterion("honorName is not null");
			return this;
		}

		public Criteria andHonornameEqualTo(String value) {
			addCriterion("honorName =", value, "honorname");
			return this;
		}

		public Criteria andHonornameNotEqualTo(String value) {
			addCriterion("honorName <>", value, "honorname");
			return this;
		}

		public Criteria andHonornameGreaterThan(String value) {
			addCriterion("honorName >", value, "honorname");
			return this;
		}

		public Criteria andHonornameGreaterThanOrEqualTo(String value) {
			addCriterion("honorName >=", value, "honorname");
			return this;
		}

		public Criteria andHonornameLessThan(String value) {
			addCriterion("honorName <", value, "honorname");
			return this;
		}

		public Criteria andHonornameLessThanOrEqualTo(String value) {
			addCriterion("honorName <=", value, "honorname");
			return this;
		}

		public Criteria andHonornameLike(String value) {
			addCriterion("honorName like", value, "honorname");
			return this;
		}

		public Criteria andHonornameNotLike(String value) {
			addCriterion("honorName not like", value, "honorname");
			return this;
		}

		public Criteria andHonornameIn(List values) {
			addCriterion("honorName in", values, "honorname");
			return this;
		}

		public Criteria andHonornameNotIn(List values) {
			addCriterion("honorName not in", values, "honorname");
			return this;
		}

		public Criteria andHonornameBetween(String value1, String value2) {
			addCriterion("honorName between", value1, value2, "honorname");
			return this;
		}

		public Criteria andHonornameNotBetween(String value1, String value2) {
			addCriterion("honorName not between", value1, value2, "honorname");
			return this;
		}
	}
}