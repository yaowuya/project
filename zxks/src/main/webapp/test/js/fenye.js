$(function() {
    //这是一个非常简单的demo实例，让列表元素分页显示
    //回调函数的作用是显示对应分页的列表项内容
    //回调函数在用户每次点击分页链接的时候执行
    //参数page_index{int整型}表示当前的索引页
    var initPagination = function() {
        // 创建分页 
        // 经销商管理
        var num_entries = $("#hiddenresult tr").length;
        $("#Pagination").pagination(num_entries, {
            num_edge_entries: 2, //边缘页数
            num_display_entries: 5, //主体页数
            callback: pageselectCallback,
            items_per_page: 4 //每页显示4项
        });
    }();
    //经销商管理
    function pageselectCallback(page_index, jq) {
        //总数目
        var length = $("#hiddenresult tr").size();
        console.log("page_index:" + page_index + " jq:" + length);
        var max_elem = Math.min((page_index + 1) * 4, length);
        $("#Searchresult").html("");
        // 获取加载元素
        for (var i = page_index * 4; i < max_elem; i++) {
            $("#Searchresult").append($("#hiddenresult tr:eq(" + i + ")").clone());
        }
        //阻止单击事件
        return false;
    };
    
});