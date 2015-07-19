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
	<table id="holdMeetingdg" title="列表" class="easyui-datagrid"
			style="width: auto; height: 600px" url="Exchange_queryHoldMeeting"
			toolbar="#holdMeetingtoolbar" pagination="true" rownumbers="true"
			fitColumns="true" pageList="[5,10]" singleSelect="true" pageSize="5" >
			<thead>
				<tr>
					<th field="meetingname" width="30">会议名称</th>
					<th field="meetingtype" width="30" >类别</th>
					<th field="meetingpeoplenum" width="30">参会人数</th>
					<th field="meetingplace" width="50">会议地点</th>
					<th field="meetingbegintime" width="50">会议开始时间</th>
					<th field="meetingendtime" width="50">会议结束时间</th>
					<th field="meetingresult" width="50">会议成果</th>
				</tr>
			</thead>
		</table>
	<div id="holdMeetingtoolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="newHoldMeeting()">新增</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editHoldMeeting()">编辑</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="destroyHoldMeeting()">删除</a>
	</div>
	<div id="holdMeetingdlg" class="easyui-dialog"
		style="width: 800px; height: 420px; padding: 20px 20px;overflow: visible;" closed="true"
		buttons="#holdMeetingdlg-buttons">
		<div id="holdMeetingRow" class="fitem">
		<form id="holdMeetingfm" method="post" novalidate>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">会议名称:</label>
			<input id="meetingname" name="meetingname" style="width: 110px"
				class="easyui-validatebox"  maxlength="30">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">类别（国际或国内）:</label>
			<select id="meetingtype" name="meetingtype" class="easyui-combobox" panelHeight="auto" editable="false"
					style="width: 110px" >
					<option value="国内">国内</option>
					<option value="国际">国际</option>
			</select>
		</span><br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">参会人数:</label>
			<input id="meetingpeoplenum" name="meetingpeoplenum" style="width: 110px"
				class="easyui-validatebox"  maxlength="5">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">会议地点:</label>
			<input id="meetingplace" name="meetingplace" style="width: 110px"
				class="easyui-validatebox"  maxlength="30">
		</span><br><br>
		<span class="span_column">
			<label style="width: 160px;text-align: right;">会议开始时间:</label> 
			<input id="meetingbegintime" name="meetingbegintime" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">会议结束时间:</label> 
			<input id="meetingendtime" name="meetingendtime" type="date" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
		</span><br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">会议成果:</label>
			<input id="meetingresult" name="meetingresult" style="width: 110px"
				class="easyui-validatebox"  maxlength="50">
		</span>
		</form>
		</div>
	</div>
	<div id="holdMeetingdlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-ok" onclick="saveHoldMeeting()">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel"
			onclick="javascript:$('#holdMeetingdlg').dialog('close')">取消</a>
	</div>
	<script>
	var url;
	function queryHoldMeeting() {
		var teachernamequery = $('#teachernameQuery').val();
		var departmentquery = $('#departmentQuery').combobox('getValue');
		$('#holdMeetingdg').datagrid('load', {
			teachernamequery : teachernamequery,
			departmentquery : departmentquery
		});
	}
	function newHoldMeeting() {
		$('#holdMeetingdlg').dialog('open').dialog('setTitle', '新增');
		$('#holdMeetingfm').form('clear');
		url = 'Exchange_saveHoldMeeting';
	}
	
	function editHoldMeeting() {
		var row = $('#holdMeetingdg').datagrid('getSelected');
		if (row) {
			$('#holdMeetingdlg').dialog('open').dialog('setTitle',
					'编辑');
			$('#holdMeetingfm').form('clear');
			$('#holdMeetingfm').form('load', row);
			url = 'Exchange_updateHoldMeeting?id=' + row.holdid;
		}
	}
	
	function saveHoldMeeting() {
	var valid = $('#holdMeetingfm').form('validate');
		if(valid==true){
			$('#holdMeetingfm').form('submit', {
    			url : url,
    			onSubmit : function() {
    				return $(this).form('validate');
    			},
    			success : function(result) {
    				if (result != "true") {
    					jAlert('系统错误，请联系管理员', '错误提示');
    				} else {
    					$('#holdMeetingdlg').dialog('close'); // close the dialog
    					$('#holdMeetingdg').datagrid('reload'); // reload the user data
    				}
    			}
    		});
		
		}else{
			alert("信息填写不完整");
		}
	}
	function destroyHoldMeeting() {
		var row = $('#holdMeetingdg').datagrid('getSelected');
		if (row) {
			$.messager.confirm('确认', '是否要删除?', function(r) {
				if (r) {
					$.post('Exchange_deleteHoldMeeting', {
						id : row.holdid
					}, function(result) {
						if (result = "true") {
							$('#holdMeetingdg').datagrid('reload'); // reload the user data
						} else {
							jAlert('系统错误，请联系管理员', '错误提示');
						}
					}, 'json');
					$('#holdMeetingdg').datagrid('reload'); // reload the user data
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