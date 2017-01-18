package cn.edu.scau.zxks.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Graduation_informationExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public Graduation_informationExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andGraduationIdIsNull() {
            addCriterion("graduation_id is null");
            return (Criteria) this;
        }

        public Criteria andGraduationIdIsNotNull() {
            addCriterion("graduation_id is not null");
            return (Criteria) this;
        }

        public Criteria andGraduationIdEqualTo(String value) {
            addCriterion("graduation_id =", value, "graduationId");
            return (Criteria) this;
        }

        public Criteria andGraduationIdNotEqualTo(String value) {
            addCriterion("graduation_id <>", value, "graduationId");
            return (Criteria) this;
        }

        public Criteria andGraduationIdGreaterThan(String value) {
            addCriterion("graduation_id >", value, "graduationId");
            return (Criteria) this;
        }

        public Criteria andGraduationIdGreaterThanOrEqualTo(String value) {
            addCriterion("graduation_id >=", value, "graduationId");
            return (Criteria) this;
        }

        public Criteria andGraduationIdLessThan(String value) {
            addCriterion("graduation_id <", value, "graduationId");
            return (Criteria) this;
        }

        public Criteria andGraduationIdLessThanOrEqualTo(String value) {
            addCriterion("graduation_id <=", value, "graduationId");
            return (Criteria) this;
        }

        public Criteria andGraduationIdLike(String value) {
            addCriterion("graduation_id like", value, "graduationId");
            return (Criteria) this;
        }

        public Criteria andGraduationIdNotLike(String value) {
            addCriterion("graduation_id not like", value, "graduationId");
            return (Criteria) this;
        }

        public Criteria andGraduationIdIn(List<String> values) {
            addCriterion("graduation_id in", values, "graduationId");
            return (Criteria) this;
        }

        public Criteria andGraduationIdNotIn(List<String> values) {
            addCriterion("graduation_id not in", values, "graduationId");
            return (Criteria) this;
        }

        public Criteria andGraduationIdBetween(String value1, String value2) {
            addCriterion("graduation_id between", value1, value2, "graduationId");
            return (Criteria) this;
        }

        public Criteria andGraduationIdNotBetween(String value1, String value2) {
            addCriterion("graduation_id not between", value1, value2, "graduationId");
            return (Criteria) this;
        }

        public Criteria andStuNumIsNull() {
            addCriterion("stu_num is null");
            return (Criteria) this;
        }

        public Criteria andStuNumIsNotNull() {
            addCriterion("stu_num is not null");
            return (Criteria) this;
        }

        public Criteria andStuNumEqualTo(String value) {
            addCriterion("stu_num =", value, "stuNum");
            return (Criteria) this;
        }

        public Criteria andStuNumNotEqualTo(String value) {
            addCriterion("stu_num <>", value, "stuNum");
            return (Criteria) this;
        }

        public Criteria andStuNumGreaterThan(String value) {
            addCriterion("stu_num >", value, "stuNum");
            return (Criteria) this;
        }

        public Criteria andStuNumGreaterThanOrEqualTo(String value) {
            addCriterion("stu_num >=", value, "stuNum");
            return (Criteria) this;
        }

        public Criteria andStuNumLessThan(String value) {
            addCriterion("stu_num <", value, "stuNum");
            return (Criteria) this;
        }

        public Criteria andStuNumLessThanOrEqualTo(String value) {
            addCriterion("stu_num <=", value, "stuNum");
            return (Criteria) this;
        }

        public Criteria andStuNumLike(String value) {
            addCriterion("stu_num like", value, "stuNum");
            return (Criteria) this;
        }

        public Criteria andStuNumNotLike(String value) {
            addCriterion("stu_num not like", value, "stuNum");
            return (Criteria) this;
        }

        public Criteria andStuNumIn(List<String> values) {
            addCriterion("stu_num in", values, "stuNum");
            return (Criteria) this;
        }

        public Criteria andStuNumNotIn(List<String> values) {
            addCriterion("stu_num not in", values, "stuNum");
            return (Criteria) this;
        }

        public Criteria andStuNumBetween(String value1, String value2) {
            addCriterion("stu_num between", value1, value2, "stuNum");
            return (Criteria) this;
        }

        public Criteria andStuNumNotBetween(String value1, String value2) {
            addCriterion("stu_num not between", value1, value2, "stuNum");
            return (Criteria) this;
        }

        public Criteria andGraduationDateIsNull() {
            addCriterion("graduation_date is null");
            return (Criteria) this;
        }

        public Criteria andGraduationDateIsNotNull() {
            addCriterion("graduation_date is not null");
            return (Criteria) this;
        }

        public Criteria andGraduationDateEqualTo(Date value) {
            addCriterion("graduation_date =", value, "graduationDate");
            return (Criteria) this;
        }

        public Criteria andGraduationDateNotEqualTo(Date value) {
            addCriterion("graduation_date <>", value, "graduationDate");
            return (Criteria) this;
        }

        public Criteria andGraduationDateGreaterThan(Date value) {
            addCriterion("graduation_date >", value, "graduationDate");
            return (Criteria) this;
        }

        public Criteria andGraduationDateGreaterThanOrEqualTo(Date value) {
            addCriterion("graduation_date >=", value, "graduationDate");
            return (Criteria) this;
        }

        public Criteria andGraduationDateLessThan(Date value) {
            addCriterion("graduation_date <", value, "graduationDate");
            return (Criteria) this;
        }

        public Criteria andGraduationDateLessThanOrEqualTo(Date value) {
            addCriterion("graduation_date <=", value, "graduationDate");
            return (Criteria) this;
        }

        public Criteria andGraduationDateIn(List<Date> values) {
            addCriterion("graduation_date in", values, "graduationDate");
            return (Criteria) this;
        }

        public Criteria andGraduationDateNotIn(List<Date> values) {
            addCriterion("graduation_date not in", values, "graduationDate");
            return (Criteria) this;
        }

        public Criteria andGraduationDateBetween(Date value1, Date value2) {
            addCriterion("graduation_date between", value1, value2, "graduationDate");
            return (Criteria) this;
        }

        public Criteria andGraduationDateNotBetween(Date value1, Date value2) {
            addCriterion("graduation_date not between", value1, value2, "graduationDate");
            return (Criteria) this;
        }

        public Criteria andErrorInfoIsNull() {
            addCriterion("error_info is null");
            return (Criteria) this;
        }

        public Criteria andErrorInfoIsNotNull() {
            addCriterion("error_info is not null");
            return (Criteria) this;
        }

        public Criteria andErrorInfoEqualTo(String value) {
            addCriterion("error_info =", value, "errorInfo");
            return (Criteria) this;
        }

        public Criteria andErrorInfoNotEqualTo(String value) {
            addCriterion("error_info <>", value, "errorInfo");
            return (Criteria) this;
        }

        public Criteria andErrorInfoGreaterThan(String value) {
            addCriterion("error_info >", value, "errorInfo");
            return (Criteria) this;
        }

        public Criteria andErrorInfoGreaterThanOrEqualTo(String value) {
            addCriterion("error_info >=", value, "errorInfo");
            return (Criteria) this;
        }

        public Criteria andErrorInfoLessThan(String value) {
            addCriterion("error_info <", value, "errorInfo");
            return (Criteria) this;
        }

        public Criteria andErrorInfoLessThanOrEqualTo(String value) {
            addCriterion("error_info <=", value, "errorInfo");
            return (Criteria) this;
        }

        public Criteria andErrorInfoLike(String value) {
            addCriterion("error_info like", value, "errorInfo");
            return (Criteria) this;
        }

        public Criteria andErrorInfoNotLike(String value) {
            addCriterion("error_info not like", value, "errorInfo");
            return (Criteria) this;
        }

        public Criteria andErrorInfoIn(List<String> values) {
            addCriterion("error_info in", values, "errorInfo");
            return (Criteria) this;
        }

        public Criteria andErrorInfoNotIn(List<String> values) {
            addCriterion("error_info not in", values, "errorInfo");
            return (Criteria) this;
        }

        public Criteria andErrorInfoBetween(String value1, String value2) {
            addCriterion("error_info between", value1, value2, "errorInfo");
            return (Criteria) this;
        }

        public Criteria andErrorInfoNotBetween(String value1, String value2) {
            addCriterion("error_info not between", value1, value2, "errorInfo");
            return (Criteria) this;
        }

        public Criteria andLostInfoIsNull() {
            addCriterion("lost_info is null");
            return (Criteria) this;
        }

        public Criteria andLostInfoIsNotNull() {
            addCriterion("lost_info is not null");
            return (Criteria) this;
        }

        public Criteria andLostInfoEqualTo(String value) {
            addCriterion("lost_info =", value, "lostInfo");
            return (Criteria) this;
        }

        public Criteria andLostInfoNotEqualTo(String value) {
            addCriterion("lost_info <>", value, "lostInfo");
            return (Criteria) this;
        }

        public Criteria andLostInfoGreaterThan(String value) {
            addCriterion("lost_info >", value, "lostInfo");
            return (Criteria) this;
        }

        public Criteria andLostInfoGreaterThanOrEqualTo(String value) {
            addCriterion("lost_info >=", value, "lostInfo");
            return (Criteria) this;
        }

        public Criteria andLostInfoLessThan(String value) {
            addCriterion("lost_info <", value, "lostInfo");
            return (Criteria) this;
        }

        public Criteria andLostInfoLessThanOrEqualTo(String value) {
            addCriterion("lost_info <=", value, "lostInfo");
            return (Criteria) this;
        }

        public Criteria andLostInfoLike(String value) {
            addCriterion("lost_info like", value, "lostInfo");
            return (Criteria) this;
        }

        public Criteria andLostInfoNotLike(String value) {
            addCriterion("lost_info not like", value, "lostInfo");
            return (Criteria) this;
        }

        public Criteria andLostInfoIn(List<String> values) {
            addCriterion("lost_info in", values, "lostInfo");
            return (Criteria) this;
        }

        public Criteria andLostInfoNotIn(List<String> values) {
            addCriterion("lost_info not in", values, "lostInfo");
            return (Criteria) this;
        }

        public Criteria andLostInfoBetween(String value1, String value2) {
            addCriterion("lost_info between", value1, value2, "lostInfo");
            return (Criteria) this;
        }

        public Criteria andLostInfoNotBetween(String value1, String value2) {
            addCriterion("lost_info not between", value1, value2, "lostInfo");
            return (Criteria) this;
        }

        public Criteria andLostTimeIsNull() {
            addCriterion("lost_time is null");
            return (Criteria) this;
        }

        public Criteria andLostTimeIsNotNull() {
            addCriterion("lost_time is not null");
            return (Criteria) this;
        }

        public Criteria andLostTimeEqualTo(Date value) {
            addCriterion("lost_time =", value, "lostTime");
            return (Criteria) this;
        }

        public Criteria andLostTimeNotEqualTo(Date value) {
            addCriterion("lost_time <>", value, "lostTime");
            return (Criteria) this;
        }

        public Criteria andLostTimeGreaterThan(Date value) {
            addCriterion("lost_time >", value, "lostTime");
            return (Criteria) this;
        }

        public Criteria andLostTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("lost_time >=", value, "lostTime");
            return (Criteria) this;
        }

        public Criteria andLostTimeLessThan(Date value) {
            addCriterion("lost_time <", value, "lostTime");
            return (Criteria) this;
        }

        public Criteria andLostTimeLessThanOrEqualTo(Date value) {
            addCriterion("lost_time <=", value, "lostTime");
            return (Criteria) this;
        }

        public Criteria andLostTimeIn(List<Date> values) {
            addCriterion("lost_time in", values, "lostTime");
            return (Criteria) this;
        }

        public Criteria andLostTimeNotIn(List<Date> values) {
            addCriterion("lost_time not in", values, "lostTime");
            return (Criteria) this;
        }

        public Criteria andLostTimeBetween(Date value1, Date value2) {
            addCriterion("lost_time between", value1, value2, "lostTime");
            return (Criteria) this;
        }

        public Criteria andLostTimeNotBetween(Date value1, Date value2) {
            addCriterion("lost_time not between", value1, value2, "lostTime");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}