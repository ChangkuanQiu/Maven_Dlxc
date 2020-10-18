<%--
  Created by IntelliJ IDEA.
  User: qiuch
  Date: 2019/12/5
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="apple-touch-fullscreen" content="yes" />
    <link rel="stylesheet" href="../../css/bootstrap.min.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../../css/font-awesome.min.css" />
    <!-- Ionicons -->
    <link rel="stylesheet" href="../../css/ionicons.min.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="../admin/dist/css/AdminLTE.min.css" />
    <link rel="stylesheet" href="../admin/dist/css/skins/_all-skins.min.css" />
    <link rel="stylesheet" href="../../css/dataTables.bootstrap.min.css" />
    <script type="text/javascript" src="../../js/jquery-2.2.3.min.js"></script>
    <script type="text/javascript" src="../../js/layer/layer.js"></script>
    <script type="text/javascript" src="../admin/dist/js/jquery-1.12.4.js"></script>
    <script type="text/javascript" >
        function del(id) {
            if (confirm("确定要删除吗?")){
                $(function () {
                $.ajax({
                    url:"/admin/del.do?id="+id,
                    type:"post",
                    success: function (del) {
                        if(del=="true"){
                           location.href="/admin/list.do"
                        }
                    }
                })
                })
            }
        }
        function bj(id) {
            location.href="/user/find.do?id="+id;
        }
    </script>
</head>
<body>


<form id="form1" runat="server">
    <section class="content-header">
        <h1>&nbsp;</h1>
        <ol class="breadcrumb">
            <li><a href="right.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">管理员管理</a></li>
            <li class="active">管理员列表</li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">管理员列表</h3>
                    </div>
                    <div class="box-body table-responsive no-padding">
                        <table>
                            <tr>
                                <td colspan="4">关键词:<input type="text"/><input type="button" value="搜索" /></td>
                            </tr>
                        </table>
                        <table id="grid" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">

                            <thead>
                            <tr>
                                <th>编号</th>
                                <th>用户名</th>
                                <th>真实姓名</th>
                                <th>身份</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:if test="${! empty userlist}">
                                <c:forEach items="${userlist}" var="list">
                                    <tr>
                                        <td id="id">${list.id}</td>
                                        <td>${list.loginName}</td>
                                        <td>${list.userName}</td>
                                        <c:if test="${list.type==1}">
                                            <td>管理员</td>
                                        </c:if>
                                        <c:if test="${list.type==0}">
                                            <td>用户</td>
                                        </c:if>
                                        <td><button id='editrow' onclick="bj(${list.id})" class='btn btn-success btn-sm' type='button'>编辑</button>&nbsp<button id='delrow'  class='btn btn-danger btn-sm' onclick="del(${list.id})" type='button'>删除</button></td>
                                    </tr>
                                </c:forEach>
                            </c:if>

                            </tbody>
                            <tr>
                                <td colspan="4" align="right">
                                    <ul class="pager">
                                        <li><a href="/admin/list.do?Pages=<%=request.getAttribute("firstPage")%>">首页</a></li>
                                        <li><a href="/admin/list.do?Pages=<%=request.getAttribute("prePage")%>">上一页</a></li>
                                        <li><a href="/admin/list.do?Pages=<%=request.getAttribute("nextPage")%>">下一页</a></li>
                                        <li><a href="/admin/list.do?Pages=<%=request.getAttribute("lastPage")%>">尾页</a></li>
                                        <li><span>共<%=request.getAttribute("currPage")%>/<%=request.getAttribute("pageCount")%>页</span></li>
                                    </ul>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script type="text/javascript" src="../../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <script type="text/javascript" src="../admin/plugins/fastclick/fastclick.js"></script>
    <script type="text/javascript" src="../admin/dist/js/app.min.js"></script>
</form>
</body>
</html>

