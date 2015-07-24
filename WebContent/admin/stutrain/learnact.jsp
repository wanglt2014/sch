<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
	String request_path = request.getContextPath();
	String js_path = request_path + "/js";
	request.setAttribute("request_path", request_path);
	request.setAttribute("js_path", js_path);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${sitename}--后台管理系统--学术活动</title>
</head>
<body>
	<div id="teachertb" style="padding: 5px; height: auto">
	</div>
	<table id="learnactdg" title="列表" class="easyui-datagrid"
			style="width: auto; height: 600px" url="StuTrain_querylearnact"
			toolbar="#learnacttoolbar" pagination="true" rownumbers="true"
			fitColumns="true" pageList="[5,10]" singleSelect="true" pageSize="5" >
			<thead>
				<tr>
					<th field="actname" width="30">学术活动名称</th>
					<th field="expertnames" width="30" >邀请专家姓名</th>
					<th field="teachernames" width="30" >参加老师</th>
					<th field="studentnames" width="30">参加学生人数</th>
					<th field="actplace" width="30">举办地点</th>
					<th field="acttime" width="40">举办时间</th>
					<th field="subjects" width="60">活动涉及学科</th>
					<th field="remark" width="60">备注</th>
				</tr>
			</thead>
		</table>
	<div id="learnacttoolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="newlearnact()">新增</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editlearnact()">编辑</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="destroylearnact()">删除</a>
	</div>
	<div id="learnactdlg" class="easyui-dialog"
		style="width: 700px; height: 350px; padding: 20px 20px;overflow: visible;" closed="true"
		buttons="#learnactdlg-buttons">
		<div id="learnactRow" class="fitem">
		<form id="learnactfm" method="post" novalidate>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">学术活动名称:</label>
			<input id="actname" name="actname" style="width: 110px"
				class="easyui-validatebox"  maxlength="30">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">邀请专家姓名:</label>
			<input id="expertnames" name="expertnames" style="width: 110px"
				class="easyui-validatebox"  maxlength="100">
		</span>
		<br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">参加老师:</label>
			<input id="teachernames" name="teachernames" style="width: 110px"
				class="easyui-validatebox"  maxlength="100">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">参加学生人数:</label>
			<input id="studentnames" name="studentnames" style="width: 110px"
				class="easyui-validatebox"  maxlength="5">
		</span>
		<br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">举办地点:</label>
			<input id="actplace" name="actplace" style="width: 110px"
				class="easyui-validatebox"  maxlength="50">
		</span>
		<span class="span_column">
			<label style="width: 160px;text-align: right;">举办时间:</label> 
			<input id="acttime" name="acttime" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
		</span>
		<br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">活动涉及学科:</label>
			<input id="subjects" name="subjects" style="width: 390px"
				class="easyui-validatebox"  maxlength="50">
		</span>
		<br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">备注:</label>
			<input id="remark" name="remark" style="width: 390px"
				class="easyui-validatebox"  maxlength="100">
		</span>
		</form>
		</div>
	</div>
	<div id="learnactdlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-ok" onclick="savelearnact()">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel"
			onclick="javascript:$('#learnactdlg').dialog('close')">取消</a>
	</div>
	<script>
	var url;
	function querylearnact() {
		var teachernamequery = $('#teachernameQuery').val();
		var departmentquery = $('#departmentQuery').combobox('getValue');
		$('#learnactdg').datagrid('load', {
			teachernamequery : teachernamequery,
			departmentquery : departmentquery
		});
	}
	function newlearnact() {
		$('#learnactdlg').dialog('open').dialog('setTitle', '新增');
		$('#learnactfm').form('clear');
		url = 'StuTrain_savelearnact';
	}
	
	function editlearnact() {
		var row = $('#learnactdg').datagrid('getSelected');
		if (row) {
			$('#learnactdlg').dialog('open').dialog('setTitle',
					'编辑');
			$('#learnactfm').form('clear');
			$('#learnactfm').form('load', row);
			url = 'StuTrain_updatelearnact?id=' + row.actid;
		}
	}
	
	function savelearnact() {
	var valid = $('#learnactfm').form('validate');
		if(valid==true){
			$('#learnactfm').form('submit', {
    			url : url,
    			onSubmit : function() {
    				return $(this).form('validate');
    			},
    			success : function(result) {
    				if (result != "true") {
    					jAlert('系统错误，请联系管理员', '错误提示');
    				} else {
    					$('#learnactdlg').dialog('close'); // close the dialog
    					$('#learnactdg').datagrid('reload'); // reload the user data
    				}
    			}
    		});
		
		}else{
			alert("信息填写不完整");
		}
	}
	function destroylearnact() {
		var row = $('#learnactdg').datagrid('getSelected');
		if (row) {
			$.messager.confirm('确认', '是否要删除?', function(r) {
				if (r) {
					$.post('StuTrain_deletelearnact', {
						id : row.actid
					}, function(result) {
						if (result = "true") {
							$('#learnactdg').datagrid('reload'); // reload the user data
						} else {
							jAlert('系统错误，请联系管理员', '错误提示');
						}
					}, 'json');
					$('#learnactdg').datagrid('reload'); // reload the user data
				}
			});
		}
	}
	</script>
	<style type="text/css">
#teacherfm {
	margin: 0;
	padding: 10px 30px;
}

.ftitle {
	font-size: 14px;
	font-weight: bold;
	padding: 5px 0;
	margin-bottom: 10px;
	border-bottom: 1px solid #ccc;
}

.fitem {
	margin-bottom: 5px;
}

.fitem label {
	display: inline-block;
	width: 80px;
}
</style>
</body>
</html>