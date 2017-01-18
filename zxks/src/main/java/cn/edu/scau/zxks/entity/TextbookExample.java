package cn.edu.scau.zxks.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TextbookExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TextbookExample() {
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

        public Criteria andTextbookIdIsNull() {
            addCriterion("textbook_id is null");
            return (Criteria) this;
        }

        public Criteria andTextbookIdIsNotNull() {
            addCriterion("textbook_id is not null");
            return (Criteria) this;
        }

        public Criteria andTextbookIdEqualTo(String value) {
            addCriterion("textbook_id =", value, "textbookId");
            return (Criteria) this;
        }

        public Criteria andTextbookIdNotEqualTo(String value) {
            addCriterion("textbook_id <>", value, "textbookId");
            return (Criteria) this;
        }

        public Criteria andTextbookIdGreaterThan(String value) {
            addCriterion("textbook_id >", value, "textbookId");
            return (Criteria) this;
        }

        public Criteria andTextbookIdGreaterThanOrEqualTo(String value) {
            addCriterion("textbook_id >=", value, "textbookId");
            return (Criteria) this;
        }

        public Criteria andTextbookIdLessThan(String value) {
            addCriterion("textbook_id <", value, "textbookId");
            return (Criteria) this;
        }

        public Criteria andTextbookIdLessThanOrEqualTo(String value) {
            addCriterion("textbook_id <=", value, "textbookId");
            return (Criteria) this;
        }

        public Criteria andTextbookIdLike(String value) {
            addCriterion("textbook_id like", value, "textbookId");
            return (Criteria) this;
        }

        public Criteria andTextbookIdNotLike(String value) {
            addCriterion("textbook_id not like", value, "textbookId");
            return (Criteria) this;
        }

        public Criteria andTextbookIdIn(List<String> values) {
            addCriterion("textbook_id in", values, "textbookId");
            return (Criteria) this;
        }

        public Criteria andTextbookIdNotIn(List<String> values) {
            addCriterion("textbook_id not in", values, "textbookId");
            return (Criteria) this;
        }

        public Criteria andTextbookIdBetween(String value1, String value2) {
            addCriterion("textbook_id between", value1, value2, "textbookId");
            return (Criteria) this;
        }

        public Criteria andTextbookIdNotBetween(String value1, String value2) {
            addCriterion("textbook_id not between", value1, value2, "textbookId");
            return (Criteria) this;
        }

        public Criteria andCourseIdIsNull() {
            addCriterion("course_id is null");
            return (Criteria) this;
        }

        public Criteria andCourseIdIsNotNull() {
            addCriterion("course_id is not null");
            return (Criteria) this;
        }

        public Criteria andCourseIdEqualTo(String value) {
            addCriterion("course_id =", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdNotEqualTo(String value) {
            addCriterion("course_id <>", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdGreaterThan(String value) {
            addCriterion("course_id >", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdGreaterThanOrEqualTo(String value) {
            addCriterion("course_id >=", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdLessThan(String value) {
            addCriterion("course_id <", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdLessThanOrEqualTo(String value) {
            addCriterion("course_id <=", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdLike(String value) {
            addCriterion("course_id like", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdNotLike(String value) {
            addCriterion("course_id not like", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdIn(List<String> values) {
            addCriterion("course_id in", values, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdNotIn(List<String> values) {
            addCriterion("course_id not in", values, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdBetween(String value1, String value2) {
            addCriterion("course_id between", value1, value2, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdNotBetween(String value1, String value2) {
            addCriterion("course_id not between", value1, value2, "courseId");
            return (Criteria) this;
        }

        public Criteria andBooktypeIsNull() {
            addCriterion("booktype is null");
            return (Criteria) this;
        }

        public Criteria andBooktypeIsNotNull() {
            addCriterion("booktype is not null");
            return (Criteria) this;
        }

        public Criteria andBooktypeEqualTo(String value) {
            addCriterion("booktype =", value, "booktype");
            return (Criteria) this;
        }

        public Criteria andBooktypeNotEqualTo(String value) {
            addCriterion("booktype <>", value, "booktype");
            return (Criteria) this;
        }

        public Criteria andBooktypeGreaterThan(String value) {
            addCriterion("booktype >", value, "booktype");
            return (Criteria) this;
        }

        public Criteria andBooktypeGreaterThanOrEqualTo(String value) {
            addCriterion("booktype >=", value, "booktype");
            return (Criteria) this;
        }

        public Criteria andBooktypeLessThan(String value) {
            addCriterion("booktype <", value, "booktype");
            return (Criteria) this;
        }

        public Criteria andBooktypeLessThanOrEqualTo(String value) {
            addCriterion("booktype <=", value, "booktype");
            return (Criteria) this;
        }

        public Criteria andBooktypeLike(String value) {
            addCriterion("booktype like", value, "booktype");
            return (Criteria) this;
        }

        public Criteria andBooktypeNotLike(String value) {
            addCriterion("booktype not like", value, "booktype");
            return (Criteria) this;
        }

        public Criteria andBooktypeIn(List<String> values) {
            addCriterion("booktype in", values, "booktype");
            return (Criteria) this;
        }

        public Criteria andBooktypeNotIn(List<String> values) {
            addCriterion("booktype not in", values, "booktype");
            return (Criteria) this;
        }

        public Criteria andBooktypeBetween(String value1, String value2) {
            addCriterion("booktype between", value1, value2, "booktype");
            return (Criteria) this;
        }

        public Criteria andBooktypeNotBetween(String value1, String value2) {
            addCriterion("booktype not between", value1, value2, "booktype");
            return (Criteria) this;
        }

        public Criteria andBooknameIsNull() {
            addCriterion("bookname is null");
            return (Criteria) this;
        }

        public Criteria andBooknameIsNotNull() {
            addCriterion("bookname is not null");
            return (Criteria) this;
        }

        public Criteria andBooknameEqualTo(String value) {
            addCriterion("bookname =", value, "bookname");
            return (Criteria) this;
        }

        public Criteria andBooknameNotEqualTo(String value) {
            addCriterion("bookname <>", value, "bookname");
            return (Criteria) this;
        }

        public Criteria andBooknameGreaterThan(String value) {
            addCriterion("bookname >", value, "bookname");
            return (Criteria) this;
        }

        public Criteria andBooknameGreaterThanOrEqualTo(String value) {
            addCriterion("bookname >=", value, "bookname");
            return (Criteria) this;
        }

        public Criteria andBooknameLessThan(String value) {
            addCriterion("bookname <", value, "bookname");
            return (Criteria) this;
        }

        public Criteria andBooknameLessThanOrEqualTo(String value) {
            addCriterion("bookname <=", value, "bookname");
            return (Criteria) this;
        }

        public Criteria andBooknameLike(String value) {
            addCriterion("bookname like", value, "bookname");
            return (Criteria) this;
        }

        public Criteria andBooknameNotLike(String value) {
            addCriterion("bookname not like", value, "bookname");
            return (Criteria) this;
        }

        public Criteria andBooknameIn(List<String> values) {
            addCriterion("bookname in", values, "bookname");
            return (Criteria) this;
        }

        public Criteria andBooknameNotIn(List<String> values) {
            addCriterion("bookname not in", values, "bookname");
            return (Criteria) this;
        }

        public Criteria andBooknameBetween(String value1, String value2) {
            addCriterion("bookname between", value1, value2, "bookname");
            return (Criteria) this;
        }

        public Criteria andBooknameNotBetween(String value1, String value2) {
            addCriterion("bookname not between", value1, value2, "bookname");
            return (Criteria) this;
        }

        public Criteria andBookStorageIsNull() {
            addCriterion("book_storage is null");
            return (Criteria) this;
        }

        public Criteria andBookStorageIsNotNull() {
            addCriterion("book_storage is not null");
            return (Criteria) this;
        }

        public Criteria andBookStorageEqualTo(Integer value) {
            addCriterion("book_storage =", value, "bookStorage");
            return (Criteria) this;
        }

        public Criteria andBookStorageNotEqualTo(Integer value) {
            addCriterion("book_storage <>", value, "bookStorage");
            return (Criteria) this;
        }

        public Criteria andBookStorageGreaterThan(Integer value) {
            addCriterion("book_storage >", value, "bookStorage");
            return (Criteria) this;
        }

        public Criteria andBookStorageGreaterThanOrEqualTo(Integer value) {
            addCriterion("book_storage >=", value, "bookStorage");
            return (Criteria) this;
        }

        public Criteria andBookStorageLessThan(Integer value) {
            addCriterion("book_storage <", value, "bookStorage");
            return (Criteria) this;
        }

        public Criteria andBookStorageLessThanOrEqualTo(Integer value) {
            addCriterion("book_storage <=", value, "bookStorage");
            return (Criteria) this;
        }

        public Criteria andBookStorageIn(List<Integer> values) {
            addCriterion("book_storage in", values, "bookStorage");
            return (Criteria) this;
        }

        public Criteria andBookStorageNotIn(List<Integer> values) {
            addCriterion("book_storage not in", values, "bookStorage");
            return (Criteria) this;
        }

        public Criteria andBookStorageBetween(Integer value1, Integer value2) {
            addCriterion("book_storage between", value1, value2, "bookStorage");
            return (Criteria) this;
        }

        public Criteria andBookStorageNotBetween(Integer value1, Integer value2) {
            addCriterion("book_storage not between", value1, value2, "bookStorage");
            return (Criteria) this;
        }

        public Criteria andIsOverdueIsNull() {
            addCriterion("is_overdue is null");
            return (Criteria) this;
        }

        public Criteria andIsOverdueIsNotNull() {
            addCriterion("is_overdue is not null");
            return (Criteria) this;
        }

        public Criteria andIsOverdueEqualTo(String value) {
            addCriterion("is_overdue =", value, "isOverdue");
            return (Criteria) this;
        }

        public Criteria andIsOverdueNotEqualTo(String value) {
            addCriterion("is_overdue <>", value, "isOverdue");
            return (Criteria) this;
        }

        public Criteria andIsOverdueGreaterThan(String value) {
            addCriterion("is_overdue >", value, "isOverdue");
            return (Criteria) this;
        }

        public Criteria andIsOverdueGreaterThanOrEqualTo(String value) {
            addCriterion("is_overdue >=", value, "isOverdue");
            return (Criteria) this;
        }

        public Criteria andIsOverdueLessThan(String value) {
            addCriterion("is_overdue <", value, "isOverdue");
            return (Criteria) this;
        }

        public Criteria andIsOverdueLessThanOrEqualTo(String value) {
            addCriterion("is_overdue <=", value, "isOverdue");
            return (Criteria) this;
        }

        public Criteria andIsOverdueLike(String value) {
            addCriterion("is_overdue like", value, "isOverdue");
            return (Criteria) this;
        }

        public Criteria andIsOverdueNotLike(String value) {
            addCriterion("is_overdue not like", value, "isOverdue");
            return (Criteria) this;
        }

        public Criteria andIsOverdueIn(List<String> values) {
            addCriterion("is_overdue in", values, "isOverdue");
            return (Criteria) this;
        }

        public Criteria andIsOverdueNotIn(List<String> values) {
            addCriterion("is_overdue not in", values, "isOverdue");
            return (Criteria) this;
        }

        public Criteria andIsOverdueBetween(String value1, String value2) {
            addCriterion("is_overdue between", value1, value2, "isOverdue");
            return (Criteria) this;
        }

        public Criteria andIsOverdueNotBetween(String value1, String value2) {
            addCriterion("is_overdue not between", value1, value2, "isOverdue");
            return (Criteria) this;
        }

        public Criteria andOverdueTimeIsNull() {
            addCriterion("overdue_time is null");
            return (Criteria) this;
        }

        public Criteria andOverdueTimeIsNotNull() {
            addCriterion("overdue_time is not null");
            return (Criteria) this;
        }

        public Criteria andOverdueTimeEqualTo(Date value) {
            addCriterion("overdue_time =", value, "overdueTime");
            return (Criteria) this;
        }

        public Criteria andOverdueTimeNotEqualTo(Date value) {
            addCriterion("overdue_time <>", value, "overdueTime");
            return (Criteria) this;
        }

        public Criteria andOverdueTimeGreaterThan(Date value) {
            addCriterion("overdue_time >", value, "overdueTime");
            return (Criteria) this;
        }

        public Criteria andOverdueTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("overdue_time >=", value, "overdueTime");
            return (Criteria) this;
        }

        public Criteria andOverdueTimeLessThan(Date value) {
            addCriterion("overdue_time <", value, "overdueTime");
            return (Criteria) this;
        }

        public Criteria andOverdueTimeLessThanOrEqualTo(Date value) {
            addCriterion("overdue_time <=", value, "overdueTime");
            return (Criteria) this;
        }

        public Criteria andOverdueTimeIn(List<Date> values) {
            addCriterion("overdue_time in", values, "overdueTime");
            return (Criteria) this;
        }

        public Criteria andOverdueTimeNotIn(List<Date> values) {
            addCriterion("overdue_time not in", values, "overdueTime");
            return (Criteria) this;
        }

        public Criteria andOverdueTimeBetween(Date value1, Date value2) {
            addCriterion("overdue_time between", value1, value2, "overdueTime");
            return (Criteria) this;
        }

        public Criteria andOverdueTimeNotBetween(Date value1, Date value2) {
            addCriterion("overdue_time not between", value1, value2, "overdueTime");
            return (Criteria) this;
        }

        public Criteria andOverdueReasonIsNull() {
            addCriterion("overdue_reason is null");
            return (Criteria) this;
        }

        public Criteria andOverdueReasonIsNotNull() {
            addCriterion("overdue_reason is not null");
            return (Criteria) this;
        }

        public Criteria andOverdueReasonEqualTo(String value) {
            addCriterion("overdue_reason =", value, "overdueReason");
            return (Criteria) this;
        }

        public Criteria andOverdueReasonNotEqualTo(String value) {
            addCriterion("overdue_reason <>", value, "overdueReason");
            return (Criteria) this;
        }

        public Criteria andOverdueReasonGreaterThan(String value) {
            addCriterion("overdue_reason >", value, "overdueReason");
            return (Criteria) this;
        }

        public Criteria andOverdueReasonGreaterThanOrEqualTo(String value) {
            addCriterion("overdue_reason >=", value, "overdueReason");
            return (Criteria) this;
        }

        public Criteria andOverdueReasonLessThan(String value) {
            addCriterion("overdue_reason <", value, "overdueReason");
            return (Criteria) this;
        }

        public Criteria andOverdueReasonLessThanOrEqualTo(String value) {
            addCriterion("overdue_reason <=", value, "overdueReason");
            return (Criteria) this;
        }

        public Criteria andOverdueReasonLike(String value) {
            addCriterion("overdue_reason like", value, "overdueReason");
            return (Criteria) this;
        }

        public Criteria andOverdueReasonNotLike(String value) {
            addCriterion("overdue_reason not like", value, "overdueReason");
            return (Criteria) this;
        }

        public Criteria andOverdueReasonIn(List<String> values) {
            addCriterion("overdue_reason in", values, "overdueReason");
            return (Criteria) this;
        }

        public Criteria andOverdueReasonNotIn(List<String> values) {
            addCriterion("overdue_reason not in", values, "overdueReason");
            return (Criteria) this;
        }

        public Criteria andOverdueReasonBetween(String value1, String value2) {
            addCriterion("overdue_reason between", value1, value2, "overdueReason");
            return (Criteria) this;
        }

        public Criteria andOverdueReasonNotBetween(String value1, String value2) {
            addCriterion("overdue_reason not between", value1, value2, "overdueReason");
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