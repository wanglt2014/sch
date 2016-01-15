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
<title>${sitename}--后台管理系统--国际交流</title>
</head>
<body>
	<div id="teachertb" style="padding: 5px; height: auto">
	</div>
	<table id="foreigndg" title="列表" class="easyui-datagrid"
			style="width: auto; height: 600px" url="Exchange_queryForeign"
			toolbar="#foreigntoolbar" pagination="true" rownumbers="true"
			fitColumns="true" pageList="[5,10]" singleSelect="true" pageSize="5" >
			<thead>
				<tr>
					<th field="fprojectmanager" width="30">项目负责人</th>
					<th field="fprojecttype" width="30" >项目类别</th>
					<th field="expertname" width="30">专家姓名</th>
					<th field="expertnationality" width="50">专家国籍</th>
					<th field="workunit" width="50">工作单位</th>
					<th field="visittime" width="50">来校时间</th>
					<th field="visitgoal" width="50">来访目的</th>
					<th field="visitactivity" width="50">来访活动</th>
					<th field="other" width="50">其他</th>
				</tr>
			</thead>
		</table>
	<div id="foreigntoolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="newForeign()">新增</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editForeign()">编辑</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="destroyForeign()">删除</a>
	</div>
	<div id="foreigndlg" class="easyui-dialog"
		style="width: 700px; height: 350px; padding: 20px 20px;overflow: visible;" closed="true"
		buttons="#foreigndlg-buttons">
		<div id="foreignRow" class="fitem">
		<form id="foreignfm" method="post" novalidate>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">项目负责人:</label>
			<input id="fprojectmanager" name="fprojectmanager" style="width: 110px"
				class="easyui-validatebox"  maxlength="20">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">项目类别:</label>
			<input id="fprojecttype" name="fprojecttype" style="width: 110px"
				class="easyui-validatebox"  maxlength="20">
		</span>
		<br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">专家姓名:</label>
			<input id="expertname" name="expertname" style="width: 110px"
				class="easyui-validatebox"  maxlength="30">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">专家国籍:</label>
			<input id="expertnationality" name="expertnationality" style="width: 110px"
				class="easyui-validatebox"  maxlength="20">
		</span>
		<br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">工作单位:</label>
			<input id="workunit" name="workunit" style="width: 110px"
				class="easyui-validatebox"  maxlength="30">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">来访目的:</label>
			<input id="visitgoal" name="visitgoal" style="width: 110px"
				class="easyui-validatebox"  maxlength="50">
		</span><br><br>
		<span class="span_column">
			<label style="width: 160px;text-align: right;">来校时间:</label> 
			<input id="visittime" name="visittime" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">来访活动:</label>
			<input id="visitactivity" name="visitactivity" style="width: 110px"
				class="easyui-validatebox"  maxlength="50">
		</span><br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">其他:</label>
			<input id="other" name="other" style="width: 110px"
				class="easyui-validatebox"  maxlength="50">
		</span>
		</form>
		</div>
	</div>
	<div id="foreigndlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-ok" onclick="saveForeign()">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel"
			onclick="javascript:$('#foreigndlg').dialog('close')">取消</a>
	</div>
	<script>
	var url;
	function queryForeign() {
		var teachernamequery = $('#teachernameQuery').val();
		var departmentquery = $('#departmentQuery').combobox('getValue');
		$('#foreigndg').datagrid('load', {
			teachernamequery : teachernamequery,
			departmentquery : departmentquery
		});
	}
	function newForeign() {
		$('#foreigndlg').dialog('open').dialog('setTitle', '新增');
		$('#foreignfm').form('clear');
		url = 'Exchange_saveForeign';
	}
	
	function editForeign() {
		var row = $('#foreigndg').datagrid('getSelected');
		if (row) {
			$('#foreigndlg').dialog('open').dialog('setTitle',
					'编辑');
			$('#foreignfm').form('clear');
			$('#foreignfm').form('load', row);
			url = 'Exchange_updateForeign?id=' + row.foreignid;
		}else{
			alert("请选择一条记录！");
		}
	}
	
	function saveForeign() {
	var valid = $('#foreignfm').form('validate');
		if(valid==true){
			$('#foreignfm').form('submit', {
    			url : url,
    			onSubmit : function() {
    				return $(this).form('validate');
    			},
    			success : function(result) {
    				if (result != "true") {
    					jAlert('系统错误，请联系管理员', '错误提示');
    				} else {
    					$('#foreigndlg').dialog('close'); // close the dialog
    					$('#foreigndg').datagrid('reload'); // reload the user data
    				}
    			}
    		});
		
		}else{
			alert("信息填写不完整");
		}
	}
	function destroyForeign() {
		var row = $('#foreigndg').datagrid('getSelected');
		if (row) {
			$.messager.confirm('确认', '是否要删除?', function(r) {
				if (r) {
					$.post('Exchange_deleteForeign', {
						id : row.foreignid
					}, function(result) {
						if (result = "true") {
							$('#foreigndg').datagrid('reload'); // reload the user data
						} else {
							jAlert('系统错误，请联系管理员', '错误提示');
						}
					}, 'json');
					$('#foreigndg').datagrid('reload'); // reload the user data
				}
			});
		}else{
			alert("请选择一条记录！");
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