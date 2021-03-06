package com.et59.cus.domain.entity;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TAtttrainExample {

	/**
	 * This field was generated by Apache iBATIS ibator. This field corresponds to the database table t_atttrain
	 * @ibatorgenerated  Fri Jul 17 17:56:36 CST 2015
	 */
	protected String orderByClause;
	/**
	 * This field was generated by Apache iBATIS ibator. This field corresponds to the database table t_atttrain
	 * @ibatorgenerated  Fri Jul 17 17:56:36 CST 2015
	 */
	protected List oredCriteria;

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_atttrain
	 * @ibatorgenerated  Fri Jul 17 17:56:36 CST 2015
	 */
	public TAtttrainExample() {
		oredCriteria = new ArrayList();
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_atttrain
	 * @ibatorgenerated  Fri Jul 17 17:56:36 CST 2015
	 */
	protected TAtttrainExample(TAtttrainExample example) {
		this.orderByClause = example.orderByClause;
		this.oredCriteria = example.oredCriteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_atttrain
	 * @ibatorgenerated  Fri Jul 17 17:56:36 CST 2015
	 */
	public void setOrderByClause(String orderByClause) {
		this.orderByClause = orderByClause;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_atttrain
	 * @ibatorgenerated  Fri Jul 17 17:56:36 CST 2015
	 */
	public String getOrderByClause() {
		return orderByClause;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_atttrain
	 * @ibatorgenerated  Fri Jul 17 17:56:36 CST 2015
	 */
	public List getOredCriteria() {
		return oredCriteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_atttrain
	 * @ibatorgenerated  Fri Jul 17 17:56:36 CST 2015
	 */
	public void or(Criteria criteria) {
		oredCriteria.add(criteria);
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_atttrain
	 * @ibatorgenerated  Fri Jul 17 17:56:36 CST 2015
	 */
	public Criteria createCriteria() {
		Criteria criteria = createCriteriaInternal();
		if (oredCriteria.size() == 0) {
			oredCriteria.add(criteria);
		}
		return criteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_atttrain
	 * @ibatorgenerated  Fri Jul 17 17:56:36 CST 2015
	 */
	protected Criteria createCriteriaInternal() {
		Criteria criteria = new Criteria();
		return criteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_atttrain
	 * @ibatorgenerated  Fri Jul 17 17:56:36 CST 2015
	 */
	public void clear() {
		oredCriteria.clear();
	}

	/**
	 * This class was generated by Apache iBATIS ibator. This class corresponds to the database table t_atttrain
	 * @ibatorgenerated  Fri Jul 17 17:56:36 CST 2015
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

		public Criteria andAtttrainidIsNull() {
			addCriterion("attTrainId is null");
			return this;
		}

		public Criteria andAtttrainidIsNotNull() {
			addCriterion("attTrainId is not null");
			return this;
		}

		public Criteria andAtttrainidEqualTo(Long value) {
			addCriterion("attTrainId =", value, "atttrainid");
			return this;
		}

		public Criteria andAtttrainidNotEqualTo(Long value) {
			addCriterion("attTrainId <>", value, "atttrainid");
			return this;
		}

		public Criteria andAtttrainidGreaterThan(Long value) {
			addCriterion("attTrainId >", value, "atttrainid");
			return this;
		}

		public Criteria andAtttrainidGreaterThanOrEqualTo(Long value) {
			addCriterion("attTrainId >=", value, "atttrainid");
			return this;
		}

		public Criteria andAtttrainidLessThan(Long value) {
			addCriterion("attTrainId <", value, "atttrainid");
			return this;
		}

		public Criteria andAtttrainidLessThanOrEqualTo(Long value) {
			addCriterion("attTrainId <=", value, "atttrainid");
			return this;
		}

		public Criteria andAtttrainidIn(List values) {
			addCriterion("attTrainId in", values, "atttrainid");
			return this;
		}

		public Criteria andAtttrainidNotIn(List values) {
			addCriterion("attTrainId not in", values, "atttrainid");
			return this;
		}

		public Criteria andAtttrainidBetween(Long value1, Long value2) {
			addCriterion("attTrainId between", value1, value2, "atttrainid");
			return this;
		}

		public Criteria andAtttrainidNotBetween(Long value1, Long value2) {
			addCriterion("attTrainId not between", value1, value2, "atttrainid");
			return this;
		}

		public Criteria andAttnameIsNull() {
			addCriterion("attName is null");
			return this;
		}

		public Criteria andAttnameIsNotNull() {
			addCriterion("attName is not null");
			return this;
		}

		public Criteria andAttnameEqualTo(String value) {
			addCriterion("attName =", value, "attname");
			return this;
		}

		public Criteria andAttnameNotEqualTo(String value) {
			addCriterion("attName <>", value, "attname");
			return this;
		}

		public Criteria andAttnameGreaterThan(String value) {
			addCriterion("attName >", value, "attname");
			return this;
		}

		public Criteria andAttnameGreaterThanOrEqualTo(String value) {
			addCriterion("attName >=", value, "attname");
			return this;
		}

		public Criteria andAttnameLessThan(String value) {
			addCriterion("attName <", value, "attname");
			return this;
		}

		public Criteria andAttnameLessThanOrEqualTo(String value) {
			addCriterion("attName <=", value, "attname");
			return this;
		}

		public Criteria andAttnameLike(String value) {
			addCriterion("attName like", value, "attname");
			return this;
		}

		public Criteria andAttnameNotLike(String value) {
			addCriterion("attName not like", value, "attname");
			return this;
		}

		public Criteria andAttnameIn(List values) {
			addCriterion("attName in", values, "attname");
			return this;
		}

		public Criteria andAttnameNotIn(List values) {
			addCriterion("attName not in", values, "attname");
			return this;
		}

		public Criteria andAttnameBetween(String value1, String value2) {
			addCriterion("attName between", value1, value2, "attname");
			return this;
		}

		public Criteria andAttnameNotBetween(String value1, String value2) {
			addCriterion("attName not between", value1, value2, "attname");
			return this;
		}

		public Criteria andAttteachernameIsNull() {
			addCriterion("attTeacherName is null");
			return this;
		}

		public Criteria andAttteachernameIsNotNull() {
			addCriterion("attTeacherName is not null");
			return this;
		}

		public Criteria andAttteachernameEqualTo(String value) {
			addCriterion("attTeacherName =", value, "attteachername");
			return this;
		}

		public Criteria andAttteachernameNotEqualTo(String value) {
			addCriterion("attTeacherName <>", value, "attteachername");
			return this;
		}

		public Criteria andAttteachernameGreaterThan(String value) {
			addCriterion("attTeacherName >", value, "attteachername");
			return this;
		}

		public Criteria andAttteachernameGreaterThanOrEqualTo(String value) {
			addCriterion("attTeacherName >=", value, "attteachername");
			return this;
		}

		public Criteria andAttteachernameLessThan(String value) {
			addCriterion("attTeacherName <", value, "attteachername");
			return this;
		}

		public Criteria andAttteachernameLessThanOrEqualTo(String value) {
			addCriterion("attTeacherName <=", value, "attteachername");
			return this;
		}

		public Criteria andAttteachernameLike(String value) {
			addCriterion("attTeacherName like", value, "attteachername");
			return this;
		}

		public Criteria andAttteachernameNotLike(String value) {
			addCriterion("attTeacherName not like", value, "attteachername");
			return this;
		}

		public Criteria andAttteachernameIn(List values) {
			addCriterion("attTeacherName in", values, "attteachername");
			return this;
		}

		public Criteria andAttteachernameNotIn(List values) {
			addCriterion("attTeacherName not in", values, "attteachername");
			return this;
		}

		public Criteria andAttteachernameBetween(String value1, String value2) {
			addCriterion("attTeacherName between", value1, value2,
					"attteachername");
			return this;
		}

		public Criteria andAttteachernameNotBetween(String value1, String value2) {
			addCriterion("attTeacherName not between", value1, value2,
					"attteachername");
			return this;
		}

		public Criteria andAtttypeIsNull() {
			addCriterion("attType is null");
			return this;
		}

		public Criteria andAtttypeIsNotNull() {
			addCriterion("attType is not null");
			return this;
		}

		public Criteria andAtttypeEqualTo(String value) {
			addCriterion("attType =", value, "atttype");
			return this;
		}

		public Criteria andAtttypeNotEqualTo(String value) {
			addCriterion("attType <>", value, "atttype");
			return this;
		}

		public Criteria andAtttypeGreaterThan(String value) {
			addCriterion("attType >", value, "atttype");
			return this;
		}

		public Criteria andAtttypeGreaterThanOrEqualTo(String value) {
			addCriterion("attType >=", value, "atttype");
			return this;
		}

		public Criteria andAtttypeLessThan(String value) {
			addCriterion("attType <", value, "atttype");
			return this;
		}

		public Criteria andAtttypeLessThanOrEqualTo(String value) {
			addCriterion("attType <=", value, "atttype");
			return this;
		}

		public Criteria andAtttypeLike(String value) {
			addCriterion("attType like", value, "atttype");
			return this;
		}

		public Criteria andAtttypeNotLike(String value) {
			addCriterion("attType not like", value, "atttype");
			return this;
		}

		public Criteria andAtttypeIn(List values) {
			addCriterion("attType in", values, "atttype");
			return this;
		}

		public Criteria andAtttypeNotIn(List values) {
			addCriterion("attType not in", values, "atttype");
			return this;
		}

		public Criteria andAtttypeBetween(String value1, String value2) {
			addCriterion("attType between", value1, value2, "atttype");
			return this;
		}

		public Criteria andAtttypeNotBetween(String value1, String value2) {
			addCriterion("attType not between", value1, value2, "atttype");
			return this;
		}

		public Criteria andAtthostIsNull() {
			addCriterion("attHost is null");
			return this;
		}

		public Criteria andAtthostIsNotNull() {
			addCriterion("attHost is not null");
			return this;
		}

		public Criteria andAtthostEqualTo(String value) {
			addCriterion("attHost =", value, "atthost");
			return this;
		}

		public Criteria andAtthostNotEqualTo(String value) {
			addCriterion("attHost <>", value, "atthost");
			return this;
		}

		public Criteria andAtthostGreaterThan(String value) {
			addCriterion("attHost >", value, "atthost");
			return this;
		}

		public Criteria andAtthostGreaterThanOrEqualTo(String value) {
			addCriterion("attHost >=", value, "atthost");
			return this;
		}

		public Criteria andAtthostLessThan(String value) {
			addCriterion("attHost <", value, "atthost");
			return this;
		}

		public Criteria andAtthostLessThanOrEqualTo(String value) {
			addCriterion("attHost <=", value, "atthost");
			return this;
		}

		public Criteria andAtthostLike(String value) {
			addCriterion("attHost like", value, "atthost");
			return this;
		}

		public Criteria andAtthostNotLike(String value) {
			addCriterion("attHost not like", value, "atthost");
			return this;
		}

		public Criteria andAtthostIn(List values) {
			addCriterion("attHost in", values, "atthost");
			return this;
		}

		public Criteria andAtthostNotIn(List values) {
			addCriterion("attHost not in", values, "atthost");
			return this;
		}

		public Criteria andAtthostBetween(String value1, String value2) {
			addCriterion("attHost between", value1, value2, "atthost");
			return this;
		}

		public Criteria andAtthostNotBetween(String value1, String value2) {
			addCriterion("attHost not between", value1, value2, "atthost");
			return this;
		}

		public Criteria andAtttrainbegintimeIsNull() {
			addCriterion("attTrainBeginTime is null");
			return this;
		}

		public Criteria andAtttrainbegintimeIsNotNull() {
			addCriterion("attTrainBeginTime is not null");
			return this;
		}

		public Criteria andAtttrainbegintimeEqualTo(String value) {
			addCriterion("attTrainBeginTime =", value, "atttrainbegintime");
			return this;
		}

		public Criteria andAtttrainbegintimeNotEqualTo(String value) {
			addCriterion("attTrainBeginTime <>", value, "atttrainbegintime");
			return this;
		}

		public Criteria andAtttrainbegintimeGreaterThan(String value) {
			addCriterion("attTrainBeginTime >", value, "atttrainbegintime");
			return this;
		}

		public Criteria andAtttrainbegintimeGreaterThanOrEqualTo(String value) {
			addCriterion("attTrainBeginTime >=", value, "atttrainbegintime");
			return this;
		}

		public Criteria andAtttrainbegintimeLessThan(String value) {
			addCriterion("attTrainBeginTime <", value, "atttrainbegintime");
			return this;
		}

		public Criteria andAtttrainbegintimeLessThanOrEqualTo(String value) {
			addCriterion("attTrainBeginTime <=", value, "atttrainbegintime");
			return this;
		}

		public Criteria andAtttrainbegintimeLike(String value) {
			addCriterion("attTrainBeginTime like", value, "atttrainbegintime");
			return this;
		}

		public Criteria andAtttrainbegintimeNotLike(String value) {
			addCriterion("attTrainBeginTime not like", value,
					"atttrainbegintime");
			return this;
		}

		public Criteria andAtttrainbegintimeIn(List values) {
			addCriterion("attTrainBeginTime in", values, "atttrainbegintime");
			return this;
		}

		public Criteria andAtttrainbegintimeNotIn(List values) {
			addCriterion("attTrainBeginTime not in", values,
					"atttrainbegintime");
			return this;
		}

		public Criteria andAtttrainbegintimeBetween(String value1, String value2) {
			addCriterion("attTrainBeginTime between", value1, value2,
					"atttrainbegintime");
			return this;
		}

		public Criteria andAtttrainbegintimeNotBetween(String value1,
				String value2) {
			addCriterion("attTrainBeginTime not between", value1, value2,
					"atttrainbegintime");
			return this;
		}

		public Criteria andAtttrainendtimeIsNull() {
			addCriterion("attTrainEndTime is null");
			return this;
		}

		public Criteria andAtttrainendtimeIsNotNull() {
			addCriterion("attTrainEndTime is not null");
			return this;
		}

		public Criteria andAtttrainendtimeEqualTo(String value) {
			addCriterion("attTrainEndTime =", value, "atttrainendtime");
			return this;
		}

		public Criteria andAtttrainendtimeNotEqualTo(String value) {
			addCriterion("attTrainEndTime <>", value, "atttrainendtime");
			return this;
		}

		public Criteria andAtttrainendtimeGreaterThan(String value) {
			addCriterion("attTrainEndTime >", value, "atttrainendtime");
			return this;
		}

		public Criteria andAtttrainendtimeGreaterThanOrEqualTo(String value) {
			addCriterion("attTrainEndTime >=", value, "atttrainendtime");
			return this;
		}

		public Criteria andAtttrainendtimeLessThan(String value) {
			addCriterion("attTrainEndTime <", value, "atttrainendtime");
			return this;
		}

		public Criteria andAtttrainendtimeLessThanOrEqualTo(String value) {
			addCriterion("attTrainEndTime <=", value, "atttrainendtime");
			return this;
		}

		public Criteria andAtttrainendtimeLike(String value) {
			addCriterion("attTrainEndTime like", value, "atttrainendtime");
			return this;
		}

		public Criteria andAtttrainendtimeNotLike(String value) {
			addCriterion("attTrainEndTime not like", value, "atttrainendtime");
			return this;
		}

		public Criteria andAtttrainendtimeIn(List values) {
			addCriterion("attTrainEndTime in", values, "atttrainendtime");
			return this;
		}

		public Criteria andAtttrainendtimeNotIn(List values) {
			addCriterion("attTrainEndTime not in", values, "atttrainendtime");
			return this;
		}

		public Criteria andAtttrainendtimeBetween(String value1, String value2) {
			addCriterion("attTrainEndTime between", value1, value2,
					"atttrainendtime");
			return this;
		}

		public Criteria andAtttrainendtimeNotBetween(String value1,
				String value2) {
			addCriterion("attTrainEndTime not between", value1, value2,
					"atttrainendtime");
			return this;
		}

		public Criteria andAtttrainplaceIsNull() {
			addCriterion("attTrainPlace is null");
			return this;
		}

		public Criteria andAtttrainplaceIsNotNull() {
			addCriterion("attTrainPlace is not null");
			return this;
		}

		public Criteria andAtttrainplaceEqualTo(String value) {
			addCriterion("attTrainPlace =", value, "atttrainplace");
			return this;
		}

		public Criteria andAtttrainplaceNotEqualTo(String value) {
			addCriterion("attTrainPlace <>", value, "atttrainplace");
			return this;
		}

		public Criteria andAtttrainplaceGreaterThan(String value) {
			addCriterion("attTrainPlace >", value, "atttrainplace");
			return this;
		}

		public Criteria andAtttrainplaceGreaterThanOrEqualTo(String value) {
			addCriterion("attTrainPlace >=", value, "atttrainplace");
			return this;
		}

		public Criteria andAtttrainplaceLessThan(String value) {
			addCriterion("attTrainPlace <", value, "atttrainplace");
			return this;
		}

		public Criteria andAtttrainplaceLessThanOrEqualTo(String value) {
			addCriterion("attTrainPlace <=", value, "atttrainplace");
			return this;
		}

		public Criteria andAtttrainplaceLike(String value) {
			addCriterion("attTrainPlace like", value, "atttrainplace");
			return this;
		}

		public Criteria andAtttrainplaceNotLike(String value) {
			addCriterion("attTrainPlace not like", value, "atttrainplace");
			return this;
		}

		public Criteria andAtttrainplaceIn(List values) {
			addCriterion("attTrainPlace in", values, "atttrainplace");
			return this;
		}

		public Criteria andAtttrainplaceNotIn(List values) {
			addCriterion("attTrainPlace not in", values, "atttrainplace");
			return this;
		}

		public Criteria andAtttrainplaceBetween(String value1, String value2) {
			addCriterion("attTrainPlace between", value1, value2,
					"atttrainplace");
			return this;
		}

		public Criteria andAtttrainplaceNotBetween(String value1, String value2) {
			addCriterion("attTrainPlace not between", value1, value2,
					"atttrainplace");
			return this;
		}

		public Criteria andAtttrainresultIsNull() {
			addCriterion("attTrainResult is null");
			return this;
		}

		public Criteria andAtttrainresultIsNotNull() {
			addCriterion("attTrainResult is not null");
			return this;
		}

		public Criteria andAtttrainresultEqualTo(String value) {
			addCriterion("attTrainResult =", value, "atttrainresult");
			return this;
		}

		public Criteria andAtttrainresultNotEqualTo(String value) {
			addCriterion("attTrainResult <>", value, "atttrainresult");
			return this;
		}

		public Criteria andAtttrainresultGreaterThan(String value) {
			addCriterion("attTrainResult >", value, "atttrainresult");
			return this;
		}

		public Criteria andAtttrainresultGreaterThanOrEqualTo(String value) {
			addCriterion("attTrainResult >=", value, "atttrainresult");
			return this;
		}

		public Criteria andAtttrainresultLessThan(String value) {
			addCriterion("attTrainResult <", value, "atttrainresult");
			return this;
		}

		public Criteria andAtttrainresultLessThanOrEqualTo(String value) {
			addCriterion("attTrainResult <=", value, "atttrainresult");
			return this;
		}

		public Criteria andAtttrainresultLike(String value) {
			addCriterion("attTrainResult like", value, "atttrainresult");
			return this;
		}

		public Criteria andAtttrainresultNotLike(String value) {
			addCriterion("attTrainResult not like", value, "atttrainresult");
			return this;
		}

		public Criteria andAtttrainresultIn(List values) {
			addCriterion("attTrainResult in", values, "atttrainresult");
			return this;
		}

		public Criteria andAtttrainresultNotIn(List values) {
			addCriterion("attTrainResult not in", values, "atttrainresult");
			return this;
		}

		public Criteria andAtttrainresultBetween(String value1, String value2) {
			addCriterion("attTrainResult between", value1, value2,
					"atttrainresult");
			return this;
		}

		public Criteria andAtttrainresultNotBetween(String value1, String value2) {
			addCriterion("attTrainResult not between", value1, value2,
					"atttrainresult");
			return this;
		}

		public Criteria andTeacheridIsNull() {
			addCriterion("teacherId is null");
			return this;
		}

		public Criteria andTeacheridIsNotNull() {
			addCriterion("teacherId is not null");
			return this;
		}

		public Criteria andTeacheridEqualTo(Long value) {
			addCriterion("teacherId =", value, "teacherid");
			return this;
		}

		public Criteria andTeacheridNotEqualTo(Long value) {
			addCriterion("teacherId <>", value, "teacherid");
			return this;
		}

		public Criteria andTeacheridGreaterThan(Long value) {
			addCriterion("teacherId >", value, "teacherid");
			return this;
		}

		public Criteria andTeacheridGreaterThanOrEqualTo(Long value) {
			addCriterion("teacherId >=", value, "teacherid");
			return this;
		}

		public Criteria andTeacheridLessThan(Long value) {
			addCriterion("teacherId <", value, "teacherid");
			return this;
		}

		public Criteria andTeacheridLessThanOrEqualTo(Long value) {
			addCriterion("teacherId <=", value, "teacherid");
			return this;
		}

		public Criteria andTeacheridIn(List values) {
			addCriterion("teacherId in", values, "teacherid");
			return this;
		}

		public Criteria andTeacheridNotIn(List values) {
			addCriterion("teacherId not in", values, "teacherid");
			return this;
		}

		public Criteria andTeacheridBetween(Long value1, Long value2) {
			addCriterion("teacherId between", value1, value2, "teacherid");
			return this;
		}

		public Criteria andTeacheridNotBetween(Long value1, Long value2) {
			addCriterion("teacherId not between", value1, value2, "teacherid");
			return this;
		}
	}
}