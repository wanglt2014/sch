package com.et59.cus.domain.entity;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Date;
import java.util.Iterator;

public class TTeacherExample {

	/**
	 * This field was generated by Apache iBATIS ibator. This field corresponds to the database table t_teacher
	 * @ibatorgenerated  Mon Feb 16 17:46:03 CST 2015
	 */
	protected String orderByClause;
	/**
	 * This field was generated by Apache iBATIS ibator. This field corresponds to the database table t_teacher
	 * @ibatorgenerated  Mon Feb 16 17:46:03 CST 2015
	 */
	protected List oredCriteria;

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_teacher
	 * @ibatorgenerated  Mon Feb 16 17:46:03 CST 2015
	 */
	public TTeacherExample() {
		oredCriteria = new ArrayList();
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_teacher
	 * @ibatorgenerated  Mon Feb 16 17:46:03 CST 2015
	 */
	protected TTeacherExample(TTeacherExample example) {
		this.orderByClause = example.orderByClause;
		this.oredCriteria = example.oredCriteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_teacher
	 * @ibatorgenerated  Mon Feb 16 17:46:03 CST 2015
	 */
	public void setOrderByClause(String orderByClause) {
		this.orderByClause = orderByClause;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_teacher
	 * @ibatorgenerated  Mon Feb 16 17:46:03 CST 2015
	 */
	public String getOrderByClause() {
		return orderByClause;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_teacher
	 * @ibatorgenerated  Mon Feb 16 17:46:03 CST 2015
	 */
	public List getOredCriteria() {
		return oredCriteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_teacher
	 * @ibatorgenerated  Mon Feb 16 17:46:03 CST 2015
	 */
	public void or(Criteria criteria) {
		oredCriteria.add(criteria);
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_teacher
	 * @ibatorgenerated  Mon Feb 16 17:46:03 CST 2015
	 */
	public Criteria createCriteria() {
		Criteria criteria = createCriteriaInternal();
		if (oredCriteria.size() == 0) {
			oredCriteria.add(criteria);
		}
		return criteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_teacher
	 * @ibatorgenerated  Mon Feb 16 17:46:03 CST 2015
	 */
	protected Criteria createCriteriaInternal() {
		Criteria criteria = new Criteria();
		return criteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_teacher
	 * @ibatorgenerated  Mon Feb 16 17:46:03 CST 2015
	 */
	public void clear() {
		oredCriteria.clear();
	}

	/**
	 * This class was generated by Apache iBATIS ibator. This class corresponds to the database table t_teacher
	 * @ibatorgenerated  Mon Feb 16 17:46:03 CST 2015
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

		protected void addCriterionForJDBCDate(String condition, Date value,
				String property) {
			addCriterion(condition, new java.sql.Date(value.getTime()),
					property);
		}

		protected void addCriterionForJDBCDate(String condition, List values,
				String property) {
			if (values == null || values.size() == 0) {
				throw new RuntimeException("Value list for " + property
						+ " cannot be null or empty");
			}
			List dateList = new ArrayList();
			Iterator iter = values.iterator();
			while (iter.hasNext()) {
				dateList.add(new java.sql.Date(((Date) iter.next()).getTime()));
			}
			addCriterion(condition, dateList, property);
		}

		protected void addCriterionForJDBCDate(String condition, Date value1,
				Date value2, String property) {
			if (value1 == null || value2 == null) {
				throw new RuntimeException("Between values for " + property
						+ " cannot be null");
			}
			addCriterion(condition, new java.sql.Date(value1.getTime()),
					new java.sql.Date(value2.getTime()), property);
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

		public Criteria andTeachernameIsNull() {
			addCriterion("teachername is null");
			return this;
		}

		public Criteria andTeachernameIsNotNull() {
			addCriterion("teachername is not null");
			return this;
		}

		public Criteria andTeachernameEqualTo(String value) {
			addCriterion("teachername =", value, "teachername");
			return this;
		}

		public Criteria andTeachernameNotEqualTo(String value) {
			addCriterion("teachername <>", value, "teachername");
			return this;
		}

		public Criteria andTeachernameGreaterThan(String value) {
			addCriterion("teachername >", value, "teachername");
			return this;
		}

		public Criteria andTeachernameGreaterThanOrEqualTo(String value) {
			addCriterion("teachername >=", value, "teachername");
			return this;
		}

		public Criteria andTeachernameLessThan(String value) {
			addCriterion("teachername <", value, "teachername");
			return this;
		}

		public Criteria andTeachernameLessThanOrEqualTo(String value) {
			addCriterion("teachername <=", value, "teachername");
			return this;
		}

		public Criteria andTeachernameLike(String value) {
			addCriterion("teachername like", value, "teachername");
			return this;
		}

		public Criteria andTeachernameNotLike(String value) {
			addCriterion("teachername not like", value, "teachername");
			return this;
		}

		public Criteria andTeachernameIn(List values) {
			addCriterion("teachername in", values, "teachername");
			return this;
		}

		public Criteria andTeachernameNotIn(List values) {
			addCriterion("teachername not in", values, "teachername");
			return this;
		}

		public Criteria andTeachernameBetween(String value1, String value2) {
			addCriterion("teachername between", value1, value2, "teachername");
			return this;
		}

		public Criteria andTeachernameNotBetween(String value1, String value2) {
			addCriterion("teachername not between", value1, value2,
					"teachername");
			return this;
		}

		public Criteria andTitleIsNull() {
			addCriterion("title is null");
			return this;
		}

		public Criteria andTitleIsNotNull() {
			addCriterion("title is not null");
			return this;
		}

		public Criteria andTitleEqualTo(String value) {
			addCriterion("title =", value, "title");
			return this;
		}

		public Criteria andTitleNotEqualTo(String value) {
			addCriterion("title <>", value, "title");
			return this;
		}

		public Criteria andTitleGreaterThan(String value) {
			addCriterion("title >", value, "title");
			return this;
		}

		public Criteria andTitleGreaterThanOrEqualTo(String value) {
			addCriterion("title >=", value, "title");
			return this;
		}

		public Criteria andTitleLessThan(String value) {
			addCriterion("title <", value, "title");
			return this;
		}

		public Criteria andTitleLessThanOrEqualTo(String value) {
			addCriterion("title <=", value, "title");
			return this;
		}

		public Criteria andTitleLike(String value) {
			addCriterion("title like", value, "title");
			return this;
		}

		public Criteria andTitleNotLike(String value) {
			addCriterion("title not like", value, "title");
			return this;
		}

		public Criteria andTitleIn(List values) {
			addCriterion("title in", values, "title");
			return this;
		}

		public Criteria andTitleNotIn(List values) {
			addCriterion("title not in", values, "title");
			return this;
		}

		public Criteria andTitleBetween(String value1, String value2) {
			addCriterion("title between", value1, value2, "title");
			return this;
		}

		public Criteria andTitleNotBetween(String value1, String value2) {
			addCriterion("title not between", value1, value2, "title");
			return this;
		}

		public Criteria andCollegeIsNull() {
			addCriterion("college is null");
			return this;
		}

		public Criteria andCollegeIsNotNull() {
			addCriterion("college is not null");
			return this;
		}

		public Criteria andCollegeEqualTo(Integer value) {
			addCriterion("college =", value, "college");
			return this;
		}

		public Criteria andCollegeNotEqualTo(Integer value) {
			addCriterion("college <>", value, "college");
			return this;
		}

		public Criteria andCollegeGreaterThan(Integer value) {
			addCriterion("college >", value, "college");
			return this;
		}

		public Criteria andCollegeGreaterThanOrEqualTo(Integer value) {
			addCriterion("college >=", value, "college");
			return this;
		}

		public Criteria andCollegeLessThan(Integer value) {
			addCriterion("college <", value, "college");
			return this;
		}

		public Criteria andCollegeLessThanOrEqualTo(Integer value) {
			addCriterion("college <=", value, "college");
			return this;
		}

		public Criteria andCollegeIn(List values) {
			addCriterion("college in", values, "college");
			return this;
		}

		public Criteria andCollegeNotIn(List values) {
			addCriterion("college not in", values, "college");
			return this;
		}

		public Criteria andCollegeBetween(Integer value1, Integer value2) {
			addCriterion("college between", value1, value2, "college");
			return this;
		}

		public Criteria andCollegeNotBetween(Integer value1, Integer value2) {
			addCriterion("college not between", value1, value2, "college");
			return this;
		}

		public Criteria andDepartmentIsNull() {
			addCriterion("department is null");
			return this;
		}

		public Criteria andDepartmentIsNotNull() {
			addCriterion("department is not null");
			return this;
		}

		public Criteria andDepartmentEqualTo(Integer value) {
			addCriterion("department =", value, "department");
			return this;
		}

		public Criteria andDepartmentNotEqualTo(Integer value) {
			addCriterion("department <>", value, "department");
			return this;
		}

		public Criteria andDepartmentGreaterThan(Integer value) {
			addCriterion("department >", value, "department");
			return this;
		}

		public Criteria andDepartmentGreaterThanOrEqualTo(Integer value) {
			addCriterion("department >=", value, "department");
			return this;
		}

		public Criteria andDepartmentLessThan(Integer value) {
			addCriterion("department <", value, "department");
			return this;
		}

		public Criteria andDepartmentLessThanOrEqualTo(Integer value) {
			addCriterion("department <=", value, "department");
			return this;
		}

		public Criteria andDepartmentIn(List values) {
			addCriterion("department in", values, "department");
			return this;
		}

		public Criteria andDepartmentNotIn(List values) {
			addCriterion("department not in", values, "department");
			return this;
		}

		public Criteria andDepartmentBetween(Integer value1, Integer value2) {
			addCriterion("department between", value1, value2, "department");
			return this;
		}

		public Criteria andDepartmentNotBetween(Integer value1, Integer value2) {
			addCriterion("department not between", value1, value2, "department");
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

		public Criteria andDepartmentnameIsNull() {
			addCriterion("departmentname is null");
			return this;
		}

		public Criteria andDepartmentnameIsNotNull() {
			addCriterion("departmentname is not null");
			return this;
		}

		public Criteria andDepartmentnameEqualTo(String value) {
			addCriterion("departmentname =", value, "departmentname");
			return this;
		}

		public Criteria andDepartmentnameNotEqualTo(String value) {
			addCriterion("departmentname <>", value, "departmentname");
			return this;
		}

		public Criteria andDepartmentnameGreaterThan(String value) {
			addCriterion("departmentname >", value, "departmentname");
			return this;
		}

		public Criteria andDepartmentnameGreaterThanOrEqualTo(String value) {
			addCriterion("departmentname >=", value, "departmentname");
			return this;
		}

		public Criteria andDepartmentnameLessThan(String value) {
			addCriterion("departmentname <", value, "departmentname");
			return this;
		}

		public Criteria andDepartmentnameLessThanOrEqualTo(String value) {
			addCriterion("departmentname <=", value, "departmentname");
			return this;
		}

		public Criteria andDepartmentnameLike(String value) {
			addCriterion("departmentname like", value, "departmentname");
			return this;
		}

		public Criteria andDepartmentnameNotLike(String value) {
			addCriterion("departmentname not like", value, "departmentname");
			return this;
		}

		public Criteria andDepartmentnameIn(List values) {
			addCriterion("departmentname in", values, "departmentname");
			return this;
		}

		public Criteria andDepartmentnameNotIn(List values) {
			addCriterion("departmentname not in", values, "departmentname");
			return this;
		}

		public Criteria andDepartmentnameBetween(String value1, String value2) {
			addCriterion("departmentname between", value1, value2,
					"departmentname");
			return this;
		}

		public Criteria andDepartmentnameNotBetween(String value1, String value2) {
			addCriterion("departmentname not between", value1, value2,
					"departmentname");
			return this;
		}

		public Criteria andPhoneIsNull() {
			addCriterion("phone is null");
			return this;
		}

		public Criteria andPhoneIsNotNull() {
			addCriterion("phone is not null");
			return this;
		}

		public Criteria andPhoneEqualTo(String value) {
			addCriterion("phone =", value, "phone");
			return this;
		}

		public Criteria andPhoneNotEqualTo(String value) {
			addCriterion("phone <>", value, "phone");
			return this;
		}

		public Criteria andPhoneGreaterThan(String value) {
			addCriterion("phone >", value, "phone");
			return this;
		}

		public Criteria andPhoneGreaterThanOrEqualTo(String value) {
			addCriterion("phone >=", value, "phone");
			return this;
		}

		public Criteria andPhoneLessThan(String value) {
			addCriterion("phone <", value, "phone");
			return this;
		}

		public Criteria andPhoneLessThanOrEqualTo(String value) {
			addCriterion("phone <=", value, "phone");
			return this;
		}

		public Criteria andPhoneLike(String value) {
			addCriterion("phone like", value, "phone");
			return this;
		}

		public Criteria andPhoneNotLike(String value) {
			addCriterion("phone not like", value, "phone");
			return this;
		}

		public Criteria andPhoneIn(List values) {
			addCriterion("phone in", values, "phone");
			return this;
		}

		public Criteria andPhoneNotIn(List values) {
			addCriterion("phone not in", values, "phone");
			return this;
		}

		public Criteria andPhoneBetween(String value1, String value2) {
			addCriterion("phone between", value1, value2, "phone");
			return this;
		}

		public Criteria andPhoneNotBetween(String value1, String value2) {
			addCriterion("phone not between", value1, value2, "phone");
			return this;
		}

		public Criteria andPicpathIsNull() {
			addCriterion("picpath is null");
			return this;
		}

		public Criteria andPicpathIsNotNull() {
			addCriterion("picpath is not null");
			return this;
		}

		public Criteria andPicpathEqualTo(String value) {
			addCriterion("picpath =", value, "picpath");
			return this;
		}

		public Criteria andPicpathNotEqualTo(String value) {
			addCriterion("picpath <>", value, "picpath");
			return this;
		}

		public Criteria andPicpathGreaterThan(String value) {
			addCriterion("picpath >", value, "picpath");
			return this;
		}

		public Criteria andPicpathGreaterThanOrEqualTo(String value) {
			addCriterion("picpath >=", value, "picpath");
			return this;
		}

		public Criteria andPicpathLessThan(String value) {
			addCriterion("picpath <", value, "picpath");
			return this;
		}

		public Criteria andPicpathLessThanOrEqualTo(String value) {
			addCriterion("picpath <=", value, "picpath");
			return this;
		}

		public Criteria andPicpathLike(String value) {
			addCriterion("picpath like", value, "picpath");
			return this;
		}

		public Criteria andPicpathNotLike(String value) {
			addCriterion("picpath not like", value, "picpath");
			return this;
		}

		public Criteria andPicpathIn(List values) {
			addCriterion("picpath in", values, "picpath");
			return this;
		}

		public Criteria andPicpathNotIn(List values) {
			addCriterion("picpath not in", values, "picpath");
			return this;
		}

		public Criteria andPicpathBetween(String value1, String value2) {
			addCriterion("picpath between", value1, value2, "picpath");
			return this;
		}

		public Criteria andPicpathNotBetween(String value1, String value2) {
			addCriterion("picpath not between", value1, value2, "picpath");
			return this;
		}

		public Criteria andContentIsNull() {
			addCriterion("content is null");
			return this;
		}

		public Criteria andContentIsNotNull() {
			addCriterion("content is not null");
			return this;
		}

		public Criteria andContentEqualTo(String value) {
			addCriterion("content =", value, "content");
			return this;
		}

		public Criteria andContentNotEqualTo(String value) {
			addCriterion("content <>", value, "content");
			return this;
		}

		public Criteria andContentGreaterThan(String value) {
			addCriterion("content >", value, "content");
			return this;
		}

		public Criteria andContentGreaterThanOrEqualTo(String value) {
			addCriterion("content >=", value, "content");
			return this;
		}

		public Criteria andContentLessThan(String value) {
			addCriterion("content <", value, "content");
			return this;
		}

		public Criteria andContentLessThanOrEqualTo(String value) {
			addCriterion("content <=", value, "content");
			return this;
		}

		public Criteria andContentLike(String value) {
			addCriterion("content like", value, "content");
			return this;
		}

		public Criteria andContentNotLike(String value) {
			addCriterion("content not like", value, "content");
			return this;
		}

		public Criteria andContentIn(List values) {
			addCriterion("content in", values, "content");
			return this;
		}

		public Criteria andContentNotIn(List values) {
			addCriterion("content not in", values, "content");
			return this;
		}

		public Criteria andContentBetween(String value1, String value2) {
			addCriterion("content between", value1, value2, "content");
			return this;
		}

		public Criteria andContentNotBetween(String value1, String value2) {
			addCriterion("content not between", value1, value2, "content");
			return this;
		}

		public Criteria andIsshowIsNull() {
			addCriterion("isshow is null");
			return this;
		}

		public Criteria andIsshowIsNotNull() {
			addCriterion("isshow is not null");
			return this;
		}

		public Criteria andIsshowEqualTo(String value) {
			addCriterion("isshow =", value, "isshow");
			return this;
		}

		public Criteria andIsshowNotEqualTo(String value) {
			addCriterion("isshow <>", value, "isshow");
			return this;
		}

		public Criteria andIsshowGreaterThan(String value) {
			addCriterion("isshow >", value, "isshow");
			return this;
		}

		public Criteria andIsshowGreaterThanOrEqualTo(String value) {
			addCriterion("isshow >=", value, "isshow");
			return this;
		}

		public Criteria andIsshowLessThan(String value) {
			addCriterion("isshow <", value, "isshow");
			return this;
		}

		public Criteria andIsshowLessThanOrEqualTo(String value) {
			addCriterion("isshow <=", value, "isshow");
			return this;
		}

		public Criteria andIsshowLike(String value) {
			addCriterion("isshow like", value, "isshow");
			return this;
		}

		public Criteria andIsshowNotLike(String value) {
			addCriterion("isshow not like", value, "isshow");
			return this;
		}

		public Criteria andIsshowIn(List values) {
			addCriterion("isshow in", values, "isshow");
			return this;
		}

		public Criteria andIsshowNotIn(List values) {
			addCriterion("isshow not in", values, "isshow");
			return this;
		}

		public Criteria andIsshowBetween(String value1, String value2) {
			addCriterion("isshow between", value1, value2, "isshow");
			return this;
		}

		public Criteria andIsshowNotBetween(String value1, String value2) {
			addCriterion("isshow not between", value1, value2, "isshow");
			return this;
		}

		public Criteria andBirthdayIsNull() {
			addCriterion("birthday is null");
			return this;
		}

		public Criteria andBirthdayIsNotNull() {
			addCriterion("birthday is not null");
			return this;
		}

		public Criteria andBirthdayEqualTo(Date value) {
			addCriterionForJDBCDate("birthday =", value, "birthday");
			return this;
		}

		public Criteria andBirthdayNotEqualTo(Date value) {
			addCriterionForJDBCDate("birthday <>", value, "birthday");
			return this;
		}

		public Criteria andBirthdayGreaterThan(Date value) {
			addCriterionForJDBCDate("birthday >", value, "birthday");
			return this;
		}

		public Criteria andBirthdayGreaterThanOrEqualTo(Date value) {
			addCriterionForJDBCDate("birthday >=", value, "birthday");
			return this;
		}

		public Criteria andBirthdayLessThan(Date value) {
			addCriterionForJDBCDate("birthday <", value, "birthday");
			return this;
		}

		public Criteria andBirthdayLessThanOrEqualTo(Date value) {
			addCriterionForJDBCDate("birthday <=", value, "birthday");
			return this;
		}

		public Criteria andBirthdayIn(List values) {
			addCriterionForJDBCDate("birthday in", values, "birthday");
			return this;
		}

		public Criteria andBirthdayNotIn(List values) {
			addCriterionForJDBCDate("birthday not in", values, "birthday");
			return this;
		}

		public Criteria andBirthdayBetween(Date value1, Date value2) {
			addCriterionForJDBCDate("birthday between", value1, value2,
					"birthday");
			return this;
		}

		public Criteria andBirthdayNotBetween(Date value1, Date value2) {
			addCriterionForJDBCDate("birthday not between", value1, value2,
					"birthday");
			return this;
		}

		public Criteria andJobIsNull() {
			addCriterion("job is null");
			return this;
		}

		public Criteria andJobIsNotNull() {
			addCriterion("job is not null");
			return this;
		}

		public Criteria andJobEqualTo(String value) {
			addCriterion("job =", value, "job");
			return this;
		}

		public Criteria andJobNotEqualTo(String value) {
			addCriterion("job <>", value, "job");
			return this;
		}

		public Criteria andJobGreaterThan(String value) {
			addCriterion("job >", value, "job");
			return this;
		}

		public Criteria andJobGreaterThanOrEqualTo(String value) {
			addCriterion("job >=", value, "job");
			return this;
		}

		public Criteria andJobLessThan(String value) {
			addCriterion("job <", value, "job");
			return this;
		}

		public Criteria andJobLessThanOrEqualTo(String value) {
			addCriterion("job <=", value, "job");
			return this;
		}

		public Criteria andJobLike(String value) {
			addCriterion("job like", value, "job");
			return this;
		}

		public Criteria andJobNotLike(String value) {
			addCriterion("job not like", value, "job");
			return this;
		}

		public Criteria andJobIn(List values) {
			addCriterion("job in", values, "job");
			return this;
		}

		public Criteria andJobNotIn(List values) {
			addCriterion("job not in", values, "job");
			return this;
		}

		public Criteria andJobBetween(String value1, String value2) {
			addCriterion("job between", value1, value2, "job");
			return this;
		}

		public Criteria andJobNotBetween(String value1, String value2) {
			addCriterion("job not between", value1, value2, "job");
			return this;
		}

		public Criteria andTutortypeIsNull() {
			addCriterion("tutorType is null");
			return this;
		}

		public Criteria andTutortypeIsNotNull() {
			addCriterion("tutorType is not null");
			return this;
		}

		public Criteria andTutortypeEqualTo(Integer value) {
			addCriterion("tutorType =", value, "tutortype");
			return this;
		}

		public Criteria andTutortypeNotEqualTo(Integer value) {
			addCriterion("tutorType <>", value, "tutortype");
			return this;
		}

		public Criteria andTutortypeGreaterThan(Integer value) {
			addCriterion("tutorType >", value, "tutortype");
			return this;
		}

		public Criteria andTutortypeGreaterThanOrEqualTo(Integer value) {
			addCriterion("tutorType >=", value, "tutortype");
			return this;
		}

		public Criteria andTutortypeLessThan(Integer value) {
			addCriterion("tutorType <", value, "tutortype");
			return this;
		}

		public Criteria andTutortypeLessThanOrEqualTo(Integer value) {
			addCriterion("tutorType <=", value, "tutortype");
			return this;
		}

		public Criteria andTutortypeIn(List values) {
			addCriterion("tutorType in", values, "tutortype");
			return this;
		}

		public Criteria andTutortypeNotIn(List values) {
			addCriterion("tutorType not in", values, "tutortype");
			return this;
		}

		public Criteria andTutortypeBetween(Integer value1, Integer value2) {
			addCriterion("tutorType between", value1, value2, "tutortype");
			return this;
		}

		public Criteria andTutortypeNotBetween(Integer value1, Integer value2) {
			addCriterion("tutorType not between", value1, value2, "tutortype");
			return this;
		}

		public Criteria andIntroductionIsNull() {
			addCriterion("introduction is null");
			return this;
		}

		public Criteria andIntroductionIsNotNull() {
			addCriterion("introduction is not null");
			return this;
		}

		public Criteria andIntroductionEqualTo(String value) {
			addCriterion("introduction =", value, "introduction");
			return this;
		}

		public Criteria andIntroductionNotEqualTo(String value) {
			addCriterion("introduction <>", value, "introduction");
			return this;
		}

		public Criteria andIntroductionGreaterThan(String value) {
			addCriterion("introduction >", value, "introduction");
			return this;
		}

		public Criteria andIntroductionGreaterThanOrEqualTo(String value) {
			addCriterion("introduction >=", value, "introduction");
			return this;
		}

		public Criteria andIntroductionLessThan(String value) {
			addCriterion("introduction <", value, "introduction");
			return this;
		}

		public Criteria andIntroductionLessThanOrEqualTo(String value) {
			addCriterion("introduction <=", value, "introduction");
			return this;
		}

		public Criteria andIntroductionLike(String value) {
			addCriterion("introduction like", value, "introduction");
			return this;
		}

		public Criteria andIntroductionNotLike(String value) {
			addCriterion("introduction not like", value, "introduction");
			return this;
		}

		public Criteria andIntroductionIn(List values) {
			addCriterion("introduction in", values, "introduction");
			return this;
		}

		public Criteria andIntroductionNotIn(List values) {
			addCriterion("introduction not in", values, "introduction");
			return this;
		}

		public Criteria andIntroductionBetween(String value1, String value2) {
			addCriterion("introduction between", value1, value2, "introduction");
			return this;
		}

		public Criteria andIntroductionNotBetween(String value1, String value2) {
			addCriterion("introduction not between", value1, value2,
					"introduction");
			return this;
		}

		public Criteria andIimageurllIsNull() {
			addCriterion("iimageURLl is null");
			return this;
		}

		public Criteria andIimageurllIsNotNull() {
			addCriterion("iimageURLl is not null");
			return this;
		}

		public Criteria andIimageurllEqualTo(String value) {
			addCriterion("iimageURLl =", value, "iimageurll");
			return this;
		}

		public Criteria andIimageurllNotEqualTo(String value) {
			addCriterion("iimageURLl <>", value, "iimageurll");
			return this;
		}

		public Criteria andIimageurllGreaterThan(String value) {
			addCriterion("iimageURLl >", value, "iimageurll");
			return this;
		}

		public Criteria andIimageurllGreaterThanOrEqualTo(String value) {
			addCriterion("iimageURLl >=", value, "iimageurll");
			return this;
		}

		public Criteria andIimageurllLessThan(String value) {
			addCriterion("iimageURLl <", value, "iimageurll");
			return this;
		}

		public Criteria andIimageurllLessThanOrEqualTo(String value) {
			addCriterion("iimageURLl <=", value, "iimageurll");
			return this;
		}

		public Criteria andIimageurllLike(String value) {
			addCriterion("iimageURLl like", value, "iimageurll");
			return this;
		}

		public Criteria andIimageurllNotLike(String value) {
			addCriterion("iimageURLl not like", value, "iimageurll");
			return this;
		}

		public Criteria andIimageurllIn(List values) {
			addCriterion("iimageURLl in", values, "iimageurll");
			return this;
		}

		public Criteria andIimageurllNotIn(List values) {
			addCriterion("iimageURLl not in", values, "iimageurll");
			return this;
		}

		public Criteria andIimageurllBetween(String value1, String value2) {
			addCriterion("iimageURLl between", value1, value2, "iimageurll");
			return this;
		}

		public Criteria andIimageurllNotBetween(String value1, String value2) {
			addCriterion("iimageURLl not between", value1, value2, "iimageurll");
			return this;
		}
	}
}