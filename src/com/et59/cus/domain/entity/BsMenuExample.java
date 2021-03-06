package com.et59.cus.domain.entity;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BsMenuExample {

	/**
	 * This field was generated by Abator for iBATIS. This field corresponds to the database table bs_menu
	 * @abatorgenerated
	 */
	protected String orderByClause;
	/**
	 * This field was generated by Abator for iBATIS. This field corresponds to the database table bs_menu
	 * @abatorgenerated
	 */
	protected List<Criteria> oredCriteria;

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_menu
	 * @abatorgenerated
	 */
	public BsMenuExample() {
		oredCriteria = new ArrayList<Criteria>();
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_menu
	 * @abatorgenerated
	 */
	protected BsMenuExample(BsMenuExample example) {
		this.orderByClause = example.orderByClause;
		this.oredCriteria = example.oredCriteria;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_menu
	 * @abatorgenerated
	 */
	public void setOrderByClause(String orderByClause) {
		this.orderByClause = orderByClause;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_menu
	 * @abatorgenerated
	 */
	public String getOrderByClause() {
		return orderByClause;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_menu
	 * @abatorgenerated
	 */
	public List<Criteria> getOredCriteria() {
		return oredCriteria;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_menu
	 * @abatorgenerated
	 */
	public void or(Criteria criteria) {
		oredCriteria.add(criteria);
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_menu
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
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_menu
	 * @abatorgenerated
	 */
	protected Criteria createCriteriaInternal() {
		Criteria criteria = new Criteria();
		return criteria;
	}

	/**
	 * This method was generated by Abator for iBATIS. This method corresponds to the database table bs_menu
	 * @abatorgenerated
	 */
	public void clear() {
		oredCriteria.clear();
	}

	/**
	 * This class was generated by Abator for iBATIS. This class corresponds to the database table bs_menu
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

		public Criteria andIdIn(List<Long> values) {
			addCriterion("id in", values, "id");
			return this;
		}

		public Criteria andIdNotIn(List<Long> values) {
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

		public Criteria andTextIsNull() {
			addCriterion("text is null");
			return this;
		}

		public Criteria andTextIsNotNull() {
			addCriterion("text is not null");
			return this;
		}

		public Criteria andTextEqualTo(String value) {
			addCriterion("text =", value, "text");
			return this;
		}

		public Criteria andTextNotEqualTo(String value) {
			addCriterion("text <>", value, "text");
			return this;
		}

		public Criteria andTextGreaterThan(String value) {
			addCriterion("text >", value, "text");
			return this;
		}

		public Criteria andTextGreaterThanOrEqualTo(String value) {
			addCriterion("text >=", value, "text");
			return this;
		}

		public Criteria andTextLessThan(String value) {
			addCriterion("text <", value, "text");
			return this;
		}

		public Criteria andTextLessThanOrEqualTo(String value) {
			addCriterion("text <=", value, "text");
			return this;
		}

		public Criteria andTextLike(String value) {
			addCriterion("text like", value, "text");
			return this;
		}

		public Criteria andTextNotLike(String value) {
			addCriterion("text not like", value, "text");
			return this;
		}

		public Criteria andTextIn(List<String> values) {
			addCriterion("text in", values, "text");
			return this;
		}

		public Criteria andTextNotIn(List<String> values) {
			addCriterion("text not in", values, "text");
			return this;
		}

		public Criteria andTextBetween(String value1, String value2) {
			addCriterion("text between", value1, value2, "text");
			return this;
		}

		public Criteria andTextNotBetween(String value1, String value2) {
			addCriterion("text not between", value1, value2, "text");
			return this;
		}

		public Criteria andMenulevelIsNull() {
			addCriterion("menulevel is null");
			return this;
		}

		public Criteria andMenulevelIsNotNull() {
			addCriterion("menulevel is not null");
			return this;
		}

		public Criteria andMenulevelEqualTo(Integer value) {
			addCriterion("menulevel =", value, "menulevel");
			return this;
		}

		public Criteria andMenulevelNotEqualTo(Integer value) {
			addCriterion("menulevel <>", value, "menulevel");
			return this;
		}

		public Criteria andMenulevelGreaterThan(Integer value) {
			addCriterion("menulevel >", value, "menulevel");
			return this;
		}

		public Criteria andMenulevelGreaterThanOrEqualTo(Integer value) {
			addCriterion("menulevel >=", value, "menulevel");
			return this;
		}

		public Criteria andMenulevelLessThan(Integer value) {
			addCriterion("menulevel <", value, "menulevel");
			return this;
		}

		public Criteria andMenulevelLessThanOrEqualTo(Integer value) {
			addCriterion("menulevel <=", value, "menulevel");
			return this;
		}

		public Criteria andMenulevelIn(List<Integer> values) {
			addCriterion("menulevel in", values, "menulevel");
			return this;
		}

		public Criteria andMenulevelNotIn(List<Integer> values) {
			addCriterion("menulevel not in", values, "menulevel");
			return this;
		}

		public Criteria andMenulevelBetween(Integer value1, Integer value2) {
			addCriterion("menulevel between", value1, value2, "menulevel");
			return this;
		}

		public Criteria andMenulevelNotBetween(Integer value1, Integer value2) {
			addCriterion("menulevel not between", value1, value2, "menulevel");
			return this;
		}

		public Criteria andMenuurlIsNull() {
			addCriterion("menuurl is null");
			return this;
		}

		public Criteria andMenuurlIsNotNull() {
			addCriterion("menuurl is not null");
			return this;
		}

		public Criteria andMenuurlEqualTo(String value) {
			addCriterion("menuurl =", value, "menuurl");
			return this;
		}

		public Criteria andMenuurlNotEqualTo(String value) {
			addCriterion("menuurl <>", value, "menuurl");
			return this;
		}

		public Criteria andMenuurlGreaterThan(String value) {
			addCriterion("menuurl >", value, "menuurl");
			return this;
		}

		public Criteria andMenuurlGreaterThanOrEqualTo(String value) {
			addCriterion("menuurl >=", value, "menuurl");
			return this;
		}

		public Criteria andMenuurlLessThan(String value) {
			addCriterion("menuurl <", value, "menuurl");
			return this;
		}

		public Criteria andMenuurlLessThanOrEqualTo(String value) {
			addCriterion("menuurl <=", value, "menuurl");
			return this;
		}

		public Criteria andMenuurlLike(String value) {
			addCriterion("menuurl like", value, "menuurl");
			return this;
		}

		public Criteria andMenuurlNotLike(String value) {
			addCriterion("menuurl not like", value, "menuurl");
			return this;
		}

		public Criteria andMenuurlIn(List<String> values) {
			addCriterion("menuurl in", values, "menuurl");
			return this;
		}

		public Criteria andMenuurlNotIn(List<String> values) {
			addCriterion("menuurl not in", values, "menuurl");
			return this;
		}

		public Criteria andMenuurlBetween(String value1, String value2) {
			addCriterion("menuurl between", value1, value2, "menuurl");
			return this;
		}

		public Criteria andMenuurlNotBetween(String value1, String value2) {
			addCriterion("menuurl not between", value1, value2, "menuurl");
			return this;
		}

		public Criteria andMenuorderIsNull() {
			addCriterion("menuorder is null");
			return this;
		}

		public Criteria andMenuorderIsNotNull() {
			addCriterion("menuorder is not null");
			return this;
		}

		public Criteria andMenuorderEqualTo(Integer value) {
			addCriterion("menuorder =", value, "menuorder");
			return this;
		}

		public Criteria andMenuorderNotEqualTo(Integer value) {
			addCriterion("menuorder <>", value, "menuorder");
			return this;
		}

		public Criteria andMenuorderGreaterThan(Integer value) {
			addCriterion("menuorder >", value, "menuorder");
			return this;
		}

		public Criteria andMenuorderGreaterThanOrEqualTo(Integer value) {
			addCriterion("menuorder >=", value, "menuorder");
			return this;
		}

		public Criteria andMenuorderLessThan(Integer value) {
			addCriterion("menuorder <", value, "menuorder");
			return this;
		}

		public Criteria andMenuorderLessThanOrEqualTo(Integer value) {
			addCriterion("menuorder <=", value, "menuorder");
			return this;
		}

		public Criteria andMenuorderIn(List<Integer> values) {
			addCriterion("menuorder in", values, "menuorder");
			return this;
		}

		public Criteria andMenuorderNotIn(List<Integer> values) {
			addCriterion("menuorder not in", values, "menuorder");
			return this;
		}

		public Criteria andMenuorderBetween(Integer value1, Integer value2) {
			addCriterion("menuorder between", value1, value2, "menuorder");
			return this;
		}

		public Criteria andMenuorderNotBetween(Integer value1, Integer value2) {
			addCriterion("menuorder not between", value1, value2, "menuorder");
			return this;
		}

		public Criteria andMenuparentIsNull() {
			addCriterion("menuparent is null");
			return this;
		}

		public Criteria andMenuparentIsNotNull() {
			addCriterion("menuparent is not null");
			return this;
		}

		public Criteria andMenuparentEqualTo(Integer value) {
			addCriterion("menuparent =", value, "menuparent");
			return this;
		}

		public Criteria andMenuparentNotEqualTo(Integer value) {
			addCriterion("menuparent <>", value, "menuparent");
			return this;
		}

		public Criteria andMenuparentGreaterThan(Integer value) {
			addCriterion("menuparent >", value, "menuparent");
			return this;
		}

		public Criteria andMenuparentGreaterThanOrEqualTo(Integer value) {
			addCriterion("menuparent >=", value, "menuparent");
			return this;
		}

		public Criteria andMenuparentLessThan(Integer value) {
			addCriterion("menuparent <", value, "menuparent");
			return this;
		}

		public Criteria andMenuparentLessThanOrEqualTo(Integer value) {
			addCriterion("menuparent <=", value, "menuparent");
			return this;
		}

		public Criteria andMenuparentIn(List<Integer> values) {
			addCriterion("menuparent in", values, "menuparent");
			return this;
		}

		public Criteria andMenuparentNotIn(List<Integer> values) {
			addCriterion("menuparent not in", values, "menuparent");
			return this;
		}

		public Criteria andMenuparentBetween(Integer value1, Integer value2) {
			addCriterion("menuparent between", value1, value2, "menuparent");
			return this;
		}

		public Criteria andMenuparentNotBetween(Integer value1, Integer value2) {
			addCriterion("menuparent not between", value1, value2, "menuparent");
			return this;
		}
	}
}