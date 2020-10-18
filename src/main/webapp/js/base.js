 var ParentBoxHeight = 14;
//初始化设置动态计算 grid 父容器的高度
function SetGridParentBoxHeight() {
	//减去的高度 在IE下微调
	var Height = $(window.parent.document).find(".tabs-panels").height() - ParentBoxHeight;
	var Width = $(window.parent.document).find(".tabs-panels").width() - 12;
	$("#GridParentBox").css("height", Height + "px");
	$("#GridParentBox").css("width", Width + "px");
	//$(".breadCrumb").css("width", (Width - 2) + "px");
}
$(function () {
	//if ($.cookie("HK_CRM_User") == null || $.cookie("HK_CRM_User") == "") {
	//	window.location.href = "/";
	//	return;
	//}
SetGridParentBoxHeight();
	//窗体大小改变时每个iframe中的 grid 也跟着改变
	$(window).resize(function () {
		SetGridParentBoxHeight();
		$('#grid').datagrid('resize');
	});
});
//全局定义Grid初始化参数
var DefaultGridParams = {
	width: "100%",
	fit: true,
	pageNumber: 1,
	pageSize: 10,
	pageList: [10, 20, 50, 100],
	queryParams: {},
	idField: "id",
	sortName: "id",
	sortOrder: "asc",
	nowrap: false,
	striped: true,
	collapsible: true,
	remoteSort: true,
	pagination: true,
	singleSelect: false,
	rownumbers: true
};

function CreateComboTree(control, classData, setValue) {
    $('#' + control).combotree();    //渲染对象
    $('#' + control).combotree("loadData", classData);   //加载数据
    //异步赋值  同步赋不上
    if (setValue != null) {
        setTimeout(function () { $('#' + control).combotree("setValue", setValue); }, 10);
    }
}


//设置 datagrid 的tr td 标签的样式  否则将会和页面的 Info的 .tab04 tr td 样式 冲突
function setDataGridTrTdClass() {
    $('.datagrid tr').each(function () {
        $(this).css({ "background": "none", "padding": "0px 0px 0px 0px" });
    });
    $('.datagrid td').each(function () {
        $(this).css({ "height": "0px", "background": "none", "padding": "0px 0px 0px 0px" });
    });
}

//弹出信息窗口
//title:标题 msgString:提示信息 msgType:信息类型 [error,info,question,warning]
function msgShow(title, msgString, msgType) {
    $.messager.alert(title, msgString, msgType);
}


var isPostBack = true;   //是否请求回调完毕
//显示加载框
function loadingMask_Show() {
    isPostBack = false;
    setTimeout(function () {
        if (!isPostBack) {
            var body = $('body');
            var win = $(window);
            var doc = $(document);
            $("<div class=\"datagrid-mask\" style=\"display:block;\"></div>").appendTo(body);
            $("<div class=\"datagrid-mask-msg\" style=\"display:block\"></div>").html("正在处理，请稍等...").appendTo(body);
            var mask = $(".datagrid-mask");
            if (mask) {
                mask.css({ width: win.width(), height: doc.height(), "z-index": 10001 });
                var msg = $(".datagrid-mask-msg");
                if (msg)
                    msg.css({ "z-index": 10002, left: (win.width() - msg.outerWidth()) / 2, top: (win.height() - msg.outerHeight()) / 2 });
            }
        }
    }, 10);
}
//隐藏加载框
function loadingMask_Hide() {
    isPostBack = true;
    var mask = $(".datagrid-mask");
    if (mask.length) {
        mask.remove();
        var msg = $(".datagrid-mask-msg");
        if (msg.length)
            msg.remove();
    }
}

//Grid 排序函数
function sorterFn(a, b) { return (a > b ? 1 : -1); }
//操作列格式化
function editFormatterFn(value, row, index) {
    //    if (AuthorizeActionStr == null)
    //        return "";
    var result = "";
    //    if (IsAuthorize(EditUrl))
    result += "<a href=\"#\" title=\"编辑此数据\" onclick=\"editRowFn(" + row.id + ")\" class=\"icon-edit ico16\"></a> ";
    //    if (IsAuthorize(DeleteUrl))
    result += "<a href=\"#\" title=\"删除此数据\" onclick=\"deleteRowFn(" + row.id + ")\" class=\"icon-remove ico16\"></a> ";
    //    if (result == "")
    //        result = "无权限";
    return ("<div style=\"width:100%; text-align:center;\">" + result + "</div>");
}
//根据Action 判断是否有此权限
function IsAuthorize(action) {
    if (AuthorizeActionStr == null)
        return false;
    if (AuthorizeActionStr.indexOf(";" + action + ";") != -1)
        return true;
    return false;
}

//Grid多选删除方法
//gridId Grid的id
//controller 为控制器和Action 地址
//deleteId 要删除的ID 如果不赋值 说明是删除全部
function deleteAllFun(gridId, controller, deleteId) {
    debugger;
    //获取选中的IDs
    var ids = [];
    var grid = $('#' + gridId);
    var rows = grid.datagrid('getSelections');
    //deleteId 等于 null 说明是删除全部
    if (deleteId == null) {
        if (rows.length < 1) {
            msgShow("提示信息", "请先选择要删除的数据！", "warning");
            return;
        }
        for (var i = 0; i < rows.length; i++) {
            ids.push(rows[i].id);
        }
    }
    else {
        ids.push(deleteId);
    }

    $.messager.confirm('提示信息', '您确认要删除这 ' + ids.length + ' 条数据吗?', function (data) {
        if (data) {
            $.ajax({
                url: controller,
                data: { "deleteId": ids.join(",") },
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
                        grid.datagrid('reload');
                        grid.datagrid('clearSelections');
                    } else {
                        msgShow('错误信息', data.msg, 'error');
                    }
                },
                error: function (data) {
                    alert(data);
                    msgShow('错误信息', '删除失败!', 'error');
                }
            });
        }
    });
}

//删除一行数据  deleteId 为要删除的ID
function deleteRowFn(deleteId) {
    deleteAllFun("td", DeleteUrl, deleteId);
}


//编辑一行数据  value 为要编辑的ID或者 Grid 的 ID
function editRowFn(value) {
    var edit;
    if (typeof value == "string")   //如果是string 类型就表示为 grid 的 ID
        edit = $('#' + value).datagrid('getSelected');
    else
        edit = value;
    if (edit != null) {
        if (!isNaN(edit))
            parent.addTab(EditTabTitle + "[id:" + edit + "]", EditUrl + "?editId=" + edit);
        else {
            parent.addTab(EditTabTitle + "[id:" + edit.id.toString() + "]", EditUrl + "?editId=" + edit.id);
        }
    }
    else
        msgShow("提示信息", "请先选择要编辑的数据！", "warning");


}


//操作列格式化
function stateFormatterFn(value, row, index) {
    if (row.State == 1) {
        return ("<a href=\"#\" title=\"状态\" onclick=\"stateChangeFn(" + row.id + ")\" class=\"icon-state-accept ico16\"><a>");
    }
    else {
        return ("<a href=\"#\" title=\"状态\" onclick=\"stateChangeFn(" + row.id + ")\" class=\"icon-state-colse ico16\"></a>");
    }
}
function stateChangeFn(id) {
    var grid = $('#grid');
    $.messager.confirm('提示信息', '您确认要更改状态吗?', function (data) {
        if (data) {
            $.ajax({
                url: StateUrl,
                data: { "changeId": id },
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
                        grid.datagrid('reload');
                        grid.datagrid('clearSelections');
                    } else {
                        msgShow('错误信息', data.msg, 'error');
                    }
                },
                error: function (data) {
                    msgShow('错误信息', '更改状态失败!', 'error');
                }
            });
        }
    });
}



function jsonToString(obj) {
    var THIS = this;
    switch (typeof (obj)) {
        case 'string':
            return '"' + obj.replace(/(["\\])/g, '\\$1') + '"';
        case 'array':
            return '[' + obj.map(THIS.jsonToString).join(',') + ']';
        case 'object':
            if (obj instanceof Array) {
                var strArr = [];
                var len = obj.length;
                for (var i = 0; i < len; i++) {
                    strArr.push(THIS.jsonToString(obj[i]));
                }
                return '[' + strArr.join(',') + ']';
            } else if (obj == null) {
                return 'null';

            } else {
                var string = [];
                for (var property in obj) string.push(THIS.jsonToString(property) + ':' + THIS.jsonToString(obj[property]));
                return '{' + string.join(',') + '}';
            }
        case 'number':
            return obj;
        case false:
            return obj;
    }
}

function stringToJSON(obj) {
    return eval('(' + obj + ')');
}



//关闭窗口
function winCls(id) {
    $('#' + id).window('close');
}
//显示窗口
function winShow(id) {
    $('#' + id).window('open');
}
//显示窗口
function winMsgShow(id, msgID, msg) {
    $('#' + msgID).html(msg);
    $('#' + id).window('open');
}
//设置窗口标题以及大小
function intitalWin(id, title, width, height) {
    $('#' + id).window({
        title: title,
        width: width,
        height: height,
        modal: true,
        closed: true,
        collapsible: false,
        minimizable: false,
        maximizable: false,
        resizable: false,
        draggable: true
    });
}
