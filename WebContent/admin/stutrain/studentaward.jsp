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
<title>${sitename}--后台管理系统--学生获奖</title>
</head>
<body>
	<div id="teachertb" style="padding: 5px; height: auto">
	</div>
	<table id="studentawarddg" title="列表" class="easyui-datagrid"
			style="width: auto; height: 600px" url="StuTrain_querystudentaward"
			toolbar="#studentawardtoolbar" pagination="true" rownumbers="true"
			fitColumns="true" pageList="[5,10]" singleSelect="true" pageSize="5" >
			<thead>
				<tr>
					<th field="stuname" width="30">学生姓名</th>
					<th field="stuno" width="30" >学号</th>
					<th field="stuprofession" width="30" >学生专业</th>
					<th field="awardname" width="30">奖项名称</th>
					<th field="awardtype" width="30">奖项类别</th>
					<th field="granttime" width="50">授予时间</th>
					<th field="grantorg" width="60">授予机构</th>
					<th field="teachernames" width="40">指导老师</th>
					<th field="remark" width="60">备注</th>
				</tr>
			</thead>
		</table>
	<div id="studentawardtoolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="newstudentaward()">新增</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editstudentaward()">编辑</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="destroystudentaward()">删除</a>
	</div>
	<div id="studentawarddlg" class="easyui-dialog"
		style="width: 700px; height: 350px; padding: 20px 20px;overflow: visible;" closed="true"
		buttons="#studentawarddlg-buttons">
		<div id="studentawardRow" class="fitem">
		<form id="studentawardfm" method="post" novalidate>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">学生姓名:</label>
			<input id="stuname" name="stuname" style="width: 110px"
				class="easyui-validatebox"  maxlength="100">		
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">学号:</label>
			<input id="stuno" name="stuno" style="width: 110px"
				class="easyui-validatebox"  maxlength="100">
		</span>
		<br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">学生专业:</label>
			<input id="stuprofession" name="stuprofession" style="width: 110px"
				class="easyui-validatebox"  maxlength="100">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">奖项名称:</label>
			<input id="awardname" name="awardname" style="width: 110px"
				class="easyui-validatebox"  maxlength="100">
		</span>
		<br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">奖项类别:</label>
			<select id="awardtype" name="awardtype" class="easyui-combobox" panelHeight="auto" editable="false"
				style="width: 110px">
				<option value="校级">校级</option>
				<option value="省市级">省市级</option>
				<option value="国家级">国家级</option>
				<option value="国际级">国际级</option>
			</select>
		</span>
		<span class="span_column">
			<label style="width: 160px;text-align: right;">授予时间:</label> 
			<input id="granttime" name="granttime" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />

		</span>
		<br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">授予机构:</label>
			<input id="grantorg" name="grantorg" style="width: 110px"
				class="easyui-validatebox"  maxlength="100">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">指导老师:</label>
			<input id="teachernames" name="teachernames" style="width: 110px"
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
	<div id="studentawarddlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-ok" onclick="savestudentaward()">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel"
			onclick="javascript:$('#studentawarddlg').dialog('close')">取消</a>
	</div>
	<script>
	var url;
	function querystudentaward() {
		var teachernamequery = $('#teachernameQuery').val();
		var departmentquery = $('#departmentQuery').combobox('getValue');
		$('#studentawarddg').datagrid('load', {
			teachernamequery : teachernamequery,
			departmentquery : departmentquery
		});
	}
	function newstudentaward() {
		$('#studentawarddlg').dialog('open').dialog('setTitle', '新增');
		$('#studentawardfm').form('clear');
		url = 'StuTrain_savestudentaward';
	}
	
	function editstudentaward() {
		var row = $('#studentawarddg').datagrid('getSelected');
		if (row) {
			$('#studentawarddlg').dialog('open').dialog('setTitle',
					'编辑');
			$('#studentawardfm').form('clear');
			$('#studentawardfm').form('load', row);
			url = 'StuTrain_updatestudentaward?id=' + row.awardid;
		}
	}
	
	function savestudentaward() {
	var valid = $('#studentawardfm').form('validate');
		if(valid==true){
			$('#studentawardfm').form('submit', {
    			url : url,
    			onSubmit : function() {
    				return $(this).form('validate');
    			},
    			success : function(result) {
    				if (result != "true") {
    					jAlert('系统错误，请联系管理员', '错误提示');
    				} else {
    					$('#studentawarddlg').dialog('close'); // close the dialog
    					$('#studentawarddg').datagrid('reload'); // reload the user data
    				}
    			}
    		});
		
		}else{
			alert("信息填写不完整");
		}
	}
	function destroystudentaward() {
		var row = $('#studentawarddg').datagrid('getSelected');
		if (row) {
			$.messager.confirm('确认', '是否要删除?', function(r) {
				if (r) {
					$.post('StuTrain_deletestudentaward', {
						id : row.awardid
					}, function(result) {
						if (result = "true") {
							$('#studentawarddg').datagrid('reload'); // reload the user data
						} else {
							jAlert('系统错误，请联系管理员', '错误提示');
						}
					}, 'json');
					$('#studentawarddg').datagrid('reload'); // reload the user data
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