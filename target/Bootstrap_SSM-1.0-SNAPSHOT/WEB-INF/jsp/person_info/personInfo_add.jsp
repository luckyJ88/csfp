<%--
  Created by IntelliJ IDEA.
  User: luckyJ
  Date: 2019/11/9
  Time: 17:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <title>添加管理员-WeAdmin Frame型后台管理系统-WeAdmin 1.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/weadmin.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/pages/admin/css/add.css">
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div id="flag" class="weadmin-body" data-url="${pageContext.request.contextPath}">
    <form id="personInfo_from" class="layui-form">
        <div class="layui-row">
            <div class="layui-form-item">
                <label for="sfzh" class="layui-form-label">
                    <span class="we-red">*</span>身份证号
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="sfzh" name="sfzh" required="" lay-verify="required" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">
                    <span class="we-red">* </span>识别人口信息的唯一标识
                </div>
            </div>
            <div class="layui-form-item">
                <label for="zsxm" class="layui-form-label">
                    <span class="we-red">*</span>真实姓名
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="zsxm" name="zsxm" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">
                    <span class="we-red">* </span>请填入真实姓名
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="we-red">*</span>单选框
            </label>
            <div class="layui-input-block">
                <input type="radio" name="xb" value="男" title="男" checked>
                <input type="radio" name="xb" value="女" title="女">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="csrq" class="layui-form-label">
                <span class="we-red">*</span>出生日期
            </label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" name="csrq" id="csrq"/>
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="we-red">* </span>请填入出生日期
            </div>
        </div>
        <div class="layui-form-item">
            <label for="zjz" class="layui-form-label">
                <span class="we-red">*</span>证件照
            </label>
            <div class="layui-input-inline">
                <input type="text" id="zjz" name="zjz" class="layui-input"/>
            </div>
            <div class="layui-word-aux">
                <button type="button" class="layui-btn" id="zjz_btn">
                    <i class="layui-icon">&#xe67c;</i>上传证件照
                </button>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="mz" class="layui-form-label">
                <span class="we-red">*</span>民族
            </label>
            <div class="layui-input-inline">
                <select id="mz" name="mz" lay-verify="">
                    <option value="汉族">汉族</option>
                    <option value="蒙古族">蒙古族</option>
                    <option value="回族">回族</option>
                    <option value="藏族">藏族</option>
                    <option value="维吾尔族">维吾尔族</option>
                    <option value="苗族">苗族</option>
                    <option value="彝族">彝族</option>
                    <option value="壮族">壮族</option>
                    <option value="布依族">布依族</option>
                    <option value="朝鲜族">朝鲜族</option>
                    <option value="满族">满族</option>
                    <option value="侗族">侗族</option>
                    <option value="瑶族">瑶族</option>
                    <option value="土家族">土家族</option>
                    <option value="哈尼族">哈尼族</option>
                    <option value="哈沙克族">哈沙克族</option>
                    <option value="傣族">傣族</option>
                    <option value="傈僳族">傈僳族</option>
                    <option value="佤族">佤族</option>
                    <option value="畲族">畲族</option>
                    <option value="高山族">高山族</option>
                    <option value="拉祜族">拉祜族</option>
                    <option value="水族">水族</option>
                    <option value="东乡族">东乡族</option>
                    <option value="纳西族">纳西族</option>
                    <option value="景颇族">景颇族</option>
                    <option value="柯尔克孜族">柯尔克孜族</option>
                    <option value="土族">土族</option>
                    <option value="达翰尔族">达翰尔族</option>
                    <option value="仫佬族">仫佬族</option>
                    <option value="羌族">羌族</option>
                    <option value="布朗族">布朗族</option>
                    <option value="撒拉族">撒拉族</option>
                    <option value="毛南族">毛南族</option>
                    <option value="仡佬族">仡佬族</option>
                    <option value="锡伯族">锡伯族</option>
                    <option value="阿昌族">阿昌族</option>
                    <option value="普米族">普米族</option>
                    <option value="塔吉克族">塔吉克族</option>
                    <option value="怒族">怒族</option>
                    <option value="乌孜别克族">乌孜别克族</option>
                    <option value="俄罗斯族">俄罗斯族</option>
                    <option value="鄂温克族">鄂温克族</option>
                    <option value="德昂族">德昂族</option>
                    <option value="保安族">保安族</option>
                    <option value="裕固族">裕固族</option>
                    <option value="京族">京族</option>
                    <option value="塔塔尔族">塔塔尔族</option>
                    <option value="独龙族">独龙族</option>
                    <option value="鄂伦春族">鄂伦春族</option>
                    <option value="赫哲族">赫哲族</option>
                    <option value="门巴族">门巴族</option>
                    <option value="珞巴族">珞巴族</option>
                    <option value="基诺族">基诺族</option>
                </select>
            </div>
        </div>

        <div class="layui-form-item">
            <label  class="layui-form-label">
                <span class="we-red">*</span>政治面貌
            </label>
            <div  class="layui-input-block">
                <input type="radio" name="zzmm" value="中共党员" title="中共党员" lay-skin="primary">
                <input type="radio" name="zzmm" value="共青团员" title="共青团员" lay-skin="primary">
                <input type="radio" name="zzmm" value="群众" title="群众" lay-skin="primary" checked>
                <input type="radio" name="zzmm" value="民主党派" title="民主党派" lay-skin="primary">
            </div>
        </div>

        <div class="layui-form-item">
            <label  class="layui-form-label">
                <span class="we-red">*</span>文化程度
            </label>
            <div  class="layui-input-block">
                <input type="radio" name="whcd" value="小学" title="小学" lay-skin="primary" checked>
                <input type="radio" name="whcd" value="初中" title="初中" lay-skin="primary">
                <input type="radio" name="whcd" value="高中" title="高中" lay-skin="primary">
                <input type="radio" name="whcd" value="大学" title="大学" lay-skin="primary">
                <input type="radio" name="whcd" value="研究生" title="研究生" lay-skin="primary">
                <input type="radio" name="whcd" value="博士生" title="博士生" lay-skin="primary">
            </div>
        </div>

        <div class="layui-form-item">
            <label  class="layui-form-label">
                <span class="we-red">*</span>户口类型
            </label>
            <div class="layui-input-block">
                <input type="radio" name="hklx" value="农业" title="农业" lay-skin="primary" checked>
                <input type="radio" name="hklx" value="非农业" title="非农业" lay-skin="primary">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="jg" class="layui-form-label">
                <span class="we-red">*</span>籍贯
            </label>
            <div class="layui-input-inline">
                <input type="text" id="jg" name="jg" required=""
                       autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="we-red">*</span>请输入籍贯
            </div>
        </div>

        <div class="layui-form-item">
            <label for="hjd" class="layui-form-label">
                <span class="we-red">*</span>户籍地
            </label>
            <div class="layui-input-inline">
                <input type="text" id="hjd" name="hjd" required=""
                       autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="we-red">*</span>请输入户籍地
            </div>
        </div>




        <div class="layui-form-item">
            <label class="layui-form-label"><span class="we-red">*</span>婚姻状况</label>
            <div class="layui-input-block">
                <input type="radio" name="hyzk" value="未婚" title="未婚" lay-skin="primary" checked>
                <input type="radio" name="hyzk" value="已婚" title="已婚" lay-skin="primary">
                <input type="radio" name="hyzk" value="丧偶" title="丧偶" lay-skin="primary">
                <input type="radio" name="hyzk" value="离婚" title="离婚" lay-skin="primary">
            </div>
        </div>



        <div class="layui-form-item">
            <label for="zy" class="layui-form-label">
                <span class="we-red">*</span>职业
            </label>
            <div class="layui-input-inline">
                <input type="text" id="zy" name="zy" required=""
                       autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="we-red">*</span>请输入职业
            </div>
        </div>
        <div class="layui-form-item">
            <label  class="layui-form-label"></label>
            <button  class="layui-btn" lay-submit lay-filter="add" id="add">增加</button>
        </div>
    </form>
</div>

<script src="${pageContext.request.contextPath}/static/js/jquery/jquery.min.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/static/js/personInfo/personInfo_add.js" charset="utf-8"></script>
</body>
</html>
