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
<title>${sitename}--后台管理系统--荣誉获奖</title>
</head>
<body>
	<div id="teachertb" style="padding: 5px; height: auto">
	</div>
	<table id="honorawarddg" title="列表" class="easyui-datagrid"
			style="width: auto; height: 600px" url="StuTrain_queryhonoraward"
			toolbar="#honorawardtoolbar" pagination="true" rownumbers="true"
			fitColumns="true" pageList="[5,10]" singleSelect="true" pageSize="5" >
			<thead>
				<tr>
					<th field="honorname" width="30">荣誉名称</th>
					<th field="teammember" width="50" >团队成员</th>
					<th field="honortype" width="30" >荣誉类别</th>
					<th field="grantorg" width="30">授予单位</th>
					<th field="granttime" width="30">授予时间</th>
					<th field="teachernames" width="50">指导老师</th>
					<th field="remark" width="50">备注</th>
				</tr>
			</thead>
		</table>
	<div id="honorawardtoolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="newhonoraward()">新增</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="edithonoraward()">编辑</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="destroyhonoraward()">删除</a>
	</div>
	<div id="honorawarddlg" class="easyui-dialog"
		style="width: 700px; height: 350px; padding: 20px 20px;overflow: visible;" closed="true"
		buttons="#honorawarddlg-buttons">
		<div id="honorawardRow" class="fitem">
		<form id="honorawardfm" method="post" novalidate>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">荣誉名称:</label>
			<input id="honorname" name="honorname" style="width: 110px"
				class="easyui-validatebox"  maxlength="20">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">团队成员:</label>
			<input id="teammember" name="teammember" style="width: 110px"
				class="easyui-validatebox"  maxlength="20">
		</span>
		<br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">荣誉类别:</label>
			<select id="honortype" name="honortype" class="easyui-combobox" panelHeight="auto" editable="false"
				style="width: 100px">
				<option value="校级">校级</option>
				<option value="省市级">省市级</option>
				<option value="国家级">国家级</option>
				<option value="国际级">国际级</option>
			</select>
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">授予单位:</label>
			<input id="grantorg" name="grantorg" style="width: 110px"
				class="easyui-validatebox"  maxlength="30">
		</span>
		<br><br>
		<span class="span_column">
			<label style="width: 160px;text-align: right;">授予时间:</label> 
			<input id="granttime" name="granttime" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">指导老师:</label>
			<input id="teachernames" name="teachernames" style="width: 110px"
				class="easyui-validatebox"  maxlength="30">
		</span>
		<br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">备注:</label>
			<input id="remark" name="remark" style="width: 110px"
				class="easyui-validatebox"  maxlength="50">
		</span>
		</form>
		</div>
	</div>
	<div id="honorawarddlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-ok" onclick="savehonoraward()">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel"
			onclick="javascript:$('#honorawarddlg').dialog('close')">取消</a>
	</div>
	<script>
	var url;
	function queryhonoraward() {
		var teachernamequery = $('#teachernameQuery').val();
		var departmentquery = $('#departmentQuery').combobox('getValue');
		$('#honorawarddg').datagrid('load', {
			teachernamequery : teachernamequery,
			departmentquery : departmentquery
		});
	}
	function newhonoraward() {
		$('#honorawarddlg').dialog('open').dialog('setTitle', '新增');
		$('#honorawardfm').form('clear');
		url = 'StuTrain_savehonoraward';
	}
	
	function edithonoraward() {
		var row = $('#honorawarddg').datagrid('getSelected');
		if (row) {
			$('#honorawarddlg').dialog('open').dialog('setTitle',
					'编辑');
			$('#honorawardfm').form('clear');
			$('#honorawardfm').form('load', row);
			url = 'StuTrain_updatehonoraward?id=' + row.honorawardid;
		}
	}
	
	function savehonoraward() {
	var valid = $('#honorawardfm').form('validate');
		if(valid==true){
			$('#honorawardfm').form('submit', {
    			url : url,
    			onSubmit : function() {
    				return $(this).form('validate');
    			},
    			success : function(result) {
    				if (result != "true") {
    					jAlert('系统错误，请联系管理员', '错误提示');
    				} else {
    					$('#honorawarddlg').dialog('close'); // close the dialog
    					$('#honorawarddg').datagrid('reload'); // reload the user data
    				}
    			}
    		});
		
		}else{
			alert("信息填写不完整");
		}
	}
	function destroyhonoraward() {
		var row = $('#honorawarddg').datagrid('getSelected');
		if (row) {
			$.messager.confirm('确认', '是否要删除?', function(r) {
				if (r) {
					$.post('StuTrain_deletehonoraward', {
						id : row.honorawardid
					}, function(result) {
						if (result = "true") {
							$('#honorawarddg').datagrid('reload'); // reload the user data
						} else {
							jAlert('系统错误，请联系管理员', '错误提示');
						}
					}, 'json');
					$('#honorawarddg').datagrid('reload'); // reload the user data
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