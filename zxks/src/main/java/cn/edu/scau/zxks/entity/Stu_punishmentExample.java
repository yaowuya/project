package cn.edu.scau.zxks.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Stu_punishmentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public Stu_punishmentExample() {
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

        public Criteria andPunishIdIsNull() {
            addCriterion("punish_id is null");
            return (Criteria) this;
        }

        public Criteria andPunishIdIsNotNull() {
            addCriterion("punish_id is not null");
            return (Criteria) this;
        }

        public Criteria andPunishIdEqualTo(String value) {
            addCriterion("punish_id =", value, "punishId");
            return (Criteria) this;
        }

        public Criteria andPunishIdNotEqualTo(String value) {
            addCriterion("punish_id <>", value, "punishId");
            return (Criteria) this;
        }

        public Criteria andPunishIdGreaterThan(String value) {
            addCriterion("punish_id >", value, "punishId");
            return (Criteria) this;
        }

        public Criteria andPunishIdGreaterThanOrEqualTo(String value) {
            addCriterion("punish_id >=", value, "punishId");
            return (Criteria) this;
        }

        public Criteria andPunishIdLessThan(String value) {
            addCriterion("punish_id <", value, "punishId");
            return (Criteria) this;
        }

        public Criteria andPunishIdLessThanOrEqualTo(String value) {
            addCriterion("punish_id <=", value, "punishId");
            return (Criteria) this;
        }

        public Criteria andPunishIdLike(String value) {
            addCriterion("punish_id like", value, "punishId");
            return (Criteria) this;
        }

        public Criteria andPunishIdNotLike(String value) {
            addCriterion("punish_id not like", value, "punishId");
            return (Criteria) this;
        }

        public Criteria andPunishIdIn(List<String> values) {
            addCriterion("punish_id in", values, "punishId");
            return (Criteria) this;
        }

        public Criteria andPunishIdNotIn(List<String> values) {
            addCriterion("punish_id not in", values, "punishId");
            return (Criteria) this;
        }

        public Criteria andPunishIdBetween(String value1, String value2) {
            addCriterion("punish_id between", value1, value2, "punishId");
            return (Criteria) this;
        }

        public Criteria andPunishIdNotBetween(String value1, String value2) {
            addCriterion("punish_id not between", value1, value2, "punishId");
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

        public Criteria andPunishTimeIsNull() {
            addCriterion("punish_time is null");
            return (Criteria) this;
        }

        public Criteria andPunishTimeIsNotNull() {
            addCriterion("punish_time is not null");
            return (Criteria) this;
        }

        public Criteria andPunishTimeEqualTo(Date value) {
            addCriterion("punish_time =", value, "punishTime");
            return (Criteria) this;
        }

        public Criteria andPunishTimeNotEqualTo(Date value) {
            addCriterion("punish_time <>", value, "punishTime");
            return (Criteria) this;
        }

        public Criteria andPunishTimeGreaterThan(Date value) {
            addCriterion("punish_time >", value, "punishTime");
            return (Criteria) this;
        }

        public Criteria andPunishTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("punish_time >=", value, "punishTime");
            return (Criteria) this;
        }

        public Criteria andPunishTimeLessThan(Date value) {
            addCriterion("punish_time <", value, "punishTime");
            return (Criteria) this;
        }

        public Criteria andPunishTimeLessThanOrEqualTo(Date value) {
            addCriterion("punish_time <=", value, "punishTime");
            return (Criteria) this;
        }

        public Criteria andPunishTimeIn(List<Date> values) {
            addCriterion("punish_time in", values, "punishTime");
            return (Criteria) this;
        }

        public Criteria andPunishTimeNotIn(List<Date> values) {
            addCriterion("punish_time not in", values, "punishTime");
            return (Criteria) this;
        }

        public Criteria andPunishTimeBetween(Date value1, Date value2) {
            addCriterion("punish_time between", value1, value2, "punishTime");
            return (Criteria) this;
        }

        public Criteria andPunishTimeNotBetween(Date value1, Date value2) {
            addCriterion("punish_time not between", value1, value2, "punishTime");
            return (Criteria) this;
        }

        public Criteria andPunishDetailIsNull() {
            addCriterion("punish_detail is null");
            return (Criteria) this;
        }

        public Criteria andPunishDetailIsNotNull() {
            addCriterion("punish_detail is not null");
            return (Criteria) this;
        }

        public Criteria andPunishDetailEqualTo(String value) {
            addCriterion("punish_detail =", value, "punishDetail");
            return (Criteria) this;
        }

        public Criteria andPunishDetailNotEqualTo(String value) {
            addCriterion("punish_detail <>", value, "punishDetail");
            return (Criteria) this;
        }

        public Criteria andPunishDetailGreaterThan(String value) {
            addCriterion("punish_detail >", value, "punishDetail");
            return (Criteria) this;
        }

        public Criteria andPunishDetailGreaterThanOrEqualTo(String value) {
            addCriterion("punish_detail >=", value, "punishDetail");
            return (Criteria) this;
        }

        public Criteria andPunishDetailLessThan(String value) {
            addCriterion("punish_detail <", value, "punishDetail");
            return (Criteria) this;
        }

        public Criteria andPunishDetailLessThanOrEqualTo(String value) {
            addCriterion("punish_detail <=", value, "punishDetail");
            return (Criteria) this;
        }

        public Criteria andPunishDetailLike(String value) {
            addCriterion("punish_detail like", value, "punishDetail");
            return (Criteria) this;
        }

        public Criteria andPunishDetailNotLike(String value) {
            addCriterion("punish_detail not like", value, "punishDetail");
            return (Criteria) this;
        }

        public Criteria andPunishDetailIn(List<String> values) {
            addCriterion("punish_detail in", values, "punishDetail");
            return (Criteria) this;
        }

        public Criteria andPunishDetailNotIn(List<String> values) {
            addCriterion("punish_detail not in", values, "punishDetail");
            return (Criteria) this;
        }

        public Criteria andPunishDetailBetween(String value1, String value2) {
            addCriterion("punish_detail between", value1, value2, "punishDetail");
            return (Criteria) this;
        }

        public Criteria andPunishDetailNotBetween(String value1, String value2) {
            addCriterion("punish_detail not between", value1, value2, "punishDetail");
            return (Criteria) this;
        }

        public Criteria andRemarkIsNull() {
            addCriterion("remark is null");
            return (Criteria) this;
        }

        public Criteria andRemarkIsNotNull() {
            addCriterion("remark is not null");
            return (Criteria) this;
        }

        public Criteria andRemarkEqualTo(String value) {
            addCriterion("remark =", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotEqualTo(String value) {
            addCriterion("remark <>", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkGreaterThan(String value) {
            addCriterion("remark >", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkGreaterThanOrEqualTo(String value) {
            addCriterion("remark >=", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLessThan(String value) {
            addCriterion("remark <", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLessThanOrEqualTo(String value) {
            addCriterion("remark <=", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLike(String value) {
            addCriterion("remark like", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotLike(String value) {
            addCriterion("remark not like", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkIn(List<String> values) {
            addCriterion("remark in", values, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotIn(List<String> values) {
            addCriterion("remark not in", values, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkBetween(String value1, String value2) {
            addCriterion("remark between", value1, value2, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotBetween(String value1, String value2) {
            addCriterion("remark not between", value1, value2, "remark");
            return (Criteria) this;
        }

        public Criteria andApplyIdIsNull() {
            addCriterion("apply_id is null");
            return (Criteria) this;
        }

        public Criteria andApplyIdIsNotNull() {
            addCriterion("apply_id is not null");
            return (Criteria) this;
        }

        public Criteria andApplyIdEqualTo(String value) {
            addCriterion("apply_id =", value, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdNotEqualTo(String value) {
            addCriterion("apply_id <>", value, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdGreaterThan(String value) {
            addCriterion("apply_id >", value, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdGreaterThanOrEqualTo(String value) {
            addCriterion("apply_id >=", value, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdLessThan(String value) {
            addCriterion("apply_id <", value, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdLessThanOrEqualTo(String value) {
            addCriterion("apply_id <=", value, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdLike(String value) {
            addCriterion("apply_id like", value, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdNotLike(String value) {
            addCriterion("apply_id not like", value, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdIn(List<String> values) {
            addCriterion("apply_id in", values, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdNotIn(List<String> values) {
            addCriterion("apply_id not in", values, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdBetween(String value1, String value2) {
            addCriterion("apply_id between", value1, value2, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdNotBetween(String value1, String value2) {
            addCriterion("apply_id not between", value1, value2, "applyId");
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