package com.et59.cus.domain.entity;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TVisitschoolExample {

	/**
	 * This field was generated by Apache iBATIS ibator. This field corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	protected String orderByClause;
	/**
	 * This field was generated by Apache iBATIS ibator. This field corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	protected List oredCriteria;

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	public TVisitschoolExample() {
		oredCriteria = new ArrayList();
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	protected TVisitschoolExample(TVisitschoolExample example) {
		this.orderByClause = example.orderByClause;
		this.oredCriteria = example.oredCriteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	public void setOrderByClause(String orderByClause) {
		this.orderByClause = orderByClause;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	public String getOrderByClause() {
		return orderByClause;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	public List getOredCriteria() {
		return oredCriteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	public void or(Criteria criteria) {
		oredCriteria.add(criteria);
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	public Criteria createCriteria() {
		Criteria criteria = createCriteriaInternal();
		if (oredCriteria.size() == 0) {
			oredCriteria.add(criteria);
		}
		return criteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	protected Criteria createCriteriaInternal() {
		Criteria criteria = new Criteria();
		return criteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
	 */
	public void clear() {
		oredCriteria.clear();
	}

	/**
	 * This class was generated by Apache iBATIS ibator. This class corresponds to the database table t_visitschool
	 * @ibatorgenerated  Fri Jul 17 10:42:38 CST 2015
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

		public Criteria andVisitidIsNull() {
			addCriterion("visitId is null");
			return this;
		}

		public Criteria andVisitidIsNotNull() {
			addCriterion("visitId is not null");
			return this;
		}

		public Criteria andVisitidEqualTo(Long value) {
			addCriterion("visitId =", value, "visitid");
			return this;
		}

		public Criteria andVisitidNotEqualTo(Long value) {
			addCriterion("visitId <>", value, "visitid");
			return this;
		}

		public Criteria andVisitidGreaterThan(Long value) {
			addCriterion("visitId >", value, "visitid");
			return this;
		}

		public Criteria andVisitidGreaterThanOrEqualTo(Long value) {
			addCriterion("visitId >=", value, "visitid");
			return this;
		}

		public Criteria andVisitidLessThan(Long value) {
			addCriterion("visitId <", value, "visitid");
			return this;
		}

		public Criteria andVisitidLessThanOrEqualTo(Long value) {
			addCriterion("visitId <=", value, "visitid");
			return this;
		}

		public Criteria andVisitidIn(List values) {
			addCriterion("visitId in", values, "visitid");
			return this;
		}

		public Criteria andVisitidNotIn(List values) {
			addCriterion("visitId not in", values, "visitid");
			return this;
		}

		public Criteria andVisitidBetween(Long value1, Long value2) {
			addCriterion("visitId between", value1, value2, "visitid");
			return this;
		}

		public Criteria andVisitidNotBetween(Long value1, Long value2) {
			addCriterion("visitId not between", value1, value2, "visitid");
			return this;
		}

		public Criteria andVisitnameIsNull() {
			addCriterion("visitName is null");
			return this;
		}

		public Criteria andVisitnameIsNotNull() {
			addCriterion("visitName is not null");
			return this;
		}

		public Criteria andVisitnameEqualTo(String value) {
			addCriterion("visitName =", value, "visitname");
			return this;
		}

		public Criteria andVisitnameNotEqualTo(String value) {
			addCriterion("visitName <>", value, "visitname");
			return this;
		}

		public Criteria andVisitnameGreaterThan(String value) {
			addCriterion("visitName >", value, "visitname");
			return this;
		}

		public Criteria andVisitnameGreaterThanOrEqualTo(String value) {
			addCriterion("visitName >=", value, "visitname");
			return this;
		}

		public Criteria andVisitnameLessThan(String value) {
			addCriterion("visitName <", value, "visitname");
			return this;
		}

		public Criteria andVisitnameLessThanOrEqualTo(String value) {
			addCriterion("visitName <=", value, "visitname");
			return this;
		}

		public Criteria andVisitnameLike(String value) {
			addCriterion("visitName like", value, "visitname");
			return this;
		}

		public Criteria andVisitnameNotLike(String value) {
			addCriterion("visitName not like", value, "visitname");
			return this;
		}

		public Criteria andVisitnameIn(List values) {
			addCriterion("visitName in", values, "visitname");
			return this;
		}

		public Criteria andVisitnameNotIn(List values) {
			addCriterion("visitName not in", values, "visitname");
			return this;
		}

		public Criteria andVisitnameBetween(String value1, String value2) {
			addCriterion("visitName between", value1, value2, "visitname");
			return this;
		}

		public Criteria andVisitnameNotBetween(String value1, String value2) {
			addCriterion("visitName not between", value1, value2, "visitname");
			return this;
		}

		public Criteria andVisitbegdateIsNull() {
			addCriterion("visitBegDate is null");
			return this;
		}

		public Criteria andVisitbegdateIsNotNull() {
			addCriterion("visitBegDate is not null");
			return this;
		}

		public Criteria andVisitbegdateEqualTo(String value) {
			addCriterion("visitBegDate =", value, "visitbegdate");
			return this;
		}

		public Criteria andVisitbegdateNotEqualTo(String value) {
			addCriterion("visitBegDate <>", value, "visitbegdate");
			return this;
		}

		public Criteria andVisitbegdateGreaterThan(String value) {
			addCriterion("visitBegDate >", value, "visitbegdate");
			return this;
		}

		public Criteria andVisitbegdateGreaterThanOrEqualTo(String value) {
			addCriterion("visitBegDate >=", value, "visitbegdate");
			return this;
		}

		public Criteria andVisitbegdateLessThan(String value) {
			addCriterion("visitBegDate <", value, "visitbegdate");
			return this;
		}

		public Criteria andVisitbegdateLessThanOrEqualTo(String value) {
			addCriterion("visitBegDate <=", value, "visitbegdate");
			return this;
		}

		public Criteria andVisitbegdateLike(String value) {
			addCriterion("visitBegDate like", value, "visitbegdate");
			return this;
		}

		public Criteria andVisitbegdateNotLike(String value) {
			addCriterion("visitBegDate not like", value, "visitbegdate");
			return this;
		}

		public Criteria andVisitbegdateIn(List values) {
			addCriterion("visitBegDate in", values, "visitbegdate");
			return this;
		}

		public Criteria andVisitbegdateNotIn(List values) {
			addCriterion("visitBegDate not in", values, "visitbegdate");
			return this;
		}

		public Criteria andVisitbegdateBetween(String value1, String value2) {
			addCriterion("visitBegDate between", value1, value2, "visitbegdate");
			return this;
		}

		public Criteria andVisitbegdateNotBetween(String value1, String value2) {
			addCriterion("visitBegDate not between", value1, value2,
					"visitbegdate");
			return this;
		}

		public Criteria andVisitenddateIsNull() {
			addCriterion("visitEndDate is null");
			return this;
		}

		public Criteria andVisitenddateIsNotNull() {
			addCriterion("visitEndDate is not null");
			return this;
		}

		public Criteria andVisitenddateEqualTo(String value) {
			addCriterion("visitEndDate =", value, "visitenddate");
			return this;
		}

		public Criteria andVisitenddateNotEqualTo(String value) {
			addCriterion("visitEndDate <>", value, "visitenddate");
			return this;
		}

		public Criteria andVisitenddateGreaterThan(String value) {
			addCriterion("visitEndDate >", value, "visitenddate");
			return this;
		}

		public Criteria andVisitenddateGreaterThanOrEqualTo(String value) {
			addCriterion("visitEndDate >=", value, "visitenddate");
			return this;
		}

		public Criteria andVisitenddateLessThan(String value) {
			addCriterion("visitEndDate <", value, "visitenddate");
			return this;
		}

		public Criteria andVisitenddateLessThanOrEqualTo(String value) {
			addCriterion("visitEndDate <=", value, "visitenddate");
			return this;
		}

		public Criteria andVisitenddateLike(String value) {
			addCriterion("visitEndDate like", value, "visitenddate");
			return this;
		}

		public Criteria andVisitenddateNotLike(String value) {
			addCriterion("visitEndDate not like", value, "visitenddate");
			return this;
		}

		public Criteria andVisitenddateIn(List values) {
			addCriterion("visitEndDate in", values, "visitenddate");
			return this;
		}

		public Criteria andVisitenddateNotIn(List values) {
			addCriterion("visitEndDate not in", values, "visitenddate");
			return this;
		}

		public Criteria andVisitenddateBetween(String value1, String value2) {
			addCriterion("visitEndDate between", value1, value2, "visitenddate");
			return this;
		}

		public Criteria andVisitenddateNotBetween(String value1, String value2) {
			addCriterion("visitEndDate not between", value1, value2,
					"visitenddate");
			return this;
		}

		public Criteria andVisitlengthIsNull() {
			addCriterion("visitLength is null");
			return this;
		}

		public Criteria andVisitlengthIsNotNull() {
			addCriterion("visitLength is not null");
			return this;
		}

		public Criteria andVisitlengthEqualTo(String value) {
			addCriterion("visitLength =", value, "visitlength");
			return this;
		}

		public Criteria andVisitlengthNotEqualTo(String value) {
			addCriterion("visitLength <>", value, "visitlength");
			return this;
		}

		public Criteria andVisitlengthGreaterThan(String value) {
			addCriterion("visitLength >", value, "visitlength");
			return this;
		}

		public Criteria andVisitlengthGreaterThanOrEqualTo(String value) {
			addCriterion("visitLength >=", value, "visitlength");
			return this;
		}

		public Criteria andVisitlengthLessThan(String value) {
			addCriterion("visitLength <", value, "visitlength");
			return this;
		}

		public Criteria andVisitlengthLessThanOrEqualTo(String value) {
			addCriterion("visitLength <=", value, "visitlength");
			return this;
		}

		public Criteria andVisitlengthLike(String value) {
			addCriterion("visitLength like", value, "visitlength");
			return this;
		}

		public Criteria andVisitlengthNotLike(String value) {
			addCriterion("visitLength not like", value, "visitlength");
			return this;
		}

		public Criteria andVisitlengthIn(List values) {
			addCriterion("visitLength in", values, "visitlength");
			return this;
		}

		public Criteria andVisitlengthNotIn(List values) {
			addCriterion("visitLength not in", values, "visitlength");
			return this;
		}

		public Criteria andVisitlengthBetween(String value1, String value2) {
			addCriterion("visitLength between", value1, value2, "visitlength");
			return this;
		}

		public Criteria andVisitlengthNotBetween(String value1, String value2) {
			addCriterion("visitLength not between", value1, value2,
					"visitlength");
			return this;
		}

		public Criteria andVisitplaceIsNull() {
			addCriterion("visitPlace is null");
			return this;
		}

		public Criteria andVisitplaceIsNotNull() {
			addCriterion("visitPlace is not null");
			return this;
		}

		public Criteria andVisitplaceEqualTo(String value) {
			addCriterion("visitPlace =", value, "visitplace");
			return this;
		}

		public Criteria andVisitplaceNotEqualTo(String value) {
			addCriterion("visitPlace <>", value, "visitplace");
			return this;
		}

		public Criteria andVisitplaceGreaterThan(String value) {
			addCriterion("visitPlace >", value, "visitplace");
			return this;
		}

		public Criteria andVisitplaceGreaterThanOrEqualTo(String value) {
			addCriterion("visitPlace >=", value, "visitplace");
			return this;
		}

		public Criteria andVisitplaceLessThan(String value) {
			addCriterion("visitPlace <", value, "visitplace");
			return this;
		}

		public Criteria andVisitplaceLessThanOrEqualTo(String value) {
			addCriterion("visitPlace <=", value, "visitplace");
			return this;
		}

		public Criteria andVisitplaceLike(String value) {
			addCriterion("visitPlace like", value, "visitplace");
			return this;
		}

		public Criteria andVisitplaceNotLike(String value) {
			addCriterion("visitPlace not like", value, "visitplace");
			return this;
		}

		public Criteria andVisitplaceIn(List values) {
			addCriterion("visitPlace in", values, "visitplace");
			return this;
		}

		public Criteria andVisitplaceNotIn(List values) {
			addCriterion("visitPlace not in", values, "visitplace");
			return this;
		}

		public Criteria andVisitplaceBetween(String value1, String value2) {
			addCriterion("visitPlace between", value1, value2, "visitplace");
			return this;
		}

		public Criteria andVisitplaceNotBetween(String value1, String value2) {
			addCriterion("visitPlace not between", value1, value2, "visitplace");
			return this;
		}

		public Criteria andVisitforprojectIsNull() {
			addCriterion("visitForProject is null");
			return this;
		}

		public Criteria andVisitforprojectIsNotNull() {
			addCriterion("visitForProject is not null");
			return this;
		}

		public Criteria andVisitforprojectEqualTo(String value) {
			addCriterion("visitForProject =", value, "visitforproject");
			return this;
		}

		public Criteria andVisitforprojectNotEqualTo(String value) {
			addCriterion("visitForProject <>", value, "visitforproject");
			return this;
		}

		public Criteria andVisitforprojectGreaterThan(String value) {
			addCriterion("visitForProject >", value, "visitforproject");
			return this;
		}

		public Criteria andVisitforprojectGreaterThanOrEqualTo(String value) {
			addCriterion("visitForProject >=", value, "visitforproject");
			return this;
		}

		public Criteria andVisitforprojectLessThan(String value) {
			addCriterion("visitForProject <", value, "visitforproject");
			return this;
		}

		public Criteria andVisitforprojectLessThanOrEqualTo(String value) {
			addCriterion("visitForProject <=", value, "visitforproject");
			return this;
		}

		public Criteria andVisitforprojectLike(String value) {
			addCriterion("visitForProject like", value, "visitforproject");
			return this;
		}

		public Criteria andVisitforprojectNotLike(String value) {
			addCriterion("visitForProject not like", value, "visitforproject");
			return this;
		}

		public Criteria andVisitforprojectIn(List values) {
			addCriterion("visitForProject in", values, "visitforproject");
			return this;
		}

		public Criteria andVisitforprojectNotIn(List values) {
			addCriterion("visitForProject not in", values, "visitforproject");
			return this;
		}

		public Criteria andVisitforprojectBetween(String value1, String value2) {
			addCriterion("visitForProject between", value1, value2,
					"visitforproject");
			return this;
		}

		public Criteria andVisitforprojectNotBetween(String value1,
				String value2) {
			addCriterion("visitForProject not between", value1, value2,
					"visitforproject");
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