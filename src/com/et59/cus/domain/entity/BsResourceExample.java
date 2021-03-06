package com.et59.cus.domain.entity;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BsResourceExample {

	/**
	 * This field was generated by Abator for iBATIS. This field corresponds to the database table bs_resource
	 * @abatorgenerated
	 */
	protected String orderByClause;
	/**
	 * This field was generated by Abator for iBATIS. This field corresponds to the database table bs_resource
	 * @abatorgenerated
	 */
	protected List<Criteria> oredCriteria;

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_resource
	 * @abatorgenerated
	 */
	public BsResourceExample() {
		oredCriteria = new ArrayList<Criteria>();
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_resource
	 * @abatorgenerated
	 */
	protected BsResourceExample(BsResourceExample example) {
		this.orderByClause = example.orderByClause;
		this.oredCriteria = example.oredCriteria;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_resource
	 * @abatorgenerated
	 */
	public void setOrderByClause(String orderByClause) {
		this.orderByClause = orderByClause;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_resource
	 * @abatorgenerated
	 */
	public String getOrderByClause() {
		return orderByClause;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_resource
	 * @abatorgenerated
	 */
	public List<Criteria> getOredCriteria() {
		return oredCriteria;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_resource
	 * @abatorgenerated
	 */
	public void or(Criteria criteria) {
		oredCriteria.add(criteria);
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_resource
	 * @abatorgenerated
	 */
	public Criteria createCriteria() {
		Criteria criteria = createCriteriaInternal();
		if (oredCriteria.size() == 0) {
			oredCriteria.add(criteria);
		}
		return criteria;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_resource
	 * @abatorgenerated
	 */
	protected Criteria createCriteriaInternal() {
		Criteria criteria = new Criteria();
		return criteria;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_resource
	 * @abatorgenerated
	 */
	public void clear() {
		oredCriteria.clear();
	}

	/**
	 * This class was generated by Abator for iBATIS. This class corresponds to the database table bs_resource
	 * @abatorgenerated
	 */
	public static class Criteria {
		protected List<String> criteriaWithoutValue;
		protected List<Map<String, Object>> criteriaWithSingleValue;
		protected List<Map<String, Object>> criteriaWithListValue;
		protected List<Map<String, Object>> criteriaWithBetweenValue;

		protected Criteria() {
			super();
			criteriaWithoutValue = new ArrayList<String>();
			criteriaWithSingleValue = new ArrayList<Map<String, Object>>();
			criteriaWithListValue = new ArrayList<Map<String, Object>>();
			criteriaWithBetweenValue = new ArrayList<Map<String, Object>>();
		}

		public boolean isValid() {
			return criteriaWithoutValue.size() > 0
					|| criteriaWithSingleValue.size() > 0
					|| criteriaWithListValue.size() > 0
					|| criteriaWithBetweenValue.size() > 0;
		}

		public List<String> getCriteriaWithoutValue() {
			return criteriaWithoutValue;
		}

		public List<Map<String, Object>> getCriteriaWithSingleValue() {
			return criteriaWithSingleValue;
		}

		public List<Map<String, Object>> getCriteriaWithListValue() {
			return criteriaWithListValue;
		}

		public List<Map<String, Object>> getCriteriaWithBetweenValue() {
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
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("condition", condition);
			map.put("value", value);
			criteriaWithSingleValue.add(map);
		}

		protected void addCriterion(String condition,
				List<? extends Object> values, String property) {
			if (values == null || values.size() == 0) {
				throw new RuntimeException("Value list for " + property
						+ " cannot be null or empty");
			}
			Map<String, Object> map = new HashMap<String, Object>();
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
			List<Object> list = new ArrayList<Object>();
			list.add(value1);
			list.add(value2);
			Map<String, Object> map = new HashMap<String, Object>();
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

		public Criteria andIdEqualTo(Integer value) {
			addCriterion("id =", value, "id");
			return this;
		}

		public Criteria andIdNotEqualTo(Integer value) {
			addCriterion("id <>", value, "id");
			return this;
		}

		public Criteria andIdGreaterThan(Integer value) {
			addCriterion("id >", value, "id");
			return this;
		}

		public Criteria andIdGreaterThanOrEqualTo(Integer value) {
			addCriterion("id >=", value, "id");
			return this;
		}

		public Criteria andIdLessThan(Integer value) {
			addCriterion("id <", value, "id");
			return this;
		}

		public Criteria andIdLessThanOrEqualTo(Integer value) {
			addCriterion("id <=", value, "id");
			return this;
		}

		public Criteria andIdIn(List<Integer> values) {
			addCriterion("id in", values, "id");
			return this;
		}

		public Criteria andIdNotIn(List<Integer> values) {
			addCriterion("id not in", values, "id");
			return this;
		}

		public Criteria andIdBetween(Integer value1, Integer value2) {
			addCriterion("id between", value1, value2, "id");
			return this;
		}

		public Criteria andIdNotBetween(Integer value1, Integer value2) {
			addCriterion("id not between", value1, value2, "id");
			return this;
		}

		public Criteria andResourceUrlIsNull() {
			addCriterion("resource_url is null");
			return this;
		}

		public Criteria andResourceUrlIsNotNull() {
			addCriterion("resource_url is not null");
			return this;
		}

		public Criteria andResourceUrlEqualTo(String value) {
			addCriterion("resource_url =", value, "resourceUrl");
			return this;
		}

		public Criteria andResourceUrlNotEqualTo(String value) {
			addCriterion("resource_url <>", value, "resourceUrl");
			return this;
		}

		public Criteria andResourceUrlGreaterThan(String value) {
			addCriterion("resource_url >", value, "resourceUrl");
			return this;
		}

		public Criteria andResourceUrlGreaterThanOrEqualTo(String value) {
			addCriterion("resource_url >=", value, "resourceUrl");
			return this;
		}

		public Criteria andResourceUrlLessThan(String value) {
			addCriterion("resource_url <", value, "resourceUrl");
			return this;
		}

		public Criteria andResourceUrlLessThanOrEqualTo(String value) {
			addCriterion("resource_url <=", value, "resourceUrl");
			return this;
		}

		public Criteria andResourceUrlLike(String value) {
			addCriterion("resource_url like", value, "resourceUrl");
			return this;
		}

		public Criteria andResourceUrlNotLike(String value) {
			addCriterion("resource_url not like", value, "resourceUrl");
			return this;
		}

		public Criteria andResourceUrlIn(List<String> values) {
			addCriterion("resource_url in", values, "resourceUrl");
			return this;
		}

		public Criteria andResourceUrlNotIn(List<String> values) {
			addCriterion("resource_url not in", values, "resourceUrl");
			return this;
		}

		public Criteria andResourceUrlBetween(String value1, String value2) {
			addCriterion("resource_url between", value1, value2, "resourceUrl");
			return this;
		}

		public Criteria andResourceUrlNotBetween(String value1, String value2) {
			addCriterion("resource_url not between", value1, value2,
					"resourceUrl");
			return this;
		}

		public Criteria andResouceNameIsNull() {
			addCriterion("resouce_name is null");
			return this;
		}

		public Criteria andResouceNameIsNotNull() {
			addCriterion("resouce_name is not null");
			return this;
		}

		public Criteria andResouceNameEqualTo(String value) {
			addCriterion("resouce_name =", value, "resouceName");
			return this;
		}

		public Criteria andResouceNameNotEqualTo(String value) {
			addCriterion("resouce_name <>", value, "resouceName");
			return this;
		}

		public Criteria andResouceNameGreaterThan(String value) {
			addCriterion("resouce_name >", value, "resouceName");
			return this;
		}

		public Criteria andResouceNameGreaterThanOrEqualTo(String value) {
			addCriterion("resouce_name >=", value, "resouceName");
			return this;
		}

		public Criteria andResouceNameLessThan(String value) {
			addCriterion("resouce_name <", value, "resouceName");
			return this;
		}

		public Criteria andResouceNameLessThanOrEqualTo(String value) {
			addCriterion("resouce_name <=", value, "resouceName");
			return this;
		}

		public Criteria andResouceNameLike(String value) {
			addCriterion("resouce_name like", value, "resouceName");
			return this;
		}

		public Criteria andResouceNameNotLike(String value) {
			addCriterion("resouce_name not like", value, "resouceName");
			return this;
		}

		public Criteria andResouceNameIn(List<String> values) {
			addCriterion("resouce_name in", values, "resouceName");
			return this;
		}

		public Criteria andResouceNameNotIn(List<String> values) {
			addCriterion("resouce_name not in", values, "resouceName");
			return this;
		}

		public Criteria andResouceNameBetween(String value1, String value2) {
			addCriterion("resouce_name between", value1, value2, "resouceName");
			return this;
		}

		public Criteria andResouceNameNotBetween(String value1, String value2) {
			addCriterion("resouce_name not between", value1, value2,
					"resouceName");
			return this;
		}

		public Criteria andResourceTypeIsNull() {
			addCriterion("resource_type is null");
			return this;
		}

		public Criteria andResourceTypeIsNotNull() {
			addCriterion("resource_type is not null");
			return this;
		}

		public Criteria andResourceTypeEqualTo(String value) {
			addCriterion("resource_type =", value, "resourceType");
			return this;
		}

		public Criteria andResourceTypeNotEqualTo(String value) {
			addCriterion("resource_type <>", value, "resourceType");
			return this;
		}

		public Criteria andResourceTypeGreaterThan(String value) {
			addCriterion("resource_type >", value, "resourceType");
			return this;
		}

		public Criteria andResourceTypeGreaterThanOrEqualTo(String value) {
			addCriterion("resource_type >=", value, "resourceType");
			return this;
		}

		public Criteria andResourceTypeLessThan(String value) {
			addCriterion("resource_type <", value, "resourceType");
			return this;
		}

		public Criteria andResourceTypeLessThanOrEqualTo(String value) {
			addCriterion("resource_type <=", value, "resourceType");
			return this;
		}

		public Criteria andResourceTypeLike(String value) {
			addCriterion("resource_type like", value, "resourceType");
			return this;
		}

		public Criteria andResourceTypeNotLike(String value) {
			addCriterion("resource_type not like", value, "resourceType");
			return this;
		}

		public Criteria andResourceTypeIn(List<String> values) {
			addCriterion("resource_type in", values, "resourceType");
			return this;
		}

		public Criteria andResourceTypeNotIn(List<String> values) {
			addCriterion("resource_type not in", values, "resourceType");
			return this;
		}

		public Criteria andResourceTypeBetween(String value1, String value2) {
			addCriterion("resource_type between", value1, value2,
					"resourceType");
			return this;
		}

		public Criteria andResourceTypeNotBetween(String value1, String value2) {
			addCriterion("resource_type not between", value1, value2,
					"resourceType");
			return this;
		}

		public Criteria andMenuidIsNull() {
			addCriterion("menuid is null");
			return this;
		}

		public Criteria andMenuidIsNotNull() {
			addCriterion("menuid is not null");
			return this;
		}

		public Criteria andMenuidEqualTo(Long value) {
			addCriterion("menuid =", value, "menuid");
			return this;
		}

		public Criteria andMenuidNotEqualTo(Long value) {
			addCriterion("menuid <>", value, "menuid");
			return this;
		}

		public Criteria andMenuidGreaterThan(Long value) {
			addCriterion("menuid >", value, "menuid");
			return this;
		}

		public Criteria andMenuidGreaterThanOrEqualTo(Long value) {
			addCriterion("menuid >=", value, "menuid");
			return this;
		}

		public Criteria andMenuidLessThan(Long value) {
			addCriterion("menuid <", value, "menuid");
			return this;
		}

		public Criteria andMenuidLessThanOrEqualTo(Long value) {
			addCriterion("menuid <=", value, "menuid");
			return this;
		}

		public Criteria andMenuidIn(List<Long> values) {
			addCriterion("menuid in", values, "menuid");
			return this;
		}

		public Criteria andMenuidNotIn(List<Long> values) {
			addCriterion("menuid not in", values, "menuid");
			return this;
		}

		public Criteria andMenuidBetween(Long value1, Long value2) {
			addCriterion("menuid between", value1, value2, "menuid");
			return this;
		}

		public Criteria andMenuidNotBetween(Long value1, Long value2) {
			addCriterion("menuid not between", value1, value2, "menuid");
			return this;
		}
	}
}