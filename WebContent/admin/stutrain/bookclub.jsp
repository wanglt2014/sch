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
<title>${sitename}--后台管理系统--读书会</title>
</head>
<body>
	<div id="teachertb" style="padding: 5px; height: auto">
	</div>
	<table id="bookclubdg" title="列表" class="easyui-datagrid"
			style="width: auto; height: 600px" url="StuTrain_querybookclub"
			toolbar="#bookclubtoolbar" pagination="true" rownumbers="true"
			fitColumns="true" pageList="[5,10]" singleSelect="true" pageSize="5" >
			<thead>
				<tr>
					<th field="bookclubname" width="30">读书会名称</th>
					<th field="convener" width="30" >召集人</th>
					<th field="speaker" width="30" >主讲人</th>
					<th field="maincomment" width="30">主评论人</th>
					<th field="comments" width="50">副评论人</th>
					<th field="place" width="50">举办地点</th>
					<th field="time" width="50">举办时间</th>
					<th field="participants" width="50">参加人</th>
					<th field="subjects" width="50">活动涉及学科</th>
					<th field="remark" width="50">备注</th>
				</tr>
			</thead>
		</table>
	<div id="bookclubtoolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="newbookclub()">新增</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editbookclub()">编辑</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="destroybookclub()">删除</a>
	</div>
	<div id="bookclubdlg" class="easyui-dialog"
		style="width: 700px; height: 350px; padding: 20px 20px;overflow: visible;" closed="true"
		buttons="#bookclubdlg-buttons">
		<div id="bookclubRow" class="fitem">
		<form id="bookclubfm" method="post" novalidate>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">读书会名称:</label>
			<input id="bookclubname" name="bookclubname" style="width: 110px"
				class="easyui-validatebox"  maxlength="20">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">召集人:</label>
			<input id="convener" name="convener" style="width: 110px"
				class="easyui-validatebox"  maxlength="20">
		</span>
		<br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">主讲人:</label>
			<input id="speaker" name="speaker" style="width: 110px"
				class="easyui-validatebox"  maxlength="20">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">主评论人:</label>
			<input id="maincomment" name="maincomment" style="width: 110px"
				class="easyui-validatebox"  maxlength="30">
		</span>
		<br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">副评论人:</label>
			<input id="comments" name="comments" style="width: 110px"
				class="easyui-validatebox"  maxlength="20">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">举办地点:</label>
			<input id="place" name="place" style="width: 110px"
				class="easyui-validatebox"  maxlength="30">
		</span>
		<br><br>
		<span class="span_column">
			<label style="width: 160px;text-align: right;">举办时间:</label> 
			<input id="time" name="time" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">参加人:</label>
			<input id="participants" name="participants" style="width: 110px"
				class="easyui-validatebox"  maxlength="50">
		</span><br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">活动涉及学科:</label>
			<input id="subjects" name="subjects" style="width: 110px"
				class="easyui-validatebox"  maxlength="50">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">备注:</label>
			<input id="remark" name="remark" style="width: 110px"
				class="easyui-validatebox"  maxlength="50">
		</span>
		</form>
		</div>
	</div>
	<div id="bookclubdlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-ok" onclick="savebookclub()">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel"
			onclick="javascript:$('#bookclubdlg').dialog('close')">取消</a>
	</div>
	<script>
	var url;
	function querybookclub() {
		var teachernamequery = $('#teachernameQuery').val();
		var departmentquery = $('#departmentQuery').combobox('getValue');
		$('#bookclubdg').datagrid('load', {
			teachernamequery : teachernamequery,
			departmentquery : departmentquery
		});
	}
	function newbookclub() {
		$('#bookclubdlg').dialog('open').dialog('setTitle', '新增');
		$('#bookclubfm').form('clear');
		url = 'StuTrain_savebookclub';
	}
	
	function editbookclub() {
		var row = $('#bookclubdg').datagrid('getSelected');
		if (row) {
			$('#bookclubdlg').dialog('open').dialog('setTitle',
					'编辑');
			$('#bookclubfm').form('clear');
			$('#bookclubfm').form('load', row);
			url = 'StuTrain_updatebookclub?id=' + row.bookclubid;
		}
	}
	
	function savebookclub() {
	var valid = $('#bookclubfm').form('validate');
		if(valid==true){
			$('#bookclubfm').form('submit', {
    			url : url,
    			onSubmit : function() {
    				return $(this).form('validate');
    			},
    			success : function(result) {
    				if (result != "true") {
    					jAlert('系统错误，请联系管理员', '错误提示');
    				} else {
    					$('#bookclubdlg').dialog('close'); // close the dialog
    					$('#bookclubdg').datagrid('reload'); // reload the user data
    				}
    			}
    		});
		
		}else{
			alert("信息填写不完整");
		}
	}
	function destroybookclub() {
		var row = $('#bookclubdg').datagrid('getSelected');
		if (row) {
			$.messager.confirm('确认', '是否要删除?', function(r) {
				if (r) {
					$.post('StuTrain_deletebookclub', {
						id : row.bookclubid
					}, function(result) {
						if (result = "true") {
							$('#bookclubdg').datagrid('reload'); // reload the user data
						} else {
							jAlert('系统错误，请联系管理员', '错误提示');
						}
					}, 'json');
					$('#bookclubdg').datagrid('reload'); // reload the user data
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