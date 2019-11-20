<%--
  Created by IntelliJ IDEA.
  User: luckyJ
  Date: 2019/11/9
  Time: 19:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>文件上传</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/weadmin.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/pages/admin/css/add.css">
</head>
<body>
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

        <img src=""  id="imgFile" style="width: 200px;height: 200px">
</div>


<script src="${pageContext.request.contextPath}/static/js/jquery/jquery.min.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/static/js/personInfo/personInfo_add.js" charset="utf-8"></script>
<script type="text/javascript">
    layui.use('upload', function(){
        var upload = layui.upload;

        //执行实例
        var uploadInst = upload.render({
            elem: '#zjz_btn' //绑定元素
            ,url: '${pageContext.request.contextPath}/upload' //上传接口
            ,accept:"images"
            ,auto:true
            ,field:'idPhoto'
            ,acceptMime: 'image/*'
            ,done: function(res){
                console.log(res.data.src)
                $("#zjz").val(res.data.src);
                $("#imgFile").attr("src",res.data.src);
            }
            ,error: function(){
                console.log("上传失败")
            }
        });
    });
</script>
</body>
</html>
