package com.et59.cus.domain.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TCollegeExample {

	/**
	 * This field was generated by Apache iBATIS ibator. This field corresponds to the database table t_college
	 * @ibatorgenerated  Wed Jan 07 10:29:04 CST 2015
	 */
	protected String orderByClause;
	/**
	 * This field was generated by Apache iBATIS ibator. This field corresponds to the database table t_college
	 * @ibatorgenerated  Wed Jan 07 10:29:04 CST 2015
	 */
	protected List oredCriteria;

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_college
	 * @ibatorgenerated  Wed Jan 07 10:29:04 CST 2015
	 */
	public TCollegeExample() {
		oredCriteria = new ArrayList();
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_college
	 * @ibatorgenerated  Wed Jan 07 10:29:04 CST 2015
	 */
	protected TCollegeExample(TCollegeExample example) {
		this.orderByClause = example.orderByClause;
		this.oredCriteria = example.oredCriteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_college
	 * @ibatorgenerated  Wed Jan 07 10:29:04 CST 2015
	 */
	public void setOrderByClause(String orderByClause) {
		this.orderByClause = orderByClause;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_college
	 * @ibatorgenerated  Wed Jan 07 10:29:04 CST 2015
	 */
	public String getOrderByClause() {
		return orderByClause;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_college
	 * @ibatorgenerated  Wed Jan 07 10:29:04 CST 2015
	 */
	public List getOredCriteria() {
		return oredCriteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_college
	 * @ibatorgenerated  Wed Jan 07 10:29:04 CST 2015
	 */
	public void or(Criteria criteria) {
		oredCriteria.add(criteria);
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_college
	 * @ibatorgenerated  Wed Jan 07 10:29:04 CST 2015
	 */
	public Criteria createCriteria() {
		Criteria criteria = createCriteriaInternal();
		if (oredCriteria.size() == 0) {
			oredCriteria.add(criteria);
		}
		return criteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_college
	 * @ibatorgenerated  Wed Jan 07 10:29:04 CST 2015
	 */
	protected Criteria createCriteriaInternal() {
		Criteria criteria = new Criteria();
		return criteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_college
	 * @ibatorgenerated  Wed Jan 07 10:29:04 CST 2015
	 */
	public void clear() {
		oredCriteria.clear();
	}

	/**
	 * This class was generated by Apache iBATIS ibator. This class corresponds to the database table t_college
	 * @ibatorgenerated  Wed Jan 07 10:29:04 CST 2015
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

		public Criteria andIdIsNull() {
			addCriterion("id is null");
			return this;
		}

		public Criteria andIdIsNotNull() {
			addCriterion("id is not null");
			return this;
		}

		public Criteria andIdEqualTo(Long value) {
			addCriterion("id =", value, "id");
			return this;
		}

		public Criteria andIdNotEqualTo(Long value) {
			addCriterion("id <>", value, "id");
			return this;
		}

		public Criteria andIdGreaterThan(Long value) {
			addCriterion("id >", value, "id");
			return this;
		}

		public Criteria andIdGreaterThanOrEqualTo(Long value) {
			addCriterion("id >=", value, "id");
			return this;
		}

		public Criteria andIdLessThan(Long value) {
			addCriterion("id <", value, "id");
			return this;
		}

		public Criteria andIdLessThanOrEqualTo(Long value) {
			addCriterion("id <=", value, "id");
			return this;
		}

		public Criteria andIdIn(List values) {
			addCriterion("id in", values, "id");
			return this;
		}

		public Criteria andIdNotIn(List values) {
			addCriterion("id not in", values, "id");
			return this;
		}

		public Criteria andIdBetween(Long value1, Long value2) {
			addCriterion("id between", value1, value2, "id");
			return this;
		}

		public Criteria andIdNotBetween(Long value1, Long value2) {
			addCriterion("id not between", value1, value2, "id");
			return this;
		}

		public Criteria andCollegenameIsNull() {
			addCriterion("collegename is null");
			return this;
		}

		public Criteria andCollegenameIsNotNull() {
			addCriterion("collegename is not null");
			return this;
		}

		public Criteria andCollegenameEqualTo(String value) {
			addCriterion("collegename =", value, "collegename");
			return this;
		}

		public Criteria andCollegenameNotEqualTo(String value) {
			addCriterion("collegename <>", value, "collegename");
			return this;
		}

		public Criteria andCollegenameGreaterThan(String value) {
			addCriterion("collegename >", value, "collegename");
			return this;
		}

		public Criteria andCollegenameGreaterThanOrEqualTo(String value) {
			addCriterion("collegename >=", value, "collegename");
			return this;
		}

		public Criteria andCollegenameLessThan(String value) {
			addCriterion("collegename <", value, "collegename");
			return this;
		}

		public Criteria andCollegenameLessThanOrEqualTo(String value) {
			addCriterion("collegename <=", value, "collegename");
			return this;
		}

		public Criteria andCollegenameLike(String value) {
			addCriterion("collegename like", value, "collegename");
			return this;
		}

		public Criteria andCollegenameNotLike(String value) {
			addCriterion("collegename not like", value, "collegename");
			return this;
		}

		public Criteria andCollegenameIn(List values) {
			addCriterion("collegename in", values, "collegename");
			return this;
		}

		public Criteria andCollegenameNotIn(List values) {
			addCriterion("collegename not in", values, "collegename");
			return this;
		}

		public Criteria andCollegenameBetween(String value1, String value2) {
			addCriterion("collegename between", value1, value2, "collegename");
			return this;
		}

		public Criteria andCollegenameNotBetween(String value1, String value2) {
			addCriterion("collegename not between", value1, value2,
					"collegename");
			return this;
		}

		public Criteria andCollegeintroductionIsNull() {
			addCriterion("collegeintroduction is null");
			return this;
		}

		public Criteria andCollegeintroductionIsNotNull() {
			addCriterion("collegeintroduction is not null");
			return this;
		}

		public Criteria andCollegeintroductionEqualTo(String value) {
			addCriterion("collegeintroduction =", value, "collegeintroduction");
			return this;
		}

		public Criteria andCollegeintroductionNotEqualTo(String value) {
			addCriterion("collegeintroduction <>", value, "collegeintroduction");
			return this;
		}

		public Criteria andCollegeintroductionGreaterThan(String value) {
			addCriterion("collegeintroduction >", value, "collegeintroduction");
			return this;
		}

		public Criteria andCollegeintroductionGreaterThanOrEqualTo(String value) {
			addCriterion("collegeintroduction >=", value, "collegeintroduction");
			return this;
		}

		public Criteria andCollegeintroductionLessThan(String value) {
			addCriterion("collegeintroduction <", value, "collegeintroduction");
			return this;
		}

		public Criteria andCollegeintroductionLessThanOrEqualTo(String value) {
			addCriterion("collegeintroduction <=", value, "collegeintroduction");
			return this;
		}

		public Criteria andCollegeintroductionLike(String value) {
			addCriterion("collegeintroduction like", value,
					"collegeintroduction");
			return this;
		}

		public Criteria andCollegeintroductionNotLike(String value) {
			addCriterion("collegeintroduction not like", value,
					"collegeintroduction");
			return this;
		}

		public Criteria andCollegeintroductionIn(List values) {
			addCriterion("collegeintroduction in", values,
					"collegeintroduction");
			return this;
		}

		public Criteria andCollegeintroductionNotIn(List values) {
			addCriterion("collegeintroduction not in", values,
					"collegeintroduction");
			return this;
		}

		public Criteria andCollegeintroductionBetween(String value1,
				String value2) {
			addCriterion("collegeintroduction between", value1, value2,
					"collegeintroduction");
			return this;
		}

		public Criteria andCollegeintroductionNotBetween(String value1,
				String value2) {
			addCriterion("collegeintroduction not between", value1, value2,
					"collegeintroduction");
			return this;
		}

		public Criteria andCollegeorderIsNull() {
			addCriterion("collegeorder is null");
			return this;
		}

		public Criteria andCollegeorderIsNotNull() {
			addCriterion("collegeorder is not null");
			return this;
		}

		public Criteria andCollegeorderEqualTo(Integer value) {
			addCriterion("collegeorder =", value, "collegeorder");
			return this;
		}

		public Criteria andCollegeorderNotEqualTo(Integer value) {
			addCriterion("collegeorder <>", value, "collegeorder");
			return this;
		}

		public Criteria andCollegeorderGreaterThan(Integer value) {
			addCriterion("collegeorder >", value, "collegeorder");
			return this;
		}

		public Criteria andCollegeorderGreaterThanOrEqualTo(Integer value) {
			addCriterion("collegeorder >=", value, "collegeorder");
			return this;
		}

		public Criteria andCollegeorderLessThan(Integer value) {
			addCriterion("collegeorder <", value, "collegeorder");
			return this;
		}

		public Criteria andCollegeorderLessThanOrEqualTo(Integer value) {
			addCriterion("collegeorder <=", value, "collegeorder");
			return this;
		}

		public Criteria andCollegeorderIn(List values) {
			addCriterion("collegeorder in", values, "collegeorder");
			return this;
		}

		public Criteria andCollegeorderNotIn(List values) {
			addCriterion("collegeorder not in", values, "collegeorder");
			return this;
		}

		public Criteria andCollegeorderBetween(Integer value1, Integer value2) {
			addCriterion("collegeorder between", value1, value2, "collegeorder");
			return this;
		}

		public Criteria andCollegeorderNotBetween(Integer value1, Integer value2) {
			addCriterion("collegeorder not between", value1, value2,
					"collegeorder");
			return this;
		}

		public Criteria andCreatedateIsNull() {
			addCriterion("createdate is null");
			return this;
		}

		public Criteria andCreatedateIsNotNull() {
			addCriterion("createdate is not null");
			return this;
		}

		public Criteria andCreatedateEqualTo(Date value) {
			addCriterion("createdate =", value, "createdate");
			return this;
		}

		public Criteria andCreatedateNotEqualTo(Date value) {
			addCriterion("createdate <>", value, "createdate");
			return this;
		}

		public Criteria andCreatedateGreaterThan(Date value) {
			addCriterion("createdate >", value, "createdate");
			return this;
		}

		public Criteria andCreatedateGreaterThanOrEqualTo(Date value) {
			addCriterion("createdate >=", value, "createdate");
			return this;
		}

		public Criteria andCreatedateLessThan(Date value) {
			addCriterion("createdate <", value, "createdate");
			return this;
		}

		public Criteria andCreatedateLessThanOrEqualTo(Date value) {
			addCriterion("createdate <=", value, "createdate");
			return this;
		}

		public Criteria andCreatedateIn(List values) {
			addCriterion("createdate in", values, "createdate");
			return this;
		}

		public Criteria andCreatedateNotIn(List values) {
			addCriterion("createdate not in", values, "createdate");
			return this;
		}

		public Criteria andCreatedateBetween(Date value1, Date value2) {
			addCriterion("createdate between", value1, value2, "createdate");
			return this;
		}

		public Criteria andCreatedateNotBetween(Date value1, Date value2) {
			addCriterion("createdate not between", value1, value2, "createdate");
			return this;
		}

		public Criteria andCollegelevelIsNull() {
			addCriterion("collegelevel is null");
			return this;
		}

		public Criteria andCollegelevelIsNotNull() {
			addCriterion("collegelevel is not null");
			return this;
		}

		public Criteria andCollegelevelEqualTo(String value) {
			addCriterion("collegelevel =", value, "collegelevel");
			return this;
		}

		public Criteria andCollegelevelNotEqualTo(String value) {
			addCriterion("collegelevel <>", value, "collegelevel");
			return this;
		}

		public Criteria andCollegelevelGreaterThan(String value) {
			addCriterion("collegelevel >", value, "collegelevel");
			return this;
		}

		public Criteria andCollegelevelGreaterThanOrEqualTo(String value) {
			addCriterion("collegelevel >=", value, "collegelevel");
			return this;
		}

		public Criteria andCollegelevelLessThan(String value) {
			addCriterion("collegelevel <", value, "collegelevel");
			return this;
		}

		public Criteria andCollegelevelLessThanOrEqualTo(String value) {
			addCriterion("collegelevel <=", value, "collegelevel");
			return this;
		}

		public Criteria andCollegelevelLike(String value) {
			addCriterion("collegelevel like", value, "collegelevel");
			return this;
		}

		public Criteria andCollegelevelNotLike(String value) {
			addCriterion("collegelevel not like", value, "collegelevel");
			return this;
		}

		public Criteria andCollegelevelIn(List values) {
			addCriterion("collegelevel in", values, "collegelevel");
			return this;
		}

		public Criteria andCollegelevelNotIn(List values) {
			addCriterion("collegelevel not in", values, "collegelevel");
			return this;
		}

		public Criteria andCollegelevelBetween(String value1, String value2) {
			addCriterion("collegelevel between", value1, value2, "collegelevel");
			return this;
		}

		public Criteria andCollegelevelNotBetween(String value1, String value2) {
			addCriterion("collegelevel not between", value1, value2,
					"collegelevel");
			return this;
		}

		public Criteria andCollegesummaryIsNull() {
			addCriterion("collegesummary is null");
			return this;
		}

		public Criteria andCollegesummaryIsNotNull() {
			addCriterion("collegesummary is not null");
			return this;
		}

		public Criteria andCollegesummaryEqualTo(String value) {
			addCriterion("collegesummary =", value, "collegesummary");
			return this;
		}

		public Criteria andCollegesummaryNotEqualTo(String value) {
			addCriterion("collegesummary <>", value, "collegesummary");
			return this;
		}

		public Criteria andCollegesummaryGreaterThan(String value) {
			addCriterion("collegesummary >", value, "collegesummary");
			return this;
		}

		public Criteria andCollegesummaryGreaterThanOrEqualTo(String value) {
			addCriterion("collegesummary >=", value, "collegesummary");
			return this;
		}

		public Criteria andCollegesummaryLessThan(String value) {
			addCriterion("collegesummary <", value, "collegesummary");
			return this;
		}

		public Criteria andCollegesummaryLessThanOrEqualTo(String value) {
			addCriterion("collegesummary <=", value, "collegesummary");
			return this;
		}

		public Criteria andCollegesummaryLike(String value) {
			addCriterion("collegesummary like", value, "collegesummary");
			return this;
		}

		public Criteria andCollegesummaryNotLike(String value) {
			addCriterion("collegesummary not like", value, "collegesummary");
			return this;
		}

		public Criteria andCollegesummaryIn(List values) {
			addCriterion("collegesummary in", values, "collegesummary");
			return this;
		}

		public Criteria andCollegesummaryNotIn(List values) {
			addCriterion("collegesummary not in", values, "collegesummary");
			return this;
		}

		public Criteria andCollegesummaryBetween(String value1, String value2) {
			addCriterion("collegesummary between", value1, value2,
					"collegesummary");
			return this;
		}

		public Criteria andCollegesummaryNotBetween(String value1, String value2) {
			addCriterion("collegesummary not between", value1, value2,
					"collegesummary");
			return this;
		}
	}
}