<%--
  Created by IntelliJ IDEA.
  User: Jone
  Date: 2020/3/12
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>自来水线路管理系统</title>
    <link href="../css/default.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" type="text/css" href="../js/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="../js/themes/icon.css" />
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="../js/initial.index.js"> </script>
    <script type="text/javascript">

        var _menus = {
            "menus": [{
                "menuid": "1",
                "icon": "icon-sys",
                "menuname": "电力系统",
                "menus": [{
                    "menuid": "18",
                    "menuname":"我的工作平台",
                        "icon":"icon-nav",
                        "child": [{
                            "menuid": "140",
                            "menuname": "代办列表",
                            "icon": "icon-role",
                            "url": "list.html"
                        },
                            {
                                "menuid": "150",
                                "menuname": "个人资料修改",
                                "icon": "icon-set",
                                "url": "demo.html"
                            }]
                    },
                    {
                    "menuid": "12",
                    "menuname": "系统管理",
                    "icon": "icon-add",
                    "url": "http://hxling.cnblogs.com",
                    "child": [{
                        "menuid": "140",
                        "menuname": "角色管理",
                        "icon": "icon-role",
                        "url": "list.html"
                    }, {
                            "menuid": "140",
                            "menuname": "用户管理",
                            "icon": "icon-role",
                            "url": "list.html"
                        }, {
                            "menuid": "150",
                            "menuname": "角色权限配置",
                            "icon": "icon-set",
                            "url": "demo.html"
                        },{
                        "menuid": "140",
                        "menuname": "系统配置",
                        "icon": "icon-set",
                        "url": "list.html"
                    }]
                },
                    {
                        "menuid": "13",
                        "menuname": "塔点管理",
                        "icon": "icon-users",
                        "url": "//**//"
                    },
                    {
                        "menuid": "16",
                        "menuname": "线路管理",
                        "icon": "icon-users",
                        "url": "//**//"
                    },
                    {
                        "menuid": "14",
                        "menuname": "缺陷管理",
                        "icon": "icon-role",
                        "url": "demo2.html",
                        "child": [{
                            "menuid": "142",
                            "menuname": "缺陷类型设置",
                            "icon": "icon-role",
                            "url": "demo2.html"
                        },
                            {
                                "menuid": "152",
                                "menuname": "缺陷等级确认",
                                "icon": "icon-set",
                                "url": "demo.html"
                            }]
                    },
                    {
                        "menuid": "15",
                        "menuname": "巡检任务管理",
                        "icon": "icon-set",
                        "url": "demo.html",
                        "child": [{
                            "menuid": "143",
                            "menuname": "巡检任务定制与分配",
                            "icon": "icon-role",
                            "url": "PsInspectMain/list.jsp"
                        },
                            {
                                "menuid": "153",
                                "menuname": "巡检任务执行与回执",
                                "icon": "icon-set",
                                "url": "PsInspectMain/list2.jsp"
                            }, {
                                "menuid": "154",
                                "menuname": "缺陷查询",
                                "icon": "icon-set",
                                "url":"PsInspectMain/list3.jsp"
                            }
                        ]
                    },
                    {
                        "menuid": "17",
                        "menuname": "消缺任务管理",
                        "icon": "icon-set",
                        "url": "demo.html",
                        "child": [{
                            "menuid": "145",
                            "menuname": "消缺任务定制与分配",
                            "icon": "icon-role",
                            "url": "demo2.html"
                        },
                            {
                                "menuid": "157",
                                "menuname": "消缺任务执行与回执",
                                "icon": "icon-set",
                                "url": "demo.html"
                            }, {
                                "menuid": "156",
                                "menuname": "消缺查询",
                                "icon": "icon-set",
                                "url": "demo.html"
                            }
                        ]
                    },
                    {
                        "menuid": "18",
                        "menuname": "信息统计",
                        "icon": "icon-set",
                        "url": "demo.html",
                        "child": [{
                            "menuid": "148",
                            "menuname": "巡查记录统计",
                            "icon": "icon-role",
                            "url": "demo2.html"
                        },
                            {
                                "menuid": "159",
                                "menuname": "消缺记录统计",
                                "icon": "icon-set",
                                "url": "demo.html"
                            }
                        ]
                    }
                   ]
            },
            ]
        };

        //设置登录窗口
        function openPwd() {
            $('#w').window({
                title: '修改密码',
                width: 300,
                modal: true,
                shadow: true,
                closed: true,
                height: 160,
                resizable:false
            });
        }
        //关闭登录窗口
        function closePwd() {
            $('#w').window('close');
        }



        //修改密码
        function serverLogin() {
            var $newpass = $('#txtNewPass');
            var $rePass = $('#txtRePass');

            if ($newpass.val() == '') {
                msgShow('系统提示', '请输入密码！', 'warning');
                return false;
            }
            if ($rePass.val() == '') {
                msgShow('系统提示', '请在一次输入密码！', 'warning');
                return false;
            }

            if ($newpass.val() != $rePass.val()) {
                msgShow('系统提示', '两次密码不一至！请重新输入', 'warning');
                return false;
            }

            $.post('/ajax/editpassword.ashx?newpass=' + $newpass.val(), function(msg) {
                msgShow('系统提示', '恭喜，密码修改成功!您的新密码为：' + msg, 'info');
                $newpass.val('');
                $rePass.val('');
                close();
            })

        }

        $(function() {

            openPwd();

            $('#editpass').click(function() {
                $('#w').window('open');
            });

            $('#btnEp').click(function() {
                serverLogin();
            })

            $('#btnCancel').click(function(){closePwd();})

            $('#loginOut').click(function() {
                $.messager.confirm('系统提示', '您确定要退出本次登录吗?', function(r) {

                    if (r) {
                        location.href = '/ajax/loginout.ashx';
                    }
                });
            })
        });



    </script>

</head>
<body class="easyui-layout" style="overflow-y: hidden"  fit="true"   scroll="no">
<noscript>
    <div style=" position:absolute; z-index:100000; height:2046px;top:0px;left:0px; width:100%; background:white; text-align:center;">
        <img src="/images/noscript.gif" alt='抱歉，请开启脚本支持！' />
    </div></noscript>

<div id="loading-mask" style="position:absolute;top:0px; left:0px; width:100%; height:100%; background:#D2E0F2; z-index:20000">
    <div id="pageloading" style="position:absolute; top:50%; left:50%; margin:-120px 0px 0px -120px; text-align:center;  border:2px solid #8DB2E3; width:200px; height:40px;  font-size:14px;padding:10px; font-weight:bold; background:#fff; color:#15428B;">
        <img src="/images/loading.gif" align="absmiddle" /> 正在加载中,请稍候...</div>
</div>

<div region="north" split="true" border="false" style="overflow: hidden; height: 30px;
        background: url(../images/layout-browser-hd-bg.gif) #7f99be repeat-x center 50%;
        line-height: 20px;color: #fff; font-family: Verdana, 微软雅黑,黑体">
    <span style="float:right; padding-right:20px;" class="head">欢迎 admin <a href="#" id="editpass">修改密码</a> <a href="#" id="loginOut">安全退出</a></span>
    <span style="padding-left:10px; font-size: 16px; "><img src="/images/blocks.gif" width="20" height="20" align="absmiddle" /> 民信自来水线路管理系统</span>
</div>
<div region="south" split="true" style="height: 30px; background: #D2E0F2; ">
    <div class="footer">增值电信业务经营许可证：合字B2-20090007 京ICP备10036305号 京公网安备11010802022657号</div>
</div>
<div region="west" split="true"  title="导航菜单" style="width:180px;" id="west">
    <div id="nav">
        <!--  导航内容 -->

    </div>

</div>
<div id="mainPanle" region="center" style="background: #eee; overflow-y:hidden">
    <div id="tabs" class="easyui-tabs"  fit="true" border="false" >
        <div title="欢迎使用" style="padding:20px;overflow:hidden; color:red; " >
            <style type="text/css">
                h1{color: #007bb6;font-size: 25px}
            </style>
            <h1>欢迎您登录民信自来水线路管理系统</h1>
        </div>
    </div>
</div>


<!--修改密码窗口-->
<div id="w" class="easyui-window" title="修改密码" collapsible="false" minimizable="false"
     maximizable="false" icon="icon-save"  style="width: 300px; height: 150px; padding: 5px;
        background: #fafafa;">
    <div class="easyui-layout" fit="true">
        <div region="center" border="false" style="padding: 10px; background: #fff; border: 1px solid #ccc;">
            <table cellpadding=3>
                <tr>
                    <td>新密码：</td>
                    <td><input id="txtNewPass" type="Password" class="txt01" /></td>
                </tr>
                <tr>
                    <td>确认密码：</td>
                    <td><input id="txtRePass" type="Password" class="txt01" /></td>
                </tr>
            </table>
        </div>
        <div region="south" border="false" style="text-align: right; height: 30px; line-height: 30px;">
            <a id="btnEp" class="easyui-linkbutton" icon="icon-ok" href="javascript:void(0)" >
                确定</a> <a id="btnCancel" class="easyui-linkbutton" icon="icon-cancel" href="javascript:void(0)">取消</a>
        </div>
    </div>
</div>

<div id="mm" class="easyui-menu" style="width:150px;">
    <div id="tabupdate">刷新</div>
    <div class="menu-sep"></div>
    <div id="close">关闭</div>
    <div id="closeall">全部关闭</div>
    <div id="closeother">除此之外全部关闭</div>
    <div class="menu-sep"></div>
    <div id="closeright">当前页右侧全部关闭</div>
    <div id="closeleft">当前页左侧全部关闭</div>
    <div class="menu-sep"></div>
    <div id="exit">退出</div>
</div>


</body>
</html>
