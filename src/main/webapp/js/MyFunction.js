// 删除任务
function del(controller,ids){
    if (ids != null) {
        if (ids.length < 1) {
            msgShow("提示信息", "请先选择要删除的数据！", "warning");
            return;
        }
        $.messager.confirm('提示信息', '您确认要删除这 ' + ids.length + ' 条数据吗?', function (data) {
            if (data) {
                $.ajax({
                    url: controller,
                    data:{"deleteId": ids.join(",") },
                    type: 'get',
                    dataType: "json",
                    cache: false,
                    beforeSend: function () {
                        loadingMask_Show();
                    },
                    complete: function () {
                        loadingMask_Hide();
                    },
                    success: function (data) {
                        if (data.success) {
                            msgShow("系统提示","删除成功!")
                            location.href="list.jsp";
                        } else {
                            msgShow('错误信息', '删除失败!', 'error');
                        }
                    }

                });
            }
        });
    }
}






