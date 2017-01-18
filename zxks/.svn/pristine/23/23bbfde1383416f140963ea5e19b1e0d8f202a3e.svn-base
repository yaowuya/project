$(document).ready(function() {
    // 制定征题计划--新卷入库
    $("#topic-Form-rec").validate();
    // 纯数字验证
    jQuery.validator.addMethod("onlynum", function(value, element) {
        var tel = /([\u4e00-\u9fa5a-zA-Z]+[0-9]*)/;
        return this.optional(element) || (tel.test(value));
    }, "不能为纯数字");
    // 手机号码验证
    jQuery.validator.addMethod("isMobile", function(value, element) {
        var length = value.length;
        return this.optional(element) || (length == 11 && /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/.test(value));
    }, "请正确填写您的手机号码。");
    // 教材采购管理
    // 经销商录入
    $("#text-form-adddealer").validate({
        rules: {
            dealerName: {
                required: true,
                onlynum: true
            },
            dealerAddress: {
                required: true,
                onlynum: true
            },
            dealerContacts: {
                required: true,
                onlynum: true
            },
            dealerPhone: {
                required: true,
                isMobile: true
            }
        },
        messages: {
            dealerName: {
                required: "请填写经销商名字",
                // china:"请输入汉字"
            },
            dealerAddress: {
                required: "请输入公司地址"
            },
            dealerContacts: {
                required: "请输入联系人"
            },
            dealerPhone: {
                required: "请输入联系电话"
            }
        },
    });
    // 登记教材
    $("#text-form-note").validate({
        rules: {
            price: {
                required: true,
                number: true
            },
            num: {
                required: true,
                digits: true
            }
        },
        messages: {
            price: {
                required: "请输入单价",
                number: "请输入合法数字"
            },
            num: {
                required: "请输入购买数量",
                digits: "请输入整数"
            }
        }
    });
    $("#text-form-addinfo").validate();
    // 经销商修改
    $("#text-form-dealerbuy").validate({
        rules: {
            dealerAddress: {
                required: true,
                onlynum: true
            },
            dealerContacts: {
                required: true,
                onlynum: true
            },
            dealerPhone: {
                required: true,
                isMobile: true
            }
        },
        messages: {
            dealerAddress: {
                required: "请输入公司地址"
            },
            dealerContacts: {
                required: "请输入联系人"
            },
            dealerPhone: {
                required: "请输入联系电话"
            }
        },
    });
    $("#text-form-infomation-xiugai").validate();
    $("#text-form-note-xiugai").validate();
    // 入库调拨管理
    $("#text-form-rejectcheck").validate();
    $("#text-book-bookout").validate();
    $("#text-form-bookin").validate();
    // 预定邮购及退书管理
    $("#text-form-searchorder").validate();
    $("#text-form-register").validate();
    $("#text-form-managebook").validate();

});
