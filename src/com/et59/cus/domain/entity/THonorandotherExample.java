package com.et59.cus.domain.entity;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class THonorandotherExample {
    /**
     * This field was generated by Apache iBATIS ibator.
     * This field corresponds to the database table t_honorandother
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    protected String orderByClause;

    /**
     * This field was generated by Apache iBATIS ibator.
     * This field corresponds to the database table t_honorandother
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    protected List oredCriteria;

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_honorandother
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    public THonorandotherExample() {
        oredCriteria = new ArrayList();
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_honorandother
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    protected THonorandotherExample(THonorandotherExample example) {
        this.orderByClause = example.orderByClause;
        this.oredCriteria = example.oredCriteria;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_honorandother
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_honorandother
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_honorandother
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    public List getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_honorandother
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_honorandother
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_honorandother
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by Apache iBATIS ibator.
     * This method corresponds to the database table t_honorandother
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
     */
    public void clear() {
        oredCriteria.clear();
    }

    /**
     * This class was generated by Apache iBATIS ibator.
     * This class corresponds to the database table t_honorandother
     *
     * @ibatorgenerated Fri Jun 26 09:56:59 CST 2015
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

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            Map map = new HashMap();
            map.put("condition", condition);
            map.put("value", value);
            criteriaWithSingleValue.add(map);
        }

        protected void addCriterion(String condition, List values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            Map map = new HashMap();
            map.put("condition", condition);
            map.put("values", values);
            criteriaWithListValue.add(map);
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            List list = new ArrayList();
            list.add(value1);
            list.add(value2);
            Map map = new HashMap();
            map.put("condition", condition);
            map.put("values", list);
            criteriaWithBetweenValue.add(map);
        }

        public Criteria andHonoridIsNull() {
            addCriterion("honorId is null");
            return this;
        }

        public Criteria andHonoridIsNotNull() {
            addCriterion("honorId is not null");
            return this;
        }

        public Criteria andHonoridEqualTo(Long value) {
            addCriterion("honorId =", value, "honorid");
            return this;
        }

        public Criteria andHonoridNotEqualTo(Long value) {
            addCriterion("honorId <>", value, "honorid");
            return this;
        }

        public Criteria andHonoridGreaterThan(Long value) {
            addCriterion("honorId >", value, "honorid");
            return this;
        }

        public Criteria andHonoridGreaterThanOrEqualTo(Long value) {
            addCriterion("honorId >=", value, "honorid");
            return this;
        }

        public Criteria andHonoridLessThan(Long value) {
            addCriterion("honorId <", value, "honorid");
            return this;
        }

        public Criteria andHonoridLessThanOrEqualTo(Long value) {
            addCriterion("honorId <=", value, "honorid");
            return this;
        }

        public Criteria andHonoridIn(List values) {
            addCriterion("honorId in", values, "honorid");
            return this;
        }

        public Criteria andHonoridNotIn(List values) {
            addCriterion("honorId not in", values, "honorid");
            return this;
        }

        public Criteria andHonoridBetween(Long value1, Long value2) {
            addCriterion("honorId between", value1, value2, "honorid");
            return this;
        }

        public Criteria andHonoridNotBetween(Long value1, Long value2) {
            addCriterion("honorId not between", value1, value2, "honorid");
            return this;
        }

        public Criteria andHonortitleIsNull() {
            addCriterion("honorTitle is null");
            return this;
        }

        public Criteria andHonortitleIsNotNull() {
            addCriterion("honorTitle is not null");
            return this;
        }

        public Criteria andHonortitleEqualTo(String value) {
            addCriterion("honorTitle =", value, "honortitle");
            return this;
        }

        public Criteria andHonortitleNotEqualTo(String value) {
            addCriterion("honorTitle <>", value, "honortitle");
            return this;
        }

        public Criteria andHonortitleGreaterThan(String value) {
            addCriterion("honorTitle >", value, "honortitle");
            return this;
        }

        public Criteria andHonortitleGreaterThanOrEqualTo(String value) {
            addCriterion("honorTitle >=", value, "honortitle");
            return this;
        }

        public Criteria andHonortitleLessThan(String value) {
            addCriterion("honorTitle <", value, "honortitle");
            return this;
        }

        public Criteria andHonortitleLessThanOrEqualTo(String value) {
            addCriterion("honorTitle <=", value, "honortitle");
            return this;
        }

        public Criteria andHonortitleLike(String value) {
            addCriterion("honorTitle like", value, "honortitle");
            return this;
        }

        public Criteria andHonortitleNotLike(String value) {
            addCriterion("honorTitle not like", value, "honortitle");
            return this;
        }

        public Criteria andHonortitleIn(List values) {
            addCriterion("honorTitle in", values, "honortitle");
            return this;
        }

        public Criteria andHonortitleNotIn(List values) {
            addCriterion("honorTitle not in", values, "honortitle");
            return this;
        }

        public Criteria andHonortitleBetween(String value1, String value2) {
            addCriterion("honorTitle between", value1, value2, "honortitle");
            return this;
        }

        public Criteria andHonortitleNotBetween(String value1, String value2) {
            addCriterion("honorTitle not between", value1, value2, "honortitle");
            return this;
        }

        public Criteria andHonorleaveIsNull() {
            addCriterion("honorLeave is null");
            return this;
        }

        public Criteria andHonorleaveIsNotNull() {
            addCriterion("honorLeave is not null");
            return this;
        }

        public Criteria andHonorleaveEqualTo(String value) {
            addCriterion("honorLeave =", value, "honorleave");
            return this;
        }

        public Criteria andHonorleaveNotEqualTo(String value) {
            addCriterion("honorLeave <>", value, "honorleave");
            return this;
        }

        public Criteria andHonorleaveGreaterThan(String value) {
            addCriterion("honorLeave >", value, "honorleave");
            return this;
        }

        public Criteria andHonorleaveGreaterThanOrEqualTo(String value) {
            addCriterion("honorLeave >=", value, "honorleave");
            return this;
        }

        public Criteria andHonorleaveLessThan(String value) {
            addCriterion("honorLeave <", value, "honorleave");
            return this;
        }

        public Criteria andHonorleaveLessThanOrEqualTo(String value) {
            addCriterion("honorLeave <=", value, "honorleave");
            return this;
        }

        public Criteria andHonorleaveLike(String value) {
            addCriterion("honorLeave like", value, "honorleave");
            return this;
        }

        public Criteria andHonorleaveNotLike(String value) {
            addCriterion("honorLeave not like", value, "honorleave");
            return this;
        }

        public Criteria andHonorleaveIn(List values) {
            addCriterion("honorLeave in", values, "honorleave");
            return this;
        }

        public Criteria andHonorleaveNotIn(List values) {
            addCriterion("honorLeave not in", values, "honorleave");
            return this;
        }

        public Criteria andHonorleaveBetween(String value1, String value2) {
            addCriterion("honorLeave between", value1, value2, "honorleave");
            return this;
        }

        public Criteria andHonorleaveNotBetween(String value1, String value2) {
            addCriterion("honorLeave not between", value1, value2, "honorleave");
            return this;
        }

        public Criteria andHonordepIsNull() {
            addCriterion("honorDep is null");
            return this;
        }

        public Criteria andHonordepIsNotNull() {
            addCriterion("honorDep is not null");
            return this;
        }

        public Criteria andHonordepEqualTo(String value) {
            addCriterion("honorDep =", value, "honordep");
            return this;
        }

        public Criteria andHonordepNotEqualTo(String value) {
            addCriterion("honorDep <>", value, "honordep");
            return this;
        }

        public Criteria andHonordepGreaterThan(String value) {
            addCriterion("honorDep >", value, "honordep");
            return this;
        }

        public Criteria andHonordepGreaterThanOrEqualTo(String value) {
            addCriterion("honorDep >=", value, "honordep");
            return this;
        }

        public Criteria andHonordepLessThan(String value) {
            addCriterion("honorDep <", value, "honordep");
            return this;
        }

        public Criteria andHonordepLessThanOrEqualTo(String value) {
            addCriterion("honorDep <=", value, "honordep");
            return this;
        }

        public Criteria andHonordepLike(String value) {
            addCriterion("honorDep like", value, "honordep");
            return this;
        }

        public Criteria andHonordepNotLike(String value) {
            addCriterion("honorDep not like", value, "honordep");
            return this;
        }

        public Criteria andHonordepIn(List values) {
            addCriterion("honorDep in", values, "honordep");
            return this;
        }

        public Criteria andHonordepNotIn(List values) {
            addCriterion("honorDep not in", values, "honordep");
            return this;
        }

        public Criteria andHonordepBetween(String value1, String value2) {
            addCriterion("honorDep between", value1, value2, "honordep");
            return this;
        }

        public Criteria andHonordepNotBetween(String value1, String value2) {
            addCriterion("honorDep not between", value1, value2, "honordep");
            return this;
        }

        public Criteria andHonorremarkIsNull() {
            addCriterion("honorRemark is null");
            return this;
        }

        public Criteria andHonorremarkIsNotNull() {
            addCriterion("honorRemark is not null");
            return this;
        }

        public Criteria andHonorremarkEqualTo(String value) {
            addCriterion("honorRemark =", value, "honorremark");
            return this;
        }

        public Criteria andHonorremarkNotEqualTo(String value) {
            addCriterion("honorRemark <>", value, "honorremark");
            return this;
        }

        public Criteria andHonorremarkGreaterThan(String value) {
            addCriterion("honorRemark >", value, "honorremark");
            return this;
        }

        public Criteria andHonorremarkGreaterThanOrEqualTo(String value) {
            addCriterion("honorRemark >=", value, "honorremark");
            return this;
        }

        public Criteria andHonorremarkLessThan(String value) {
            addCriterion("honorRemark <", value, "honorremark");
            return this;
        }

        public Criteria andHonorremarkLessThanOrEqualTo(String value) {
            addCriterion("honorRemark <=", value, "honorremark");
            return this;
        }

        public Criteria andHonorremarkLike(String value) {
            addCriterion("honorRemark like", value, "honorremark");
            return this;
        }

        public Criteria andHonorremarkNotLike(String value) {
            addCriterion("honorRemark not like", value, "honorremark");
            return this;
        }

        public Criteria andHonorremarkIn(List values) {
            addCriterion("honorRemark in", values, "honorremark");
            return this;
        }

        public Criteria andHonorremarkNotIn(List values) {
            addCriterion("honorRemark not in", values, "honorremark");
            return this;
        }

        public Criteria andHonorremarkBetween(String value1, String value2) {
            addCriterion("honorRemark between", value1, value2, "honorremark");
            return this;
        }

        public Criteria andHonorremarkNotBetween(String value1, String value2) {
            addCriterion("honorRemark not between", value1, value2, "honorremark");
            return this;
        }
    }
}