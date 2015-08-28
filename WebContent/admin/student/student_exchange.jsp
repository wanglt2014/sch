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
<title>${sitename}--后台管理系统--学生国际交流</title>
</head>
<body>
	<table id="studentExchangedg" title="列表" class="easyui-datagrid"
			style="width: auto; height: 450px" url="Exchange_queryStudentExchange"
			toolbar="#studentExchangetoolbar" pagination="true" rownumbers="true"
			fitColumns="true" pageList="[5,10]" singleSelect="true" pageSize="5" >
			<thead>
				<tr>
					<th field="stuname" width="30">姓名</th>
					<th field="stutype" width="30" >学生在读情况</th>
					<th field="exchangebegintime" width="30">交流开始时间</th>
					<th field="exchangeendtime" width="30" >交流结束时间</th>
					<th field="timelength" width="30">时间长度（月）</th>
					<th field="exchangeplace" width="50">地点（国家/地区及高校）</th>
					<th field="projectname" width="90">国际交流项目名称或主要交流目的</th>
				</tr>
			</thead>
		</table>
		<div id="studentExchangetoolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="newstudentExchange()">新增</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editstudentExchange()">编辑</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="destroystudentExchange()">删除</a>
		</div>
	<div id="studentExchangedlg" class="easyui-dialog"
		style="width: 800px; height: 320px; padding: 20px 20px;overflow: visible;" closed="true"
		buttons="#studentExchangedlg-buttons">
		<div id="studentExchangeRow" class="fitem">
		<form id="studentExchangefm" method="post" novalidate>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">姓名:</label>
			<input id="stuname" name="stuname" style="width: 110px"
				class="easyui-validatebox"  maxlength="20">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">学生在读情况:</label>
			<select id="stutype" name="stutype" class="easyui-combobox" panelHeight="auto" editable="false"
					style="width: 110px" >
					<option value="学士">学士</option>
					<option value="硕士">硕士</option>
					<option value="博士">博士</option>
			</select>
		</span><br><br>
		<span class="span_column">
			<label style="width: 160px;text-align: right;">交流开始时间:</label> 
			<input id="exchangebegintime" name="exchangebegintime" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">交流结束时间:</label> 
			<input id="exchangeendtime" name="exchangeendtime" type="date" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
		</span><br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">时间长度（月）:</label>
			<input id="timelength" name="timelength" style="width: 110px"
				class="easyui-validatebox"  maxlength="3">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">地点（国家/地区及高校）:</label>
			<input id="exchangeplace" name="exchangeplace" style="width: 110px"
				class="easyui-validatebox"  maxlength="20">
		</span><br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">国际交流项目名称或主要交流目的:</label>
			<input id="projectname" name="projectname" maxlength="100" style="width: 390px"
				class="easyui-validatebox" >
		</span><br><br>
		</form>
		</div>
	</div>
	<div id="studentExchangedlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-ok" onclick="savestudentExchange()">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel"
			onclick="javascript:$('#studentExchangedlg').dialog('close')">取消</a>
	</div>
	
	<script>
	var url;
	function newstudentExchange() {
		$('#studentExchangedlg').dialog('open').dialog('setTitle', '新增');
		$('#studentExchangefm').form('clear');
		url = 'Exchange_savestudentExchange';
	}
	
	function editstudentExchange() {
		var row = $('#studentExchangedg').datagrid('getSelected');
		if (row) {
// 			$('#teacherNameForSave').val(row.teachername);
// 			$('#teacherIdForSave').val(row.id);
			$('#studentExchangedlg').dialog('open').dialog('setTitle',
					'学生国际交流');
			$('#studentExchangefm').form('clear');
			$('#studentExchangefm').form('load', row);
			url = 'Exchange_updatestudentExchange?id=' + row.exchangestuid;
		}
	}
	function savestudentExchange() {
// 		var teachername = $('#teacherNameForSave').val();
// 		var teacherId = $('#teacherIdForSave').val();
		$('#studentExchangefm').form('submit', {
			url : url,
			onSubmit : function() {
				return $(this).form('validate');
			},
			success : function(result) {
				if (result != "true") {
					jAlert('系统错误，请联系管理员', '错误提示');
				} else {
					$('#studentExchangedlg').dialog('close');
					$('#studentExchangedg').datagrid('reload'); // reload the user data
				}
			}
		});
	}
	//删除
	function destroystudentExchange() {
		var row = $('#studentExchangedg').datagrid('getSelected');
		if (row) {
			$.messager.confirm('确认', '是否要删除?', function(r) {
				if (r) {
					$.post('Exchange_deletestudentExchange', {
						id : row.exchangestuid
					}, function(result) {
						if (result = "true") {
							$('#studentExchangedg').datagrid('reload'); // reload the user data
						} else {
							jAlert('系统错误，请联系管理员', '错误提示');
						}
					}, 'json');
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