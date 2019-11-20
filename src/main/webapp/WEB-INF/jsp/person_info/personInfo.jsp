<%--
  Created by IntelliJ IDEA.
  User: luckyJ
  Date: 2019/11/8
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>会员列表-WeAdmin Frame型后台管理系统-WeAdmin 1.0</title>
    <meta name="renderer" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/weadmin.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/personInfo.css"/>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="weadmin-nav" id="info_page" data-info="${pageContext.request.contextPath}">
			<span class="layui-breadcrumb">
				<a href="javascript:;">首页</a> <a href="javascript:;">会员管理</a>
				<a href="javascript:;"> <cite>会员列表</cite></a>
			</span>
    <a class="layui-btn layui-btn-sm" style="margin-top:3px;float:right"
       href="javascript:location.replace(location.href);"
       title="刷新">
        <i class="layui-icon layui-icon-refresh"></i>
        <!-- <i class="layui-icon" style="line-height:30px">&#x1002;</i> -->
    </a>
</div>

<table class="layui-hide" id="personInfo_tabs" lay-filter="test">
    <div id="tabs_toolbar" class="layui-form-item" style="display: none;">
        <button class="layui-btn " onclick="personInfoPage(800,600);" id="personInfoPage">增加</button>
        <button id="deletes" class="layui-btn layui-btn-danger" onclick="deletes();">批量删除</button>
        <div class="layui-inline">
            <input type="text" id="search" name="search" placeholder="请输入身份证号" autocomplete="off" class="layui-input"/>
        </div>
        <button class="layui-btn" id="search-btn" onclick="dj()">查询</button>
    </div>
</table>
<!--<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>-->
<script src="${pageContext.request.contextPath}/static/js/jquery/jquery.min.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/lib/layui/layui.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/static/js/eleDel.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/static/js/admin.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
        layui.use(['table', 'form', 'layer'], function () {
            var table = layui.table,
                form = layui.form,
                layer = layui.layer;
            form.render();
            //加载人口信息数据
            table.render({
                elem: '#personInfo_tabs'
                , height: 'full-54'
                , title: "人口信息表"
                , id: 'table_load'
                , url: '${pageContext.request.contextPath}/personInfo' //数据接口
                , method: "get"
                , limit: 15//初始每页显示条数
                , limits: [5, 10, 15, 20, 25, 30, 40, 50, 60, 70]
                , toolbar: "#tabs_toolbar"
                , page: true //开启分页
                , response: {
                    statusName: 'code' //规定数据状态的字段名称，默认：code
                    , statusCode: 200 //规定成功的状态码，默认：0
                    , msgName: 'msg' //规定状态信息的字段名称，默认：msg
                    , countName: 'total' //规定数据总数的字段名称，默认：count
                    , dataName: 'data' //规定数据列表的字段名称，默认：data
                }
                , request: {
                    pageName: 'page' //页码的参数名称，默认：page
                    , limitName: 'limit' //每页数据量的参数名，默认：limit
                }
                , cols: [[ //表头
                    {type: 'checkbox', title: '全选'}
                    , {field: 'id', title: 'ID', width: 100, sort: true}
                    , {field: 'sfzh', title: '身份证号', width: 178,sort: true}
                    , {field: 'zsxm', title: '真实姓名', edit:'text',sort: true}
                    , {field: 'xb', title: '性别',edit:'text'}
                    , {field: 'csrq', title: '出生日期', templet: '<div>{{layui.util.toDateString(d.csrq, "yyyy-MM-dd") }}</div>'}
                    /*,{field: 'zjz', title: '证件照'}*/
                    , {field: 'mz', title: '民族'}
                    , {field: 'zzmm', title: '政治面貌',edit:'text'}
                    , {field: 'whcd', title: '文化程度',edit:'text'}
                    , {field: 'hklx', title: '户口类型',edit:'text'}
                    , {field: 'hjd', title: '户籍地',edit:'text'}
                    , {field: 'hyzk', title: '婚姻状况',edit:'text'}
                    , {field: 'zy', title: '职业',edit:'text', sort: true}
                    , {field: 'jg', title: '籍贯',edit:'text'}
                    , {fixed: 'right', title: '操作', width: 160, align: 'center', toolbar: '#barDemo'}
                ]]

            });
            table.on('tool(test)', function (obj) {
                var data = obj.data; //获得当前行数据
                var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
                var tr = obj.tr; //获得当前行 tr 的 DOM 对象（如果有的话）
                if (layEvent === 'detail') { //查看
                    alert("你好");
                } else if (layEvent === 'del') { //删除
                    layer.confirm('你确定要删除吗?', function (index) {
                        obj.del(); //删除对应行（tr）的DOM结构，并更新缓存
                        layer.close(index);
                        //向服务端发送删除指令
                        $.ajax({
                            url:'${pageContext.request.contextPath}/deletePersonInfo?deleteId='+data.id,
                            type:'GET',
                            dataType:'json',
                            success:function (rs) {
                                if (rs > 0){
                                    layer.msg('删除成功',{
                                        icon:1,
                                        time:2000
                                    });
                                }else{
                                    layer.msg('删除失败，请稍后再重试',{
                                        icon:2,
                                        time:2000
                                    })
                                }
                            },
                            error:function () {
                                layer.msg('删除失败，请稍后再重试',{
                                    icon:2,
                                    time:2000
                                })
                            }
                        })
                    });
                } else if (layEvent === 'edit') { //编辑
                    $.ajax({
                        url:'${pageContext.request.contextPath}/updatePersonInfo',
                        data:JSON.stringify(data),
                        type:'POST',
                        contentType:'application/json;charset=utf-8',
                        dataType:'json',
                        success:function (rs) {
                            if (rs > 0){
                                layer.msg('修改成功',{
                                    icon:1,
                                    time:2000
                                });
                            }else{
                                layer.msg('修改失败，请稍后再重试',{
                                    icon:2,
                                    time:2000
                                })
                            }
                        },
                        error:function () {
                            layer.msg('修改失败，请稍后再重试',{
                                icon:2,
                                time:2000
                            })
                        }
                    });
                } else if (layEvent === 'LAYTABLE_TIPS') {
                    layer.alert('Hi，头部工具栏扩展的右侧图标。');
                }
            });
    });

    
    function dj() {
        alert('Hi，头部工具栏扩展的右侧图标。');

    }

        //批量删除
    /**
     * 打开新增iframe层
     */
    function personInfoPage(w, h) {
        /*if(url == null || url == '') {
            url = "404.html";
        };*/
        if (w == null || w == '') {
            w = ($(window).width() * 0.9);
        }
        ;
        if (h == null || h == '') {
            h = ($(window).height() - 50);
        }
        ;
        var index = layer.open({
            title: '新增人口信息',
            type: 2,
            fix: true, //不固定
            maxmin: true,
            shadeClose: true,
            shade: 0.4,
            anim: 0,
            area: [w + 'px', h + 'px'],
            content: "${pageContext.request.contextPath}/addPersonInfoView"
        });
    }

    function searchByIdCard() {
        alert("你好")
    }

    function findByIdCard() {

    }


    function deletes() {
        $.ajax({

        })
    }

</script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs layui-btn-normal" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
</body>
</html>
