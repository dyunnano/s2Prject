<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<title>table模块快速使用</title>
		<link rel="stylesheet" href="./plugins/layui/css/layui.css" media="all">
	</head>

	<body>
		<div style="padding: 10px 0 0 10px;">
			<button class="layui-btn layui-btn-sm layui-btn-normal" id="btnAdd" data-type="auto">添加</button>
		</div>
		<table class="layui-table" lay-data="{height:315, url:'table.json', page:true, id:'test',height: 'full-25'}" lay-filter="test" id="test">
			<thead>
				<tr>
					<th lay-data="{field:'id', width:80, sort: true}">ID</th>
					<th lay-data="{field:'username', width:80}">用户名</th>
					<th lay-data="{field:'sex', width:80, sort: true}">性别</th>
					<th lay-data="{field:'city', width:80}">城市</th>
					<th lay-data="{field:'sign', width:177}">签名</th>
					<th lay-data="{field:'experience', width:80, sort: true}">积分</th>
					<th lay-data="{field:'score', width:80, sort: true}">评分</th>
					<th lay-data="{field:'classify', width:80}">职业</th>
					<th lay-data="{field:'wealth', width:135, sort: true}">财富</th>
				</tr>
			</thead>
		</table>

		<script src="./plugins/layui/layui.js"></script>
		<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
		<script>
			layui.use('table', function() {
				var table = layui.table;
			});

			$("#btnAdd").click(function() {

				//通过这种方式弹出的层，每当它被选择，就会置顶。
				layer.open({
					type: 1,
					shade: [0.4, '#393D49'],
					area: ['600px', '400px'],
					maxmin: true,
					content: $("#form1"),
					zIndex: layer.zIndex, //重点1
					success: function(layero) {
						layer.setTop(layero); //重点2
					},
					btn: ['按钮一', '按钮二', '按钮三'],
					yes: function(index, layero) {
						//按钮【按钮一】的回调
					},
					btn2: function(index, layero) {
						//按钮【按钮二】的回调

						//return false 开启该代码可禁止点击该按钮关闭
					},
					btn3: function(index, layero) {
						//按钮【按钮三】的回调

						//return false 开启该代码可禁止点击该按钮关闭
					},
					cancel: function() {
						//右上角关闭回调

						//return false 开启该代码可禁止点击该按钮关闭
					}
				});

			});
		</script>
	</body>

	<fieldset id="form1" hidden="hidden">
		<legend>用户信息</legend>
		<p>
			<label for="name">姓名：</label> <input type="text" name="name" id="name" placeholder="请输入姓名" /> <span id="nameMsg" class="red"></span>
		</p>
		<p>
			<label for="city">城市：</label> <input type="text" name="city" id="city" placeholder="请输入城市" /> <span id="cityMsg" class="red"></span>
		</p>
		<p>
			<button type="button" id="btnSave" onclick="layer.closeAll()">保存</button>
			<button type="button" id="btnUpdate">更新</button>
		</p>
	</fieldset>

</html>