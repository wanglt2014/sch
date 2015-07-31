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
<title>${sitename}--后台管理系统--社会事件</title>
</head>
<body>
	<div id="teachertb" style="padding: 5px; height: auto">
	</div>
	<table id="socialeventdg" title="列表" class="easyui-datagrid"
			style="width: auto; height: 600px" url="StuTrain_querysocialevent"
			toolbar="#socialeventtoolbar" pagination="true" rownumbers="true"
			fitColumns="true" pageList="[5,10]" singleSelect="true" pageSize="5" >
			<thead>
				<tr>
					<th field="eventtime" width="30">时间</th>
					<th field="eventplace" width="30" >地点</th>
					<th field="eventname" width="30" >社会事件名称</th>
					<th field="eventtype" width="30">事件类别</th>
					<th field="students" width="30">参与学生</th>
					<th field="istogether" width="50">是否有共建（合作）单位</th>
					<th field="unitname" width="60">共建（合作）单位名称</th>
					<th field="teachernames" width="40">指导老师</th>
					<th field="website" width="60">传媒报道网址</th>
					<th field="remark" width="60">备注</th>
				</tr>
			</thead>
		</table>
	<div id="socialeventtoolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="newsocialevent()">新增</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editsocialevent()">编辑</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="destroysocialevent()">删除</a>
	</div>
	<div id="socialeventdlg" class="easyui-dialog"
		style="width: 700px; height: 350px; padding: 20px 20px;overflow: visible;" closed="true"
		buttons="#socialeventdlg-buttons">
		<div id="socialeventRow" class="fitem">
		<form id="socialeventfm" method="post" novalidate>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">时间:</label>
			<input id="eventtime" name="eventtime" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">地点:</label>
			<input id="eventplace" name="eventplace" style="width: 110px"
				class="easyui-validatebox"  maxlength="50">
		</span>
		<br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">社会事件名称:</label>
			<input id="eventname" name="eventname" style="width: 110px"
				class="easyui-validatebox"  maxlength="30">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">事件类别:</label>
			<select id="eventtype" name="eventtype" class="easyui-combobox" panelHeight="auto" editable="false"
				style="width: 110px">
				<option value="校级">校级</option>
				<option value="省市级">省市级</option>
				<option value="国家级">国家级</option>
				<option value="国际级">国际级</option>
			</select>
		</span>
		<br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">是否有共建（合作）单位:</label>
			<select id="istogether" name="istogether" class="easyui-combobox" panelHeight="auto" editable="false"
				style="width: 110px">
				<option value="是">是</option>
				<option value="否">否</option>
			</select>
		</span>
		<span class="span_column">
			<label style="width: 160px;text-align: right;">共建（合作）单位名称:</label> 
			<input id="unitname" name="unitname" style="width: 110px"
				class="easyui-validatebox"  maxlength="30">
		</span>
		<br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">参与学生:</label>
			<input id="students" name="students" style="width: 110px"
				class="easyui-validatebox"  maxlength="100">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">指导老师:</label>
			<input id="teachernames" name="teachernames" style="width: 110px"
				class="easyui-validatebox"  maxlength="100">
		</span>
		<br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">传媒报道网址:</label>
			<input id="website" name="website" style="width: 390px"
				class="easyui-validatebox"  maxlength="100">
		</span>
		<br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">备注:</label>
			<input id="remark" name="remark" style="width: 390px"
				class="easyui-validatebox"  maxlength="200">
		</span>
		</form>
		</div>
	</div>
	<div id="socialeventdlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-ok" onclick="savesocialevent()">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel"
			onclick="javascript:$('#socialeventdlg').dialog('close')">取消</a>
	</div>
	<script>
	var url;
	function querysocialevent() {
		var teachernamequery = $('#teachernameQuery').val();
		var departmentquery = $('#departmentQuery').combobox('getValue');
		$('#socialeventdg').datagrid('load', {
			teachernamequery : teachernamequery,
			departmentquery : departmentquery
		});
	}
	function newsocialevent() {
		$('#socialeventdlg').dialog('open').dialog('setTitle', '新增');
		$('#socialeventfm').form('clear');
		url = 'StuTrain_savesocialevent';
	}
	
	function editsocialevent() {
		var row = $('#socialeventdg').datagrid('getSelected');
		if (row) {
			$('#socialeventdlg').dialog('open').dialog('setTitle',
					'编辑');
			$('#socialeventfm').form('clear');
			$('#socialeventfm').form('load', row);
			url = 'StuTrain_updatesocialevent?id=' + row.eventid;
		}
	}
	
	function savesocialevent() {
	var valid = $('#socialeventfm').form('validate');
		if(valid==true){
			$('#socialeventfm').form('submit', {
    			url : url,
    			onSubmit : function() {
    				return $(this).form('validate');
    			},
    			success : function(result) {
    				if (result != "true") {
    					jAlert('系统错误，请联系管理员', '错误提示');
    				} else {
    					$('#socialeventdlg').dialog('close'); // close the dialog
    					$('#socialeventdg').datagrid('reload'); // reload the user data
    				}
    			}
    		});
		
		}else{
			alert("信息填写不完整");
		}
	}
	function destroysocialevent() {
		var row = $('#socialeventdg').datagrid('getSelected');
		if (row) {
			$.messager.confirm('确认', '是否要删除?', function(r) {
				if (r) {
					$.post('StuTrain_deletesocialevent', {
						id : row.eventid
					}, function(result) {
						if (result = "true") {
							$('#socialeventdg').datagrid('reload'); // reload the user data
						} else {
							jAlert('系统错误，请联系管理员', '错误提示');
						}
					}, 'json');
					$('#socialeventdg').datagrid('reload'); // reload the user data
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