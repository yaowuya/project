package cn.edu.scau.zxks.entity;

import java.util.ArrayList;
import java.util.List;

public class StudentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public StudentExample() {
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

        public Criteria andEmailIsNull() {
            addCriterion("email is null");
            return (Criteria) this;
        }

        public Criteria andEmailIsNotNull() {
            addCriterion("email is not null");
            return (Criteria) this;
        }

        public Criteria andEmailEqualTo(String value) {
            addCriterion("email =", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotEqualTo(String value) {
            addCriterion("email <>", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailGreaterThan(String value) {
            addCriterion("email >", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailGreaterThanOrEqualTo(String value) {
            addCriterion("email >=", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLessThan(String value) {
            addCriterion("email <", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLessThanOrEqualTo(String value) {
            addCriterion("email <=", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLike(String value) {
            addCriterion("email like", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotLike(String value) {
            addCriterion("email not like", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailIn(List<String> values) {
            addCriterion("email in", values, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotIn(List<String> values) {
            addCriterion("email not in", values, "email");
            return (Criteria) this;
        }

        public Criteria andEmailBetween(String value1, String value2) {
            addCriterion("email between", value1, value2, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotBetween(String value1, String value2) {
            addCriterion("email not between", value1, value2, "email");
            return (Criteria) this;
        }

        public Criteria andSchoolIdIsNull() {
            addCriterion("school_id is null");
            return (Criteria) this;
        }

        public Criteria andSchoolIdIsNotNull() {
            addCriterion("school_id is not null");
            return (Criteria) this;
        }

        public Criteria andSchoolIdEqualTo(String value) {
            addCriterion("school_id =", value, "schoolId");
            return (Criteria) this;
        }

        public Criteria andSchoolIdNotEqualTo(String value) {
            addCriterion("school_id <>", value, "schoolId");
            return (Criteria) this;
        }

        public Criteria andSchoolIdGreaterThan(String value) {
            addCriterion("school_id >", value, "schoolId");
            return (Criteria) this;
        }

        public Criteria andSchoolIdGreaterThanOrEqualTo(String value) {
            addCriterion("school_id >=", value, "schoolId");
            return (Criteria) this;
        }

        public Criteria andSchoolIdLessThan(String value) {
            addCriterion("school_id <", value, "schoolId");
            return (Criteria) this;
        }

        public Criteria andSchoolIdLessThanOrEqualTo(String value) {
            addCriterion("school_id <=", value, "schoolId");
            return (Criteria) this;
        }

        public Criteria andSchoolIdLike(String value) {
            addCriterion("school_id like", value, "schoolId");
            return (Criteria) this;
        }

        public Criteria andSchoolIdNotLike(String value) {
            addCriterion("school_id not like", value, "schoolId");
            return (Criteria) this;
        }

        public Criteria andSchoolIdIn(List<String> values) {
            addCriterion("school_id in", values, "schoolId");
            return (Criteria) this;
        }

        public Criteria andSchoolIdNotIn(List<String> values) {
            addCriterion("school_id not in", values, "schoolId");
            return (Criteria) this;
        }

        public Criteria andSchoolIdBetween(String value1, String value2) {
            addCriterion("school_id between", value1, value2, "schoolId");
            return (Criteria) this;
        }

        public Criteria andSchoolIdNotBetween(String value1, String value2) {
            addCriterion("school_id not between", value1, value2, "schoolId");
            return (Criteria) this;
        }

        public Criteria andMajorIdIsNull() {
            addCriterion("major_id is null");
            return (Criteria) this;
        }

        public Criteria andMajorIdIsNotNull() {
            addCriterion("major_id is not null");
            return (Criteria) this;
        }

        public Criteria andMajorIdEqualTo(String value) {
            addCriterion("major_id =", value, "majorId");
            return (Criteria) this;
        }

        public Criteria andMajorIdNotEqualTo(String value) {
            addCriterion("major_id <>", value, "majorId");
            return (Criteria) this;
        }

        public Criteria andMajorIdGreaterThan(String value) {
            addCriterion("major_id >", value, "majorId");
            return (Criteria) this;
        }

        public Criteria andMajorIdGreaterThanOrEqualTo(String value) {
            addCriterion("major_id >=", value, "majorId");
            return (Criteria) this;
        }

        public Criteria andMajorIdLessThan(String value) {
            addCriterion("major_id <", value, "majorId");
            return (Criteria) this;
        }

        public Criteria andMajorIdLessThanOrEqualTo(String value) {
            addCriterion("major_id <=", value, "majorId");
            return (Criteria) this;
        }

        public Criteria andMajorIdLike(String value) {
            addCriterion("major_id like", value, "majorId");
            return (Criteria) this;
        }

        public Criteria andMajorIdNotLike(String value) {
            addCriterion("major_id not like", value, "majorId");
            return (Criteria) this;
        }

        public Criteria andMajorIdIn(List<String> values) {
            addCriterion("major_id in", values, "majorId");
            return (Criteria) this;
        }

        public Criteria andMajorIdNotIn(List<String> values) {
            addCriterion("major_id not in", values, "majorId");
            return (Criteria) this;
        }

        public Criteria andMajorIdBetween(String value1, String value2) {
            addCriterion("major_id between", value1, value2, "majorId");
            return (Criteria) this;
        }

        public Criteria andMajorIdNotBetween(String value1, String value2) {
            addCriterion("major_id not between", value1, value2, "majorId");
            return (Criteria) this;
        }

        public Criteria andGraduateStateIsNull() {
            addCriterion("graduate_state is null");
            return (Criteria) this;
        }

        public Criteria andGraduateStateIsNotNull() {
            addCriterion("graduate_state is not null");
            return (Criteria) this;
        }

        public Criteria andGraduateStateEqualTo(Integer value) {
            addCriterion("graduate_state =", value, "graduateState");
            return (Criteria) this;
        }

        public Criteria andGraduateStateNotEqualTo(Integer value) {
            addCriterion("graduate_state <>", value, "graduateState");
            return (Criteria) this;
        }

        public Criteria andGraduateStateGreaterThan(Integer value) {
            addCriterion("graduate_state >", value, "graduateState");
            return (Criteria) this;
        }

        public Criteria andGraduateStateGreaterThanOrEqualTo(Integer value) {
            addCriterion("graduate_state >=", value, "graduateState");
            return (Criteria) this;
        }

        public Criteria andGraduateStateLessThan(Integer value) {
            addCriterion("graduate_state <", value, "graduateState");
            return (Criteria) this;
        }

        public Criteria andGraduateStateLessThanOrEqualTo(Integer value) {
            addCriterion("graduate_state <=", value, "graduateState");
            return (Criteria) this;
        }

        public Criteria andGraduateStateIn(List<Integer> values) {
            addCriterion("graduate_state in", values, "graduateState");
            return (Criteria) this;
        }

        public Criteria andGraduateStateNotIn(List<Integer> values) {
            addCriterion("graduate_state not in", values, "graduateState");
            return (Criteria) this;
        }

        public Criteria andGraduateStateBetween(Integer value1, Integer value2) {
            addCriterion("graduate_state between", value1, value2, "graduateState");
            return (Criteria) this;
        }

        public Criteria andGraduateStateNotBetween(Integer value1, Integer value2) {
            addCriterion("graduate_state not between", value1, value2, "graduateState");
            return (Criteria) this;
        }

        public Criteria andEssayRemarkIsNull() {
            addCriterion("essay_remark is null");
            return (Criteria) this;
        }

        public Criteria andEssayRemarkIsNotNull() {
            addCriterion("essay_remark is not null");
            return (Criteria) this;
        }

        public Criteria andEssayRemarkEqualTo(Double value) {
            addCriterion("essay_remark =", value, "essayRemark");
            return (Criteria) this;
        }

        public Criteria andEssayRemarkNotEqualTo(Double value) {
            addCriterion("essay_remark <>", value, "essayRemark");
            return (Criteria) this;
        }

        public Criteria andEssayRemarkGreaterThan(Double value) {
            addCriterion("essay_remark >", value, "essayRemark");
            return (Criteria) this;
        }

        public Criteria andEssayRemarkGreaterThanOrEqualTo(Double value) {
            addCriterion("essay_remark >=", value, "essayRemark");
            return (Criteria) this;
        }

        public Criteria andEssayRemarkLessThan(Double value) {
            addCriterion("essay_remark <", value, "essayRemark");
            return (Criteria) this;
        }

        public Criteria andEssayRemarkLessThanOrEqualTo(Double value) {
            addCriterion("essay_remark <=", value, "essayRemark");
            return (Criteria) this;
        }

        public Criteria andEssayRemarkIn(List<Double> values) {
            addCriterion("essay_remark in", values, "essayRemark");
            return (Criteria) this;
        }

        public Criteria andEssayRemarkNotIn(List<Double> values) {
            addCriterion("essay_remark not in", values, "essayRemark");
            return (Criteria) this;
        }

        public Criteria andEssayRemarkBetween(Double value1, Double value2) {
            addCriterion("essay_remark between", value1, value2, "essayRemark");
            return (Criteria) this;
        }

        public Criteria andEssayRemarkNotBetween(Double value1, Double value2) {
            addCriterion("essay_remark not between", value1, value2, "essayRemark");
            return (Criteria) this;
        }

        public Criteria andIdCardIsNull() {
            addCriterion("id_card is null");
            return (Criteria) this;
        }

        public Criteria andIdCardIsNotNull() {
            addCriterion("id_card is not null");
            return (Criteria) this;
        }

        public Criteria andIdCardEqualTo(String value) {
            addCriterion("id_card =", value, "idCard");
            return (Criteria) this;
        }

        public Criteria andIdCardNotEqualTo(String value) {
            addCriterion("id_card <>", value, "idCard");
            return (Criteria) this;
        }

        public Criteria andIdCardGreaterThan(String value) {
            addCriterion("id_card >", value, "idCard");
            return (Criteria) this;
        }

        public Criteria andIdCardGreaterThanOrEqualTo(String value) {
            addCriterion("id_card >=", value, "idCard");
            return (Criteria) this;
        }

        public Criteria andIdCardLessThan(String value) {
            addCriterion("id_card <", value, "idCard");
            return (Criteria) this;
        }

        public Criteria andIdCardLessThanOrEqualTo(String value) {
            addCriterion("id_card <=", value, "idCard");
            return (Criteria) this;
        }

        public Criteria andIdCardLike(String value) {
            addCriterion("id_card like", value, "idCard");
            return (Criteria) this;
        }

        public Criteria andIdCardNotLike(String value) {
            addCriterion("id_card not like", value, "idCard");
            return (Criteria) this;
        }

        public Criteria andIdCardIn(List<String> values) {
            addCriterion("id_card in", values, "idCard");
            return (Criteria) this;
        }

        public Criteria andIdCardNotIn(List<String> values) {
            addCriterion("id_card not in", values, "idCard");
            return (Criteria) this;
        }

        public Criteria andIdCardBetween(String value1, String value2) {
            addCriterion("id_card between", value1, value2, "idCard");
            return (Criteria) this;
        }

        public Criteria andIdCardNotBetween(String value1, String value2) {
            addCriterion("id_card not between", value1, value2, "idCard");
            return (Criteria) this;
        }

        public Criteria andExamScoreIsNull() {
            addCriterion("exam_score is null");
            return (Criteria) this;
        }

        public Criteria andExamScoreIsNotNull() {
            addCriterion("exam_score is not null");
            return (Criteria) this;
        }

        public Criteria andExamScoreEqualTo(Double value) {
            addCriterion("exam_score =", value, "examScore");
            return (Criteria) this;
        }

        public Criteria andExamScoreNotEqualTo(Double value) {
            addCriterion("exam_score <>", value, "examScore");
            return (Criteria) this;
        }

        public Criteria andExamScoreGreaterThan(Double value) {
            addCriterion("exam_score >", value, "examScore");
            return (Criteria) this;
        }

        public Criteria andExamScoreGreaterThanOrEqualTo(Double value) {
            addCriterion("exam_score >=", value, "examScore");
            return (Criteria) this;
        }

        public Criteria andExamScoreLessThan(Double value) {
            addCriterion("exam_score <", value, "examScore");
            return (Criteria) this;
        }

        public Criteria andExamScoreLessThanOrEqualTo(Double value) {
            addCriterion("exam_score <=", value, "examScore");
            return (Criteria) this;
        }

        public Criteria andExamScoreIn(List<Double> values) {
            addCriterion("exam_score in", values, "examScore");
            return (Criteria) this;
        }

        public Criteria andExamScoreNotIn(List<Double> values) {
            addCriterion("exam_score not in", values, "examScore");
            return (Criteria) this;
        }

        public Criteria andExamScoreBetween(Double value1, Double value2) {
            addCriterion("exam_score between", value1, value2, "examScore");
            return (Criteria) this;
        }

        public Criteria andExamScoreNotBetween(Double value1, Double value2) {
            addCriterion("exam_score not between", value1, value2, "examScore");
            return (Criteria) this;
        }

        public Criteria andContactPersonIsNull() {
            addCriterion("contact_person is null");
            return (Criteria) this;
        }

        public Criteria andContactPersonIsNotNull() {
            addCriterion("contact_person is not null");
            return (Criteria) this;
        }

        public Criteria andContactPersonEqualTo(String value) {
            addCriterion("contact_person =", value, "contactPerson");
            return (Criteria) this;
        }

        public Criteria andContactPersonNotEqualTo(String value) {
            addCriterion("contact_person <>", value, "contactPerson");
            return (Criteria) this;
        }

        public Criteria andContactPersonGreaterThan(String value) {
            addCriterion("contact_person >", value, "contactPerson");
            return (Criteria) this;
        }

        public Criteria andContactPersonGreaterThanOrEqualTo(String value) {
            addCriterion("contact_person >=", value, "contactPerson");
            return (Criteria) this;
        }

        public Criteria andContactPersonLessThan(String value) {
            addCriterion("contact_person <", value, "contactPerson");
            return (Criteria) this;
        }

        public Criteria andContactPersonLessThanOrEqualTo(String value) {
            addCriterion("contact_person <=", value, "contactPerson");
            return (Criteria) this;
        }

        public Criteria andContactPersonLike(String value) {
            addCriterion("contact_person like", value, "contactPerson");
            return (Criteria) this;
        }

        public Criteria andContactPersonNotLike(String value) {
            addCriterion("contact_person not like", value, "contactPerson");
            return (Criteria) this;
        }

        public Criteria andContactPersonIn(List<String> values) {
            addCriterion("contact_person in", values, "contactPerson");
            return (Criteria) this;
        }

        public Criteria andContactPersonNotIn(List<String> values) {
            addCriterion("contact_person not in", values, "contactPerson");
            return (Criteria) this;
        }

        public Criteria andContactPersonBetween(String value1, String value2) {
            addCriterion("contact_person between", value1, value2, "contactPerson");
            return (Criteria) this;
        }

        public Criteria andContactPersonNotBetween(String value1, String value2) {
            addCriterion("contact_person not between", value1, value2, "contactPerson");
            return (Criteria) this;
        }

        public Criteria andContactPhoneIsNull() {
            addCriterion("contact_phone is null");
            return (Criteria) this;
        }

        public Criteria andContactPhoneIsNotNull() {
            addCriterion("contact_phone is not null");
            return (Criteria) this;
        }

        public Criteria andContactPhoneEqualTo(String value) {
            addCriterion("contact_phone =", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneNotEqualTo(String value) {
            addCriterion("contact_phone <>", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneGreaterThan(String value) {
            addCriterion("contact_phone >", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("contact_phone >=", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneLessThan(String value) {
            addCriterion("contact_phone <", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneLessThanOrEqualTo(String value) {
            addCriterion("contact_phone <=", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneLike(String value) {
            addCriterion("contact_phone like", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneNotLike(String value) {
            addCriterion("contact_phone not like", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneIn(List<String> values) {
            addCriterion("contact_phone in", values, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneNotIn(List<String> values) {
            addCriterion("contact_phone not in", values, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneBetween(String value1, String value2) {
            addCriterion("contact_phone between", value1, value2, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneNotBetween(String value1, String value2) {
            addCriterion("contact_phone not between", value1, value2, "contactPhone");
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