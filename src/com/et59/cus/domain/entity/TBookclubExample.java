package com.et59.cus.domain.entity;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TBookclubExample {

	/**
	 * This field was generated by Apache iBATIS ibator. This field corresponds to the database table t_bookclub
	 * @ibatorgenerated  Wed Jul 22 17:12:28 CST 2015
	 */
	protected String orderByClause;
	/**
	 * This field was generated by Apache iBATIS ibator. This field corresponds to the database table t_bookclub
	 * @ibatorgenerated  Wed Jul 22 17:12:28 CST 2015
	 */
	protected List oredCriteria;

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_bookclub
	 * @ibatorgenerated  Wed Jul 22 17:12:28 CST 2015
	 */
	public TBookclubExample() {
		oredCriteria = new ArrayList();
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_bookclub
	 * @ibatorgenerated  Wed Jul 22 17:12:28 CST 2015
	 */
	protected TBookclubExample(TBookclubExample example) {
		this.orderByClause = example.orderByClause;
		this.oredCriteria = example.oredCriteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_bookclub
	 * @ibatorgenerated  Wed Jul 22 17:12:28 CST 2015
	 */
	public void setOrderByClause(String orderByClause) {
		this.orderByClause = orderByClause;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_bookclub
	 * @ibatorgenerated  Wed Jul 22 17:12:28 CST 2015
	 */
	public String getOrderByClause() {
		return orderByClause;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_bookclub
	 * @ibatorgenerated  Wed Jul 22 17:12:28 CST 2015
	 */
	public List getOredCriteria() {
		return oredCriteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_bookclub
	 * @ibatorgenerated  Wed Jul 22 17:12:28 CST 2015
	 */
	public void or(Criteria criteria) {
		oredCriteria.add(criteria);
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_bookclub
	 * @ibatorgenerated  Wed Jul 22 17:12:28 CST 2015
	 */
	public Criteria createCriteria() {
		Criteria criteria = createCriteriaInternal();
		if (oredCriteria.size() == 0) {
			oredCriteria.add(criteria);
		}
		return criteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_bookclub
	 * @ibatorgenerated  Wed Jul 22 17:12:28 CST 2015
	 */
	protected Criteria createCriteriaInternal() {
		Criteria criteria = new Criteria();
		return criteria;
	}

	/**
	 * This method was generated by Apache iBATIS ibator. This method corresponds to the database table t_bookclub
	 * @ibatorgenerated  Wed Jul 22 17:12:28 CST 2015
	 */
	public void clear() {
		oredCriteria.clear();
	}

	/**
	 * This class was generated by Apache iBATIS ibator. This class corresponds to the database table t_bookclub
	 * @ibatorgenerated  Wed Jul 22 17:12:28 CST 2015
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

		public Criteria andBookclubidIsNull() {
			addCriterion("bookClubId is null");
			return this;
		}

		public Criteria andBookclubidIsNotNull() {
			addCriterion("bookClubId is not null");
			return this;
		}

		public Criteria andBookclubidEqualTo(Long value) {
			addCriterion("bookClubId =", value, "bookclubid");
			return this;
		}

		public Criteria andBookclubidNotEqualTo(Long value) {
			addCriterion("bookClubId <>", value, "bookclubid");
			return this;
		}

		public Criteria andBookclubidGreaterThan(Long value) {
			addCriterion("bookClubId >", value, "bookclubid");
			return this;
		}

		public Criteria andBookclubidGreaterThanOrEqualTo(Long value) {
			addCriterion("bookClubId >=", value, "bookclubid");
			return this;
		}

		public Criteria andBookclubidLessThan(Long value) {
			addCriterion("bookClubId <", value, "bookclubid");
			return this;
		}

		public Criteria andBookclubidLessThanOrEqualTo(Long value) {
			addCriterion("bookClubId <=", value, "bookclubid");
			return this;
		}

		public Criteria andBookclubidIn(List values) {
			addCriterion("bookClubId in", values, "bookclubid");
			return this;
		}

		public Criteria andBookclubidNotIn(List values) {
			addCriterion("bookClubId not in", values, "bookclubid");
			return this;
		}

		public Criteria andBookclubidBetween(Long value1, Long value2) {
			addCriterion("bookClubId between", value1, value2, "bookclubid");
			return this;
		}

		public Criteria andBookclubidNotBetween(Long value1, Long value2) {
			addCriterion("bookClubId not between", value1, value2, "bookclubid");
			return this;
		}

		public Criteria andBookclubnameIsNull() {
			addCriterion("bookClubName is null");
			return this;
		}

		public Criteria andBookclubnameIsNotNull() {
			addCriterion("bookClubName is not null");
			return this;
		}

		public Criteria andBookclubnameEqualTo(String value) {
			addCriterion("bookClubName =", value, "bookclubname");
			return this;
		}

		public Criteria andBookclubnameNotEqualTo(String value) {
			addCriterion("bookClubName <>", value, "bookclubname");
			return this;
		}

		public Criteria andBookclubnameGreaterThan(String value) {
			addCriterion("bookClubName >", value, "bookclubname");
			return this;
		}

		public Criteria andBookclubnameGreaterThanOrEqualTo(String value) {
			addCriterion("bookClubName >=", value, "bookclubname");
			return this;
		}

		public Criteria andBookclubnameLessThan(String value) {
			addCriterion("bookClubName <", value, "bookclubname");
			return this;
		}

		public Criteria andBookclubnameLessThanOrEqualTo(String value) {
			addCriterion("bookClubName <=", value, "bookclubname");
			return this;
		}

		public Criteria andBookclubnameLike(String value) {
			addCriterion("bookClubName like", value, "bookclubname");
			return this;
		}

		public Criteria andBookclubnameNotLike(String value) {
			addCriterion("bookClubName not like", value, "bookclubname");
			return this;
		}

		public Criteria andBookclubnameIn(List values) {
			addCriterion("bookClubName in", values, "bookclubname");
			return this;
		}

		public Criteria andBookclubnameNotIn(List values) {
			addCriterion("bookClubName not in", values, "bookclubname");
			return this;
		}

		public Criteria andBookclubnameBetween(String value1, String value2) {
			addCriterion("bookClubName between", value1, value2, "bookclubname");
			return this;
		}

		public Criteria andBookclubnameNotBetween(String value1, String value2) {
			addCriterion("bookClubName not between", value1, value2,
					"bookclubname");
			return this;
		}

		public Criteria andConvenerIsNull() {
			addCriterion("convener is null");
			return this;
		}

		public Criteria andConvenerIsNotNull() {
			addCriterion("convener is not null");
			return this;
		}

		public Criteria andConvenerEqualTo(String value) {
			addCriterion("convener =", value, "convener");
			return this;
		}

		public Criteria andConvenerNotEqualTo(String value) {
			addCriterion("convener <>", value, "convener");
			return this;
		}

		public Criteria andConvenerGreaterThan(String value) {
			addCriterion("convener >", value, "convener");
			return this;
		}

		public Criteria andConvenerGreaterThanOrEqualTo(String value) {
			addCriterion("convener >=", value, "convener");
			return this;
		}

		public Criteria andConvenerLessThan(String value) {
			addCriterion("convener <", value, "convener");
			return this;
		}

		public Criteria andConvenerLessThanOrEqualTo(String value) {
			addCriterion("convener <=", value, "convener");
			return this;
		}

		public Criteria andConvenerLike(String value) {
			addCriterion("convener like", value, "convener");
			return this;
		}

		public Criteria andConvenerNotLike(String value) {
			addCriterion("convener not like", value, "convener");
			return this;
		}

		public Criteria andConvenerIn(List values) {
			addCriterion("convener in", values, "convener");
			return this;
		}

		public Criteria andConvenerNotIn(List values) {
			addCriterion("convener not in", values, "convener");
			return this;
		}

		public Criteria andConvenerBetween(String value1, String value2) {
			addCriterion("convener between", value1, value2, "convener");
			return this;
		}

		public Criteria andConvenerNotBetween(String value1, String value2) {
			addCriterion("convener not between", value1, value2, "convener");
			return this;
		}

		public Criteria andSpeakerIsNull() {
			addCriterion("speaker is null");
			return this;
		}

		public Criteria andSpeakerIsNotNull() {
			addCriterion("speaker is not null");
			return this;
		}

		public Criteria andSpeakerEqualTo(String value) {
			addCriterion("speaker =", value, "speaker");
			return this;
		}

		public Criteria andSpeakerNotEqualTo(String value) {
			addCriterion("speaker <>", value, "speaker");
			return this;
		}

		public Criteria andSpeakerGreaterThan(String value) {
			addCriterion("speaker >", value, "speaker");
			return this;
		}

		public Criteria andSpeakerGreaterThanOrEqualTo(String value) {
			addCriterion("speaker >=", value, "speaker");
			return this;
		}

		public Criteria andSpeakerLessThan(String value) {
			addCriterion("speaker <", value, "speaker");
			return this;
		}

		public Criteria andSpeakerLessThanOrEqualTo(String value) {
			addCriterion("speaker <=", value, "speaker");
			return this;
		}

		public Criteria andSpeakerLike(String value) {
			addCriterion("speaker like", value, "speaker");
			return this;
		}

		public Criteria andSpeakerNotLike(String value) {
			addCriterion("speaker not like", value, "speaker");
			return this;
		}

		public Criteria andSpeakerIn(List values) {
			addCriterion("speaker in", values, "speaker");
			return this;
		}

		public Criteria andSpeakerNotIn(List values) {
			addCriterion("speaker not in", values, "speaker");
			return this;
		}

		public Criteria andSpeakerBetween(String value1, String value2) {
			addCriterion("speaker between", value1, value2, "speaker");
			return this;
		}

		public Criteria andSpeakerNotBetween(String value1, String value2) {
			addCriterion("speaker not between", value1, value2, "speaker");
			return this;
		}

		public Criteria andMaincommentIsNull() {
			addCriterion("mainComment is null");
			return this;
		}

		public Criteria andMaincommentIsNotNull() {
			addCriterion("mainComment is not null");
			return this;
		}

		public Criteria andMaincommentEqualTo(String value) {
			addCriterion("mainComment =", value, "maincomment");
			return this;
		}

		public Criteria andMaincommentNotEqualTo(String value) {
			addCriterion("mainComment <>", value, "maincomment");
			return this;
		}

		public Criteria andMaincommentGreaterThan(String value) {
			addCriterion("mainComment >", value, "maincomment");
			return this;
		}

		public Criteria andMaincommentGreaterThanOrEqualTo(String value) {
			addCriterion("mainComment >=", value, "maincomment");
			return this;
		}

		public Criteria andMaincommentLessThan(String value) {
			addCriterion("mainComment <", value, "maincomment");
			return this;
		}

		public Criteria andMaincommentLessThanOrEqualTo(String value) {
			addCriterion("mainComment <=", value, "maincomment");
			return this;
		}

		public Criteria andMaincommentLike(String value) {
			addCriterion("mainComment like", value, "maincomment");
			return this;
		}

		public Criteria andMaincommentNotLike(String value) {
			addCriterion("mainComment not like", value, "maincomment");
			return this;
		}

		public Criteria andMaincommentIn(List values) {
			addCriterion("mainComment in", values, "maincomment");
			return this;
		}

		public Criteria andMaincommentNotIn(List values) {
			addCriterion("mainComment not in", values, "maincomment");
			return this;
		}

		public Criteria andMaincommentBetween(String value1, String value2) {
			addCriterion("mainComment between", value1, value2, "maincomment");
			return this;
		}

		public Criteria andMaincommentNotBetween(String value1, String value2) {
			addCriterion("mainComment not between", value1, value2,
					"maincomment");
			return this;
		}

		public Criteria andCommentsIsNull() {
			addCriterion("comments is null");
			return this;
		}

		public Criteria andCommentsIsNotNull() {
			addCriterion("comments is not null");
			return this;
		}

		public Criteria andCommentsEqualTo(String value) {
			addCriterion("comments =", value, "comments");
			return this;
		}

		public Criteria andCommentsNotEqualTo(String value) {
			addCriterion("comments <>", value, "comments");
			return this;
		}

		public Criteria andCommentsGreaterThan(String value) {
			addCriterion("comments >", value, "comments");
			return this;
		}

		public Criteria andCommentsGreaterThanOrEqualTo(String value) {
			addCriterion("comments >=", value, "comments");
			return this;
		}

		public Criteria andCommentsLessThan(String value) {
			addCriterion("comments <", value, "comments");
			return this;
		}

		public Criteria andCommentsLessThanOrEqualTo(String value) {
			addCriterion("comments <=", value, "comments");
			return this;
		}

		public Criteria andCommentsLike(String value) {
			addCriterion("comments like", value, "comments");
			return this;
		}

		public Criteria andCommentsNotLike(String value) {
			addCriterion("comments not like", value, "comments");
			return this;
		}

		public Criteria andCommentsIn(List values) {
			addCriterion("comments in", values, "comments");
			return this;
		}

		public Criteria andCommentsNotIn(List values) {
			addCriterion("comments not in", values, "comments");
			return this;
		}

		public Criteria andCommentsBetween(String value1, String value2) {
			addCriterion("comments between", value1, value2, "comments");
			return this;
		}

		public Criteria andCommentsNotBetween(String value1, String value2) {
			addCriterion("comments not between", value1, value2, "comments");
			return this;
		}

		public Criteria andPlaceIsNull() {
			addCriterion("place is null");
			return this;
		}

		public Criteria andPlaceIsNotNull() {
			addCriterion("place is not null");
			return this;
		}

		public Criteria andPlaceEqualTo(String value) {
			addCriterion("place =", value, "place");
			return this;
		}

		public Criteria andPlaceNotEqualTo(String value) {
			addCriterion("place <>", value, "place");
			return this;
		}

		public Criteria andPlaceGreaterThan(String value) {
			addCriterion("place >", value, "place");
			return this;
		}

		public Criteria andPlaceGreaterThanOrEqualTo(String value) {
			addCriterion("place >=", value, "place");
			return this;
		}

		public Criteria andPlaceLessThan(String value) {
			addCriterion("place <", value, "place");
			return this;
		}

		public Criteria andPlaceLessThanOrEqualTo(String value) {
			addCriterion("place <=", value, "place");
			return this;
		}

		public Criteria andPlaceLike(String value) {
			addCriterion("place like", value, "place");
			return this;
		}

		public Criteria andPlaceNotLike(String value) {
			addCriterion("place not like", value, "place");
			return this;
		}

		public Criteria andPlaceIn(List values) {
			addCriterion("place in", values, "place");
			return this;
		}

		public Criteria andPlaceNotIn(List values) {
			addCriterion("place not in", values, "place");
			return this;
		}

		public Criteria andPlaceBetween(String value1, String value2) {
			addCriterion("place between", value1, value2, "place");
			return this;
		}

		public Criteria andPlaceNotBetween(String value1, String value2) {
			addCriterion("place not between", value1, value2, "place");
			return this;
		}

		public Criteria andTimeIsNull() {
			addCriterion("time is null");
			return this;
		}

		public Criteria andTimeIsNotNull() {
			addCriterion("time is not null");
			return this;
		}

		public Criteria andTimeEqualTo(String value) {
			addCriterion("time =", value, "time");
			return this;
		}

		public Criteria andTimeNotEqualTo(String value) {
			addCriterion("time <>", value, "time");
			return this;
		}

		public Criteria andTimeGreaterThan(String value) {
			addCriterion("time >", value, "time");
			return this;
		}

		public Criteria andTimeGreaterThanOrEqualTo(String value) {
			addCriterion("time >=", value, "time");
			return this;
		}

		public Criteria andTimeLessThan(String value) {
			addCriterion("time <", value, "time");
			return this;
		}

		public Criteria andTimeLessThanOrEqualTo(String value) {
			addCriterion("time <=", value, "time");
			return this;
		}

		public Criteria andTimeLike(String value) {
			addCriterion("time like", value, "time");
			return this;
		}

		public Criteria andTimeNotLike(String value) {
			addCriterion("time not like", value, "time");
			return this;
		}

		public Criteria andTimeIn(List values) {
			addCriterion("time in", values, "time");
			return this;
		}

		public Criteria andTimeNotIn(List values) {
			addCriterion("time not in", values, "time");
			return this;
		}

		public Criteria andTimeBetween(String value1, String value2) {
			addCriterion("time between", value1, value2, "time");
			return this;
		}

		public Criteria andTimeNotBetween(String value1, String value2) {
			addCriterion("time not between", value1, value2, "time");
			return this;
		}

		public Criteria andParticipantsIsNull() {
			addCriterion("participants is null");
			return this;
		}

		public Criteria andParticipantsIsNotNull() {
			addCriterion("participants is not null");
			return this;
		}

		public Criteria andParticipantsEqualTo(String value) {
			addCriterion("participants =", value, "participants");
			return this;
		}

		public Criteria andParticipantsNotEqualTo(String value) {
			addCriterion("participants <>", value, "participants");
			return this;
		}

		public Criteria andParticipantsGreaterThan(String value) {
			addCriterion("participants >", value, "participants");
			return this;
		}

		public Criteria andParticipantsGreaterThanOrEqualTo(String value) {
			addCriterion("participants >=", value, "participants");
			return this;
		}

		public Criteria andParticipantsLessThan(String value) {
			addCriterion("participants <", value, "participants");
			return this;
		}

		public Criteria andParticipantsLessThanOrEqualTo(String value) {
			addCriterion("participants <=", value, "participants");
			return this;
		}

		public Criteria andParticipantsLike(String value) {
			addCriterion("participants like", value, "participants");
			return this;
		}

		public Criteria andParticipantsNotLike(String value) {
			addCriterion("participants not like", value, "participants");
			return this;
		}

		public Criteria andParticipantsIn(List values) {
			addCriterion("participants in", values, "participants");
			return this;
		}

		public Criteria andParticipantsNotIn(List values) {
			addCriterion("participants not in", values, "participants");
			return this;
		}

		public Criteria andParticipantsBetween(String value1, String value2) {
			addCriterion("participants between", value1, value2, "participants");
			return this;
		}

		public Criteria andParticipantsNotBetween(String value1, String value2) {
			addCriterion("participants not between", value1, value2,
					"participants");
			return this;
		}

		public Criteria andSubjectsIsNull() {
			addCriterion("subjects is null");
			return this;
		}

		public Criteria andSubjectsIsNotNull() {
			addCriterion("subjects is not null");
			return this;
		}

		public Criteria andSubjectsEqualTo(String value) {
			addCriterion("subjects =", value, "subjects");
			return this;
		}

		public Criteria andSubjectsNotEqualTo(String value) {
			addCriterion("subjects <>", value, "subjects");
			return this;
		}

		public Criteria andSubjectsGreaterThan(String value) {
			addCriterion("subjects >", value, "subjects");
			return this;
		}

		public Criteria andSubjectsGreaterThanOrEqualTo(String value) {
			addCriterion("subjects >=", value, "subjects");
			return this;
		}

		public Criteria andSubjectsLessThan(String value) {
			addCriterion("subjects <", value, "subjects");
			return this;
		}

		public Criteria andSubjectsLessThanOrEqualTo(String value) {
			addCriterion("subjects <=", value, "subjects");
			return this;
		}

		public Criteria andSubjectsLike(String value) {
			addCriterion("subjects like", value, "subjects");
			return this;
		}

		public Criteria andSubjectsNotLike(String value) {
			addCriterion("subjects not like", value, "subjects");
			return this;
		}

		public Criteria andSubjectsIn(List values) {
			addCriterion("subjects in", values, "subjects");
			return this;
		}

		public Criteria andSubjectsNotIn(List values) {
			addCriterion("subjects not in", values, "subjects");
			return this;
		}

		public Criteria andSubjectsBetween(String value1, String value2) {
			addCriterion("subjects between", value1, value2, "subjects");
			return this;
		}

		public Criteria andSubjectsNotBetween(String value1, String value2) {
			addCriterion("subjects not between", value1, value2, "subjects");
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
	}
}