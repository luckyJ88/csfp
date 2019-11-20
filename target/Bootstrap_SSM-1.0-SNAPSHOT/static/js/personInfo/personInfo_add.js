var rootPath = $("#flag").attr("data-url");

layui.use(['form','laydate','upload'],function () {
    var form = layui.form,
        upload = layui.upload,

        laydate = layui.laydate;
    upload.render({
        elem: '#zjz_btn' //绑定元素
        ,url: rootPath+'/upload' //上传接口
        ,accept:"images"
        ,auto:true
        ,field:'idPhoto'
        ,acceptMime: 'image/!*'
        ,done: function(res){
            console.log(res.data.src)
            $("#zjz").val(res.data.src);
            /*$("#zjz").attr("disabled",true);*/
        }
        ,error: function(){
            console.log("上传失败")
        }
    });
    laydate.render({
        elem:"#csrq"
    });

    /*
    * 添加人口信息
    * */
    form.on('submit(add)',function (data) {
        var person_info = data.field;//获取表单的所有数据，获得是一个对象
        console.log(person_info);
        $.ajax({
            url:rootPath+'/insertPersonInfo',
            type:'POST',
            data:JSON.stringify(person_info),//转为json字符串
            contentType:'application/json;charset=utf-8',
            dataType:'json',
            success:function (data) {
                if (data > 0){
                    /**
                     * 关闭iframe层
                     * */
                    var index = parent.layer.getFrameIndex(window.name);
                    parent.layer.close(index);
                    layer.msg('添加成功', {
                        icon: 1,
                        time: 2000 //2秒关闭（如果不配置，默认是3秒）
                    });
                }else{
                    layer.msg('添加失败，请稍后再试', {
                        icon: 2,
                        time: 2000 //2秒关闭（如果不配置，默认是3秒）
                    });
                }

            },
            error:function () {
                console.log("请求失败")
            }
        });
        return false;

    })
});
