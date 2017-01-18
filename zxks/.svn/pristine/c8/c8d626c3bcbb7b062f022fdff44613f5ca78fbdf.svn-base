package cn.edu.scau.zxks.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class QuestionbankExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public QuestionbankExample() {
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

        public Criteria andQuestionbankIdIsNull() {
            addCriterion("questionbank_id is null");
            return (Criteria) this;
        }

        public Criteria andQuestionbankIdIsNotNull() {
            addCriterion("questionbank_id is not null");
            return (Criteria) this;
        }

        public Criteria andQuestionbankIdEqualTo(String value) {
            addCriterion("questionbank_id =", value, "questionbankId");
            return (Criteria) this;
        }

        public Criteria andQuestionbankIdNotEqualTo(String value) {
            addCriterion("questionbank_id <>", value, "questionbankId");
            return (Criteria) this;
        }

        public Criteria andQuestionbankIdGreaterThan(String value) {
            addCriterion("questionbank_id >", value, "questionbankId");
            return (Criteria) this;
        }

        public Criteria andQuestionbankIdGreaterThanOrEqualTo(String value) {
            addCriterion("questionbank_id >=", value, "questionbankId");
            return (Criteria) this;
        }

        public Criteria andQuestionbankIdLessThan(String value) {
            addCriterion("questionbank_id <", value, "questionbankId");
            return (Criteria) this;
        }

        public Criteria andQuestionbankIdLessThanOrEqualTo(String value) {
            addCriterion("questionbank_id <=", value, "questionbankId");
            return (Criteria) this;
        }

        public Criteria andQuestionbankIdLike(String value) {
            addCriterion("questionbank_id like", value, "questionbankId");
            return (Criteria) this;
        }

        public Criteria andQuestionbankIdNotLike(String value) {
            addCriterion("questionbank_id not like", value, "questionbankId");
            return (Criteria) this;
        }

        public Criteria andQuestionbankIdIn(List<String> values) {
            addCriterion("questionbank_id in", values, "questionbankId");
            return (Criteria) this;
        }

        public Criteria andQuestionbankIdNotIn(List<String> values) {
            addCriterion("questionbank_id not in", values, "questionbankId");
            return (Criteria) this;
        }

        public Criteria andQuestionbankIdBetween(String value1, String value2) {
            addCriterion("questionbank_id between", value1, value2, "questionbankId");
            return (Criteria) this;
        }

        public Criteria andQuestionbankIdNotBetween(String value1, String value2) {
            addCriterion("questionbank_id not between", value1, value2, "questionbankId");
            return (Criteria) this;
        }

        public Criteria andPaperTypeIsNull() {
            addCriterion("paper_type is null");
            return (Criteria) this;
        }

        public Criteria andPaperTypeIsNotNull() {
            addCriterion("paper_type is not null");
            return (Criteria) this;
        }

        public Criteria andPaperTypeEqualTo(String value) {
            addCriterion("paper_type =", value, "paperType");
            return (Criteria) this;
        }

        public Criteria andPaperTypeNotEqualTo(String value) {
            addCriterion("paper_type <>", value, "paperType");
            return (Criteria) this;
        }

        public Criteria andPaperTypeGreaterThan(String value) {
            addCriterion("paper_type >", value, "paperType");
            return (Criteria) this;
        }

        public Criteria andPaperTypeGreaterThanOrEqualTo(String value) {
            addCriterion("paper_type >=", value, "paperType");
            return (Criteria) this;
        }

        public Criteria andPaperTypeLessThan(String value) {
            addCriterion("paper_type <", value, "paperType");
            return (Criteria) this;
        }

        public Criteria andPaperTypeLessThanOrEqualTo(String value) {
            addCriterion("paper_type <=", value, "paperType");
            return (Criteria) this;
        }

        public Criteria andPaperTypeLike(String value) {
            addCriterion("paper_type like", value, "paperType");
            return (Criteria) this;
        }

        public Criteria andPaperTypeNotLike(String value) {
            addCriterion("paper_type not like", value, "paperType");
            return (Criteria) this;
        }

        public Criteria andPaperTypeIn(List<String> values) {
            addCriterion("paper_type in", values, "paperType");
            return (Criteria) this;
        }

        public Criteria andPaperTypeNotIn(List<String> values) {
            addCriterion("paper_type not in", values, "paperType");
            return (Criteria) this;
        }

        public Criteria andPaperTypeBetween(String value1, String value2) {
            addCriterion("paper_type between", value1, value2, "paperType");
            return (Criteria) this;
        }

        public Criteria andPaperTypeNotBetween(String value1, String value2) {
            addCriterion("paper_type not between", value1, value2, "paperType");
            return (Criteria) this;
        }

        public Criteria andTestbookIdIsNull() {
            addCriterion("testbook_id is null");
            return (Criteria) this;
        }

        public Criteria andTestbookIdIsNotNull() {
            addCriterion("testbook_id is not null");
            return (Criteria) this;
        }

        public Criteria andTestbookIdEqualTo(String value) {
            addCriterion("testbook_id =", value, "testbookId");
            return (Criteria) this;
        }

        public Criteria andTestbookIdNotEqualTo(String value) {
            addCriterion("testbook_id <>", value, "testbookId");
            return (Criteria) this;
        }

        public Criteria andTestbookIdGreaterThan(String value) {
            addCriterion("testbook_id >", value, "testbookId");
            return (Criteria) this;
        }

        public Criteria andTestbookIdGreaterThanOrEqualTo(String value) {
            addCriterion("testbook_id >=", value, "testbookId");
            return (Criteria) this;
        }

        public Criteria andTestbookIdLessThan(String value) {
            addCriterion("testbook_id <", value, "testbookId");
            return (Criteria) this;
        }

        public Criteria andTestbookIdLessThanOrEqualTo(String value) {
            addCriterion("testbook_id <=", value, "testbookId");
            return (Criteria) this;
        }

        public Criteria andTestbookIdLike(String value) {
            addCriterion("testbook_id like", value, "testbookId");
            return (Criteria) this;
        }

        public Criteria andTestbookIdNotLike(String value) {
            addCriterion("testbook_id not like", value, "testbookId");
            return (Criteria) this;
        }

        public Criteria andTestbookIdIn(List<String> values) {
            addCriterion("testbook_id in", values, "testbookId");
            return (Criteria) this;
        }

        public Criteria andTestbookIdNotIn(List<String> values) {
            addCriterion("testbook_id not in", values, "testbookId");
            return (Criteria) this;
        }

        public Criteria andTestbookIdBetween(String value1, String value2) {
            addCriterion("testbook_id between", value1, value2, "testbookId");
            return (Criteria) this;
        }

        public Criteria andTestbookIdNotBetween(String value1, String value2) {
            addCriterion("testbook_id not between", value1, value2, "testbookId");
            return (Criteria) this;
        }

        public Criteria andWriterIsNull() {
            addCriterion("writer is null");
            return (Criteria) this;
        }

        public Criteria andWriterIsNotNull() {
            addCriterion("writer is not null");
            return (Criteria) this;
        }

        public Criteria andWriterEqualTo(String value) {
            addCriterion("writer =", value, "writer");
            return (Criteria) this;
        }

        public Criteria andWriterNotEqualTo(String value) {
            addCriterion("writer <>", value, "writer");
            return (Criteria) this;
        }

        public Criteria andWriterGreaterThan(String value) {
            addCriterion("writer >", value, "writer");
            return (Criteria) this;
        }

        public Criteria andWriterGreaterThanOrEqualTo(String value) {
            addCriterion("writer >=", value, "writer");
            return (Criteria) this;
        }

        public Criteria andWriterLessThan(String value) {
            addCriterion("writer <", value, "writer");
            return (Criteria) this;
        }

        public Criteria andWriterLessThanOrEqualTo(String value) {
            addCriterion("writer <=", value, "writer");
            return (Criteria) this;
        }

        public Criteria andWriterLike(String value) {
            addCriterion("writer like", value, "writer");
            return (Criteria) this;
        }

        public Criteria andWriterNotLike(String value) {
            addCriterion("writer not like", value, "writer");
            return (Criteria) this;
        }

        public Criteria andWriterIn(List<String> values) {
            addCriterion("writer in", values, "writer");
            return (Criteria) this;
        }

        public Criteria andWriterNotIn(List<String> values) {
            addCriterion("writer not in", values, "writer");
            return (Criteria) this;
        }

        public Criteria andWriterBetween(String value1, String value2) {
            addCriterion("writer between", value1, value2, "writer");
            return (Criteria) this;
        }

        public Criteria andWriterNotBetween(String value1, String value2) {
            addCriterion("writer not between", value1, value2, "writer");
            return (Criteria) this;
        }

        public Criteria andInTimeIsNull() {
            addCriterion("in_time is null");
            return (Criteria) this;
        }

        public Criteria andInTimeIsNotNull() {
            addCriterion("in_time is not null");
            return (Criteria) this;
        }

        public Criteria andInTimeEqualTo(Date value) {
            addCriterion("in_time =", value, "inTime");
            return (Criteria) this;
        }

        public Criteria andInTimeNotEqualTo(Date value) {
            addCriterion("in_time <>", value, "inTime");
            return (Criteria) this;
        }

        public Criteria andInTimeGreaterThan(Date value) {
            addCriterion("in_time >", value, "inTime");
            return (Criteria) this;
        }

        public Criteria andInTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("in_time >=", value, "inTime");
            return (Criteria) this;
        }

        public Criteria andInTimeLessThan(Date value) {
            addCriterion("in_time <", value, "inTime");
            return (Criteria) this;
        }

        public Criteria andInTimeLessThanOrEqualTo(Date value) {
            addCriterion("in_time <=", value, "inTime");
            return (Criteria) this;
        }

        public Criteria andInTimeIn(List<Date> values) {
            addCriterion("in_time in", values, "inTime");
            return (Criteria) this;
        }

        public Criteria andInTimeNotIn(List<Date> values) {
            addCriterion("in_time not in", values, "inTime");
            return (Criteria) this;
        }

        public Criteria andInTimeBetween(Date value1, Date value2) {
            addCriterion("in_time between", value1, value2, "inTime");
            return (Criteria) this;
        }

        public Criteria andInTimeNotBetween(Date value1, Date value2) {
            addCriterion("in_time not between", value1, value2, "inTime");
            return (Criteria) this;
        }

        public Criteria andUsedIsNull() {
            addCriterion("used is null");
            return (Criteria) this;
        }

        public Criteria andUsedIsNotNull() {
            addCriterion("used is not null");
            return (Criteria) this;
        }

        public Criteria andUsedEqualTo(Integer value) {
            addCriterion("used =", value, "used");
            return (Criteria) this;
        }

        public Criteria andUsedNotEqualTo(Integer value) {
            addCriterion("used <>", value, "used");
            return (Criteria) this;
        }

        public Criteria andUsedGreaterThan(Integer value) {
            addCriterion("used >", value, "used");
            return (Criteria) this;
        }

        public Criteria andUsedGreaterThanOrEqualTo(Integer value) {
            addCriterion("used >=", value, "used");
            return (Criteria) this;
        }

        public Criteria andUsedLessThan(Integer value) {
            addCriterion("used <", value, "used");
            return (Criteria) this;
        }

        public Criteria andUsedLessThanOrEqualTo(Integer value) {
            addCriterion("used <=", value, "used");
            return (Criteria) this;
        }

        public Criteria andUsedIn(List<Integer> values) {
            addCriterion("used in", values, "used");
            return (Criteria) this;
        }

        public Criteria andUsedNotIn(List<Integer> values) {
            addCriterion("used not in", values, "used");
            return (Criteria) this;
        }

        public Criteria andUsedBetween(Integer value1, Integer value2) {
            addCriterion("used between", value1, value2, "used");
            return (Criteria) this;
        }

        public Criteria andUsedNotBetween(Integer value1, Integer value2) {
            addCriterion("used not between", value1, value2, "used");
            return (Criteria) this;
        }

        public Criteria andBorrowedIsNull() {
            addCriterion("borrowed is null");
            return (Criteria) this;
        }

        public Criteria andBorrowedIsNotNull() {
            addCriterion("borrowed is not null");
            return (Criteria) this;
        }

        public Criteria andBorrowedEqualTo(Integer value) {
            addCriterion("borrowed =", value, "borrowed");
            return (Criteria) this;
        }

        public Criteria andBorrowedNotEqualTo(Integer value) {
            addCriterion("borrowed <>", value, "borrowed");
            return (Criteria) this;
        }

        public Criteria andBorrowedGreaterThan(Integer value) {
            addCriterion("borrowed >", value, "borrowed");
            return (Criteria) this;
        }

        public Criteria andBorrowedGreaterThanOrEqualTo(Integer value) {
            addCriterion("borrowed >=", value, "borrowed");
            return (Criteria) this;
        }

        public Criteria andBorrowedLessThan(Integer value) {
            addCriterion("borrowed <", value, "borrowed");
            return (Criteria) this;
        }

        public Criteria andBorrowedLessThanOrEqualTo(Integer value) {
            addCriterion("borrowed <=", value, "borrowed");
            return (Criteria) this;
        }

        public Criteria andBorrowedIn(List<Integer> values) {
            addCriterion("borrowed in", values, "borrowed");
            return (Criteria) this;
        }

        public Criteria andBorrowedNotIn(List<Integer> values) {
            addCriterion("borrowed not in", values, "borrowed");
            return (Criteria) this;
        }

        public Criteria andBorrowedBetween(Integer value1, Integer value2) {
            addCriterion("borrowed between", value1, value2, "borrowed");
            return (Criteria) this;
        }

        public Criteria andBorrowedNotBetween(Integer value1, Integer value2) {
            addCriterion("borrowed not between", value1, value2, "borrowed");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("status is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("status is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(Byte value) {
            addCriterion("status =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(Byte value) {
            addCriterion("status <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(Byte value) {
            addCriterion("status >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(Byte value) {
            addCriterion("status >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(Byte value) {
            addCriterion("status <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(Byte value) {
            addCriterion("status <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<Byte> values) {
            addCriterion("status in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<Byte> values) {
            addCriterion("status not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(Byte value1, Byte value2) {
            addCriterion("status between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(Byte value1, Byte value2) {
            addCriterion("status not between", value1, value2, "status");
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