<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/4
  Time: 3:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="./plugins/layui/css/layui.css" media="all">

    <style>
        .rigtop {
            width: 1140px;
            height: 40px;
            border: 1px solid #b7d5df;
            line-height: 40px;
            margin: auto;
            margin-top: 5px;
            text-align: center;
            color: red;
        }

        .rigbody {
            width: 1140px;
            height: 463px;
            border: 1px solid #b7d5df;
            line-height: 40px;
            margin: auto;
            margin-top: 5px;
        }
    </style>
</head>
<body>

<div class="rigtop" >
    ${param.msg}
</div>
<div class="rigbody" style="margin: auto">
    <form class="layui-form" method="post" action="/vehicle/add" >
        <div class="layui-form-item">
            <label class="layui-form-label">车牌号码：</label>
            <div class="layui-input-inline" >
                <input type="text" name="license" value="${param.license}" maxlength="11" required lay-verify="required" placeholder="请输入车牌号码" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">品牌：</label>
            <div class="layui-input-inline">
                <input type="text" name="vType" value="${param.vType}" maxlength="20" required lay-verify="required" placeholder="请输入品牌" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">员工编号：</label>
            <div class="layui-input-inline">
                <input type="text" name="staffNo"  value="${param.staffNo}"  maxlength="5" autocomplete="off" class="layui-input" placeholder="请输入员工编号">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">载重：</label>
            <div class="layui-input-inline">
                <input type="text" name="vload" value="${param.vload}"  maxlength="10" required lay-verify="required" placeholder="请输入载重" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <input   class="layui-btn layui-btn-normal" type="submit"/>
            <input   class="layui-btn layui-btn-normal" id="emptys" type="button" value="重置"/>
        </div>

    </form>
</div>

</body>
</html>
