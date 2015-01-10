package com.et59.cus.domain.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TDownloadExample {

	/**
	 * This field was generated by Apache iBATIS ibator. This field corresponds to the database table t_download
	 * @ibatorgenerated  Mon Dec 29 11:22:13 CST 2014
	 */
	protected String orderByClause;
	/**
	 * This field was generated by Apache iBATIS ibator. This field corresponds to the database table t_download
	 * @ibatorgenerated  Mon Dec 29 11:22:13 CST 2014
	 */
	protected List oredCriteria;

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_download
	 * @ibatorgenerated  Mon Dec 29 11:22:13 CST 2014
	 */
	public TDownloadExample() {
		oredCriteria = new ArrayList();
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_download
	 * @ibatorgenerated  Mon Dec 29 11:22:13 CST 2014
	 */
	protected TDownloadExample(TDownloadExample example) {
		this.orderByClause = example.orderByClause;
		this.oredCriteria = example.oredCriteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_download
	 * @ibatorgenerated  Mon Dec 29 11:22:13 CST 2014
	 */
	public void setOrderByClause(String orderByClause) {
		this.orderByClause = orderByClause;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_download
	 * @ibatorgenerated  Mon Dec 29 11:22:13 CST 2014
	 */
	public String getOrderByClause() {
		return orderByClause;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_download
	 * @ibatorgenerated  Mon Dec 29 11:22:13 CST 2014
	 */
	public List getOredCriteria() {
		return oredCriteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_download
	 * @ibatorgenerated  Mon Dec 29 11:22:13 CST 2014
	 */
	public void or(Criteria criteria) {
		oredCriteria.add(criteria);
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_download
	 * @ibatorgenerated  Mon Dec 29 11:22:13 CST 2014
	 */
	public Criteria createCriteria() {
		Criteria criteria = createCriteriaInternal();
		if (oredCriteria.size() == 0) {
			oredCriteria.add(criteria);
		}
		return criteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_download
	 * @ibatorgenerated  Mon Dec 29 11:22:13 CST 2014
	 */
	protected Criteria createCriteriaInternal() {
		Criteria criteria = new Criteria();
		return criteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_download
	 * @ibatorgenerated  Mon Dec 29 11:22:13 CST 2014
	 */
	public void clear() {
		oredCriteria.clear();
	}

	/**
	 * This class was generated by Apache iBATIS ibator. This class corresponds to the database table t_download
	 * @ibatorgenerated  Mon Dec 29 11:22:13 CST 2014
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

		public Criteria andFilenameIsNull() {
			addCriterion("filename is null");
			return this;
		}

		public Criteria andFilenameIsNotNull() {
			addCriterion("filename is not null");
			return this;
		}

		public Criteria andFilenameEqualTo(String value) {
			addCriterion("filename =", value, "filename");
			return this;
		}

		public Criteria andFilenameNotEqualTo(String value) {
			addCriterion("filename <>", value, "filename");
			return this;
		}

		public Criteria andFilenameGreaterThan(String value) {
			addCriterion("filename >", value, "filename");
			return this;
		}

		public Criteria andFilenameGreaterThanOrEqualTo(String value) {
			addCriterion("filename >=", value, "filename");
			return this;
		}

		public Criteria andFilenameLessThan(String value) {
			addCriterion("filename <", value, "filename");
			return this;
		}

		public Criteria andFilenameLessThanOrEqualTo(String value) {
			addCriterion("filename <=", value, "filename");
			return this;
		}

		public Criteria andFilenameLike(String value) {
			addCriterion("filename like", value, "filename");
			return this;
		}

		public Criteria andFilenameNotLike(String value) {
			addCriterion("filename not like", value, "filename");
			return this;
		}

		public Criteria andFilenameIn(List values) {
			addCriterion("filename in", values, "filename");
			return this;
		}

		public Criteria andFilenameNotIn(List values) {
			addCriterion("filename not in", values, "filename");
			return this;
		}

		public Criteria andFilenameBetween(String value1, String value2) {
			addCriterion("filename between", value1, value2, "filename");
			return this;
		}

		public Criteria andFilenameNotBetween(String value1, String value2) {
			addCriterion("filename not between", value1, value2, "filename");
			return this;
		}

		public Criteria andFilepathIsNull() {
			addCriterion("filepath is null");
			return this;
		}

		public Criteria andFilepathIsNotNull() {
			addCriterion("filepath is not null");
			return this;
		}

		public Criteria andFilepathEqualTo(String value) {
			addCriterion("filepath =", value, "filepath");
			return this;
		}

		public Criteria andFilepathNotEqualTo(String value) {
			addCriterion("filepath <>", value, "filepath");
			return this;
		}

		public Criteria andFilepathGreaterThan(String value) {
			addCriterion("filepath >", value, "filepath");
			return this;
		}

		public Criteria andFilepathGreaterThanOrEqualTo(String value) {
			addCriterion("filepath >=", value, "filepath");
			return this;
		}

		public Criteria andFilepathLessThan(String value) {
			addCriterion("filepath <", value, "filepath");
			return this;
		}

		public Criteria andFilepathLessThanOrEqualTo(String value) {
			addCriterion("filepath <=", value, "filepath");
			return this;
		}

		public Criteria andFilepathLike(String value) {
			addCriterion("filepath like", value, "filepath");
			return this;
		}

		public Criteria andFilepathNotLike(String value) {
			addCriterion("filepath not like", value, "filepath");
			return this;
		}

		public Criteria andFilepathIn(List values) {
			addCriterion("filepath in", values, "filepath");
			return this;
		}

		public Criteria andFilepathNotIn(List values) {
			addCriterion("filepath not in", values, "filepath");
			return this;
		}

		public Criteria andFilepathBetween(String value1, String value2) {
			addCriterion("filepath between", value1, value2, "filepath");
			return this;
		}

		public Criteria andFilepathNotBetween(String value1, String value2) {
			addCriterion("filepath not between", value1, value2, "filepath");
			return this;
		}

		public Criteria andFileisvalidIsNull() {
			addCriterion("fileisvalid is null");
			return this;
		}

		public Criteria andFileisvalidIsNotNull() {
			addCriterion("fileisvalid is not null");
			return this;
		}

		public Criteria andFileisvalidEqualTo(String value) {
			addCriterion("fileisvalid =", value, "fileisvalid");
			return this;
		}

		public Criteria andFileisvalidNotEqualTo(String value) {
			addCriterion("fileisvalid <>", value, "fileisvalid");
			return this;
		}

		public Criteria andFileisvalidGreaterThan(String value) {
			addCriterion("fileisvalid >", value, "fileisvalid");
			return this;
		}

		public Criteria andFileisvalidGreaterThanOrEqualTo(String value) {
			addCriterion("fileisvalid >=", value, "fileisvalid");
			return this;
		}

		public Criteria andFileisvalidLessThan(String value) {
			addCriterion("fileisvalid <", value, "fileisvalid");
			return this;
		}

		public Criteria andFileisvalidLessThanOrEqualTo(String value) {
			addCriterion("fileisvalid <=", value, "fileisvalid");
			return this;
		}

		public Criteria andFileisvalidLike(String value) {
			addCriterion("fileisvalid like", value, "fileisvalid");
			return this;
		}

		public Criteria andFileisvalidNotLike(String value) {
			addCriterion("fileisvalid not like", value, "fileisvalid");
			return this;
		}

		public Criteria andFileisvalidIn(List values) {
			addCriterion("fileisvalid in", values, "fileisvalid");
			return this;
		}

		public Criteria andFileisvalidNotIn(List values) {
			addCriterion("fileisvalid not in", values, "fileisvalid");
			return this;
		}

		public Criteria andFileisvalidBetween(String value1, String value2) {
			addCriterion("fileisvalid between", value1, value2, "fileisvalid");
			return this;
		}

		public Criteria andFileisvalidNotBetween(String value1, String value2) {
			addCriterion("fileisvalid not between", value1, value2,
					"fileisvalid");
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

		public Criteria andAuthorIsNull() {
			addCriterion("author is null");
			return this;
		}

		public Criteria andAuthorIsNotNull() {
			addCriterion("author is not null");
			return this;
		}

		public Criteria andAuthorEqualTo(String value) {
			addCriterion("author =", value, "author");
			return this;
		}

		public Criteria andAuthorNotEqualTo(String value) {
			addCriterion("author <>", value, "author");
			return this;
		}

		public Criteria andAuthorGreaterThan(String value) {
			addCriterion("author >", value, "author");
			return this;
		}

		public Criteria andAuthorGreaterThanOrEqualTo(String value) {
			addCriterion("author >=", value, "author");
			return this;
		}

		public Criteria andAuthorLessThan(String value) {
			addCriterion("author <", value, "author");
			return this;
		}

		public Criteria andAuthorLessThanOrEqualTo(String value) {
			addCriterion("author <=", value, "author");
			return this;
		}

		public Criteria andAuthorLike(String value) {
			addCriterion("author like", value, "author");
			return this;
		}

		public Criteria andAuthorNotLike(String value) {
			addCriterion("author not like", value, "author");
			return this;
		}

		public Criteria andAuthorIn(List values) {
			addCriterion("author in", values, "author");
			return this;
		}

		public Criteria andAuthorNotIn(List values) {
			addCriterion("author not in", values, "author");
			return this;
		}

		public Criteria andAuthorBetween(String value1, String value2) {
			addCriterion("author between", value1, value2, "author");
			return this;
		}

		public Criteria andAuthorNotBetween(String value1, String value2) {
			addCriterion("author not between", value1, value2, "author");
			return this;
		}

		public Criteria andDirectionsIsNull() {
			addCriterion("directions is null");
			return this;
		}

		public Criteria andDirectionsIsNotNull() {
			addCriterion("directions is not null");
			return this;
		}

		public Criteria andDirectionsEqualTo(String value) {
			addCriterion("directions =", value, "directions");
			return this;
		}

		public Criteria andDirectionsNotEqualTo(String value) {
			addCriterion("directions <>", value, "directions");
			return this;
		}

		public Criteria andDirectionsGreaterThan(String value) {
			addCriterion("directions >", value, "directions");
			return this;
		}

		public Criteria andDirectionsGreaterThanOrEqualTo(String value) {
			addCriterion("directions >=", value, "directions");
			return this;
		}

		public Criteria andDirectionsLessThan(String value) {
			addCriterion("directions <", value, "directions");
			return this;
		}

		public Criteria andDirectionsLessThanOrEqualTo(String value) {
			addCriterion("directions <=", value, "directions");
			return this;
		}

		public Criteria andDirectionsLike(String value) {
			addCriterion("directions like", value, "directions");
			return this;
		}

		public Criteria andDirectionsNotLike(String value) {
			addCriterion("directions not like", value, "directions");
			return this;
		}

		public Criteria andDirectionsIn(List values) {
			addCriterion("directions in", values, "directions");
			return this;
		}

		public Criteria andDirectionsNotIn(List values) {
			addCriterion("directions not in", values, "directions");
			return this;
		}

		public Criteria andDirectionsBetween(String value1, String value2) {
			addCriterion("directions between", value1, value2, "directions");
			return this;
		}

		public Criteria andDirectionsNotBetween(String value1, String value2) {
			addCriterion("directions not between", value1, value2, "directions");
			return this;
		}

		public Criteria andInfotypeIsNull() {
			addCriterion("infotype is null");
			return this;
		}

		public Criteria andInfotypeIsNotNull() {
			addCriterion("infotype is not null");
			return this;
		}

		public Criteria andInfotypeEqualTo(Integer value) {
			addCriterion("infotype =", value, "infotype");
			return this;
		}

		public Criteria andInfotypeNotEqualTo(Integer value) {
			addCriterion("infotype <>", value, "infotype");
			return this;
		}

		public Criteria andInfotypeGreaterThan(Integer value) {
			addCriterion("infotype >", value, "infotype");
			return this;
		}

		public Criteria andInfotypeGreaterThanOrEqualTo(Integer value) {
			addCriterion("infotype >=", value, "infotype");
			return this;
		}

		public Criteria andInfotypeLessThan(Integer value) {
			addCriterion("infotype <", value, "infotype");
			return this;
		}

		public Criteria andInfotypeLessThanOrEqualTo(Integer value) {
			addCriterion("infotype <=", value, "infotype");
			return this;
		}

		public Criteria andInfotypeIn(List values) {
			addCriterion("infotype in", values, "infotype");
			return this;
		}

		public Criteria andInfotypeNotIn(List values) {
			addCriterion("infotype not in", values, "infotype");
			return this;
		}

		public Criteria andInfotypeBetween(Integer value1, Integer value2) {
			addCriterion("infotype between", value1, value2, "infotype");
			return this;
		}

		public Criteria andInfotypeNotBetween(Integer value1, Integer value2) {
			addCriterion("infotype not between", value1, value2, "infotype");
			return this;
		}

		public Criteria andInfoorderIsNull() {
			addCriterion("infoorder is null");
			return this;
		}

		public Criteria andInfoorderIsNotNull() {
			addCriterion("infoorder is not null");
			return this;
		}

		public Criteria andInfoorderEqualTo(Integer value) {
			addCriterion("infoorder =", value, "infoorder");
			return this;
		}

		public Criteria andInfoorderNotEqualTo(Integer value) {
			addCriterion("infoorder <>", value, "infoorder");
			return this;
		}

		public Criteria andInfoorderGreaterThan(Integer value) {
			addCriterion("infoorder >", value, "infoorder");
			return this;
		}

		public Criteria andInfoorderGreaterThanOrEqualTo(Integer value) {
			addCriterion("infoorder >=", value, "infoorder");
			return this;
		}

		public Criteria andInfoorderLessThan(Integer value) {
			addCriterion("infoorder <", value, "infoorder");
			return this;
		}

		public Criteria andInfoorderLessThanOrEqualTo(Integer value) {
			addCriterion("infoorder <=", value, "infoorder");
			return this;
		}

		public Criteria andInfoorderIn(List values) {
			addCriterion("infoorder in", values, "infoorder");
			return this;
		}

		public Criteria andInfoorderNotIn(List values) {
			addCriterion("infoorder not in", values, "infoorder");
			return this;
		}

		public Criteria andInfoorderBetween(Integer value1, Integer value2) {
			addCriterion("infoorder between", value1, value2, "infoorder");
			return this;
		}

		public Criteria andInfoorderNotBetween(Integer value1, Integer value2) {
			addCriterion("infoorder not between", value1, value2, "infoorder");
			return this;
		}
	}
}