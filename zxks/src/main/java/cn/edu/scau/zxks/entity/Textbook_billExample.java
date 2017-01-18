package cn.edu.scau.zxks.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Textbook_billExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public Textbook_billExample() {
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

        public Criteria andTextbookIoIdIsNull() {
            addCriterion("textbook_io_id is null");
            return (Criteria) this;
        }

        public Criteria andTextbookIoIdIsNotNull() {
            addCriterion("textbook_io_id is not null");
            return (Criteria) this;
        }

        public Criteria andTextbookIoIdEqualTo(String value) {
            addCriterion("textbook_io_id =", value, "textbookIoId");
            return (Criteria) this;
        }

        public Criteria andTextbookIoIdNotEqualTo(String value) {
            addCriterion("textbook_io_id <>", value, "textbookIoId");
            return (Criteria) this;
        }

        public Criteria andTextbookIoIdGreaterThan(String value) {
            addCriterion("textbook_io_id >", value, "textbookIoId");
            return (Criteria) this;
        }

        public Criteria andTextbookIoIdGreaterThanOrEqualTo(String value) {
            addCriterion("textbook_io_id >=", value, "textbookIoId");
            return (Criteria) this;
        }

        public Criteria andTextbookIoIdLessThan(String value) {
            addCriterion("textbook_io_id <", value, "textbookIoId");
            return (Criteria) this;
        }

        public Criteria andTextbookIoIdLessThanOrEqualTo(String value) {
            addCriterion("textbook_io_id <=", value, "textbookIoId");
            return (Criteria) this;
        }

        public Criteria andTextbookIoIdLike(String value) {
            addCriterion("textbook_io_id like", value, "textbookIoId");
            return (Criteria) this;
        }

        public Criteria andTextbookIoIdNotLike(String value) {
            addCriterion("textbook_io_id not like", value, "textbookIoId");
            return (Criteria) this;
        }

        public Criteria andTextbookIoIdIn(List<String> values) {
            addCriterion("textbook_io_id in", values, "textbookIoId");
            return (Criteria) this;
        }

        public Criteria andTextbookIoIdNotIn(List<String> values) {
            addCriterion("textbook_io_id not in", values, "textbookIoId");
            return (Criteria) this;
        }

        public Criteria andTextbookIoIdBetween(String value1, String value2) {
            addCriterion("textbook_io_id between", value1, value2, "textbookIoId");
            return (Criteria) this;
        }

        public Criteria andTextbookIoIdNotBetween(String value1, String value2) {
            addCriterion("textbook_io_id not between", value1, value2, "textbookIoId");
            return (Criteria) this;
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

        public Criteria andTextbookIotimeIsNull() {
            addCriterion("Textbook_iotime is null");
            return (Criteria) this;
        }

        public Criteria andTextbookIotimeIsNotNull() {
            addCriterion("Textbook_iotime is not null");
            return (Criteria) this;
        }

        public Criteria andTextbookIotimeEqualTo(Date value) {
            addCriterion("Textbook_iotime =", value, "textbookIotime");
            return (Criteria) this;
        }

        public Criteria andTextbookIotimeNotEqualTo(Date value) {
            addCriterion("Textbook_iotime <>", value, "textbookIotime");
            return (Criteria) this;
        }

        public Criteria andTextbookIotimeGreaterThan(Date value) {
            addCriterion("Textbook_iotime >", value, "textbookIotime");
            return (Criteria) this;
        }

        public Criteria andTextbookIotimeGreaterThanOrEqualTo(Date value) {
            addCriterion("Textbook_iotime >=", value, "textbookIotime");
            return (Criteria) this;
        }

        public Criteria andTextbookIotimeLessThan(Date value) {
            addCriterion("Textbook_iotime <", value, "textbookIotime");
            return (Criteria) this;
        }

        public Criteria andTextbookIotimeLessThanOrEqualTo(Date value) {
            addCriterion("Textbook_iotime <=", value, "textbookIotime");
            return (Criteria) this;
        }

        public Criteria andTextbookIotimeIn(List<Date> values) {
            addCriterion("Textbook_iotime in", values, "textbookIotime");
            return (Criteria) this;
        }

        public Criteria andTextbookIotimeNotIn(List<Date> values) {
            addCriterion("Textbook_iotime not in", values, "textbookIotime");
            return (Criteria) this;
        }

        public Criteria andTextbookIotimeBetween(Date value1, Date value2) {
            addCriterion("Textbook_iotime between", value1, value2, "textbookIotime");
            return (Criteria) this;
        }

        public Criteria andTextbookIotimeNotBetween(Date value1, Date value2) {
            addCriterion("Textbook_iotime not between", value1, value2, "textbookIotime");
            return (Criteria) this;
        }

        public Criteria andTextbookIocountIsNull() {
            addCriterion("textbook_iocount is null");
            return (Criteria) this;
        }

        public Criteria andTextbookIocountIsNotNull() {
            addCriterion("textbook_iocount is not null");
            return (Criteria) this;
        }

        public Criteria andTextbookIocountEqualTo(Integer value) {
            addCriterion("textbook_iocount =", value, "textbookIocount");
            return (Criteria) this;
        }

        public Criteria andTextbookIocountNotEqualTo(Integer value) {
            addCriterion("textbook_iocount <>", value, "textbookIocount");
            return (Criteria) this;
        }

        public Criteria andTextbookIocountGreaterThan(Integer value) {
            addCriterion("textbook_iocount >", value, "textbookIocount");
            return (Criteria) this;
        }

        public Criteria andTextbookIocountGreaterThanOrEqualTo(Integer value) {
            addCriterion("textbook_iocount >=", value, "textbookIocount");
            return (Criteria) this;
        }

        public Criteria andTextbookIocountLessThan(Integer value) {
            addCriterion("textbook_iocount <", value, "textbookIocount");
            return (Criteria) this;
        }

        public Criteria andTextbookIocountLessThanOrEqualTo(Integer value) {
            addCriterion("textbook_iocount <=", value, "textbookIocount");
            return (Criteria) this;
        }

        public Criteria andTextbookIocountIn(List<Integer> values) {
            addCriterion("textbook_iocount in", values, "textbookIocount");
            return (Criteria) this;
        }

        public Criteria andTextbookIocountNotIn(List<Integer> values) {
            addCriterion("textbook_iocount not in", values, "textbookIocount");
            return (Criteria) this;
        }

        public Criteria andTextbookIocountBetween(Integer value1, Integer value2) {
            addCriterion("textbook_iocount between", value1, value2, "textbookIocount");
            return (Criteria) this;
        }

        public Criteria andTextbookIocountNotBetween(Integer value1, Integer value2) {
            addCriterion("textbook_iocount not between", value1, value2, "textbookIocount");
            return (Criteria) this;
        }

        public Criteria andTextbookPriceIsNull() {
            addCriterion("textbook_price is null");
            return (Criteria) this;
        }

        public Criteria andTextbookPriceIsNotNull() {
            addCriterion("textbook_price is not null");
            return (Criteria) this;
        }

        public Criteria andTextbookPriceEqualTo(Double value) {
            addCriterion("textbook_price =", value, "textbookPrice");
            return (Criteria) this;
        }

        public Criteria andTextbookPriceNotEqualTo(Double value) {
            addCriterion("textbook_price <>", value, "textbookPrice");
            return (Criteria) this;
        }

        public Criteria andTextbookPriceGreaterThan(Double value) {
            addCriterion("textbook_price >", value, "textbookPrice");
            return (Criteria) this;
        }

        public Criteria andTextbookPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("textbook_price >=", value, "textbookPrice");
            return (Criteria) this;
        }

        public Criteria andTextbookPriceLessThan(Double value) {
            addCriterion("textbook_price <", value, "textbookPrice");
            return (Criteria) this;
        }

        public Criteria andTextbookPriceLessThanOrEqualTo(Double value) {
            addCriterion("textbook_price <=", value, "textbookPrice");
            return (Criteria) this;
        }

        public Criteria andTextbookPriceIn(List<Double> values) {
            addCriterion("textbook_price in", values, "textbookPrice");
            return (Criteria) this;
        }

        public Criteria andTextbookPriceNotIn(List<Double> values) {
            addCriterion("textbook_price not in", values, "textbookPrice");
            return (Criteria) this;
        }

        public Criteria andTextbookPriceBetween(Double value1, Double value2) {
            addCriterion("textbook_price between", value1, value2, "textbookPrice");
            return (Criteria) this;
        }

        public Criteria andTextbookPriceNotBetween(Double value1, Double value2) {
            addCriterion("textbook_price not between", value1, value2, "textbookPrice");
            return (Criteria) this;
        }

        public Criteria andAddressIsNull() {
            addCriterion("address is null");
            return (Criteria) this;
        }

        public Criteria andAddressIsNotNull() {
            addCriterion("address is not null");
            return (Criteria) this;
        }

        public Criteria andAddressEqualTo(String value) {
            addCriterion("address =", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotEqualTo(String value) {
            addCriterion("address <>", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressGreaterThan(String value) {
            addCriterion("address >", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressGreaterThanOrEqualTo(String value) {
            addCriterion("address >=", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLessThan(String value) {
            addCriterion("address <", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLessThanOrEqualTo(String value) {
            addCriterion("address <=", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLike(String value) {
            addCriterion("address like", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotLike(String value) {
            addCriterion("address not like", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressIn(List<String> values) {
            addCriterion("address in", values, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotIn(List<String> values) {
            addCriterion("address not in", values, "address");
            return (Criteria) this;
        }

        public Criteria andAddressBetween(String value1, String value2) {
            addCriterion("address between", value1, value2, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotBetween(String value1, String value2) {
            addCriterion("address not between", value1, value2, "address");
            return (Criteria) this;
        }

        public Criteria andPostPriceIsNull() {
            addCriterion("post_price is null");
            return (Criteria) this;
        }

        public Criteria andPostPriceIsNotNull() {
            addCriterion("post_price is not null");
            return (Criteria) this;
        }

        public Criteria andPostPriceEqualTo(Double value) {
            addCriterion("post_price =", value, "postPrice");
            return (Criteria) this;
        }

        public Criteria andPostPriceNotEqualTo(Double value) {
            addCriterion("post_price <>", value, "postPrice");
            return (Criteria) this;
        }

        public Criteria andPostPriceGreaterThan(Double value) {
            addCriterion("post_price >", value, "postPrice");
            return (Criteria) this;
        }

        public Criteria andPostPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("post_price >=", value, "postPrice");
            return (Criteria) this;
        }

        public Criteria andPostPriceLessThan(Double value) {
            addCriterion("post_price <", value, "postPrice");
            return (Criteria) this;
        }

        public Criteria andPostPriceLessThanOrEqualTo(Double value) {
            addCriterion("post_price <=", value, "postPrice");
            return (Criteria) this;
        }

        public Criteria andPostPriceIn(List<Double> values) {
            addCriterion("post_price in", values, "postPrice");
            return (Criteria) this;
        }

        public Criteria andPostPriceNotIn(List<Double> values) {
            addCriterion("post_price not in", values, "postPrice");
            return (Criteria) this;
        }

        public Criteria andPostPriceBetween(Double value1, Double value2) {
            addCriterion("post_price between", value1, value2, "postPrice");
            return (Criteria) this;
        }

        public Criteria andPostPriceNotBetween(Double value1, Double value2) {
            addCriterion("post_price not between", value1, value2, "postPrice");
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