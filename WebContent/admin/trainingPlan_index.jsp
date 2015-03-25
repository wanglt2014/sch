<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
	String request_path = request.getContextPath();
	String image_path = request_path + "/images/blue-themes";
	String css_path = request_path + "/css/blue-themes";
	String js_path = request_path + "/js";
	String basePath = request.getScheme() + "://"   
            + request.getServerName() + ":" + request.getServerPort()   
            + request_path + "/";   
	request.setAttribute("request_path", request_path);
	request.setAttribute("image_path", image_path);
	request.setAttribute("css_path", css_path);
	request.setAttribute("js_path", js_path);
	request.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${sitename}--后台管理系统--人才培养方案</title>

</head>
<body>
<div id="trainingPlantb" style="padding: 5px; height: auto">
<!-- 		<div> -->
<!-- 			教师姓名:<input type="text" id="teachernameQuery">  -->
<!-- 			所在专业:<input -->
<!-- 				class="easyui-combobox" id="departmentQuery" -->
<!-- 				data-options=" -->
<!--  					url:'Dictionary_queryDictionaryByType?type=department', -->
<!-- 					method:'get',  -->
<!--  					valueField:'dictionarycode',  -->
<!--  					textField:'dictionaryvalue',  -->
<!-- 					panelHeight:'auto'">  -->
<!-- 			<a href="javascript:void(0)" class="easyui-linkbutton" -->
<!-- 				iconCls="icon-search" onclick="querytrainingPlan()">搜索</a> -->
<!-- 		</div> -->
	</div>
	<table id="trainingPlandg" title="专业列表" class="easyui-datagrid"
		style="width: auto; height: 616px" url="TrainingPlan_query"
		toolbar="#trainingPlantoolbar" pagination="true" rownumbers="true"
		fitColumns="true" singleSelect="true" pageSize="20">
		<thead>
			<tr>
				<th field="departmentname" width="580">专业名称</th>
			</tr>
		</thead>
	</table>
	<div id="trainingPlantoolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="newtrainingPlan()">新增</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="edittrainingPlan()">编辑</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editForOne()">培养方案（本科）</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editForTwo()">培养方案（硕士）</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editForThree()">培养方案（博士）</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editForFour()">培养方案（专硕）</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="destroytrainingPlan()">删除</a>
	</div>
	<div id="trainingPlandlg" class="easyui-dialog"
		style="width: 900px; height: 720px; padding: 10px 20px" closed="true"
		buttons="#trainingPlandlg-buttons">
		<form id="trainingPlanfm" method="post" novalidate>
			<div id="trainingPlan_tab" class="easyui-tabs" style="height: 616px"
				data-options="fit:true,border:false,plain:true" >
				<div title="专业介绍" style="padding:20px;" id="Tab1"> 
					<div class="ftitle" style="font-size: 14px;font-weight: bold;padding: 5px 0;margin-bottom: 10px;border-bottom: 1px solid #ccc;">
					专业基本信息</div>
						<div class="fitem" style="margin-bottom: 5px;">
			                <label style="display: inline-block;width: 80px;">专业名称:</label>
			                <input id="departmentname" name="departmentname" class="easyui-validatebox" required="true" size="50px;" />
			            </div>
			            <div class="fitem" style="margin-bottom: 5px;">
							<label style="display: inline-block;width: 80px;">专业:</label>
							<input
								class="easyui-combobox" id="departmenttype" name="departmenttype"
								data-options="
 				 					url:'Dictionary_queryDictionaryByType?type=department',
 									method:'get',
 				 					valueField:'dictionarycode',
 				 					textField:'dictionaryvalue',  
 									panelHeight:'auto'" /> 
						</div>		
						 <div  style="display: none;">
				           		 <textarea name="departmentContent" id="departmentContent" class="easyui-validatebox"  required="true" style="width: 500px;height: 100px;"/>
				            </div>		
						<div class="fitem" >
			                <label>专业介绍内容:</label>
			                <br/>
			                <!--style给定宽度可以影响编辑器的最终宽度-->
 							<script type="text/plain" id="departmentMyEditornew" name="departmentMyEditornew" style="width:750px;height:240px;">
 							</script> 
			            </div>
				</div> 
				<div title="学科方向" closable="false" style="overflow:auto;padding:20px;" id="Tab2" > 
				<div class="ftitle" style="font-size: 14px;font-weight: bold;padding: 5px 0;margin-bottom: 10px;border-bottom: 1px solid #ccc;">
				学科方向</div>
						<div class="fitem" >
			                <label>学科方向内容:</label>
			                <br/>
			                <!--style给定宽度可以影响编辑器的最终宽度-->
			                <div  style="display: none;">
				           		 <textarea name="directionContent" id="directionContent" class="easyui-validatebox"  required="true" style="width: 500px;height: 100px;"/>
				            </div>
							<script type="text/plain" id="directionMyEditornew" name="directionMyEditornew" style="width:750px;height:240px;">
							</script>
			            </div>
				</div> 
			</div>
		</form>
	</div>
	<div id="trainingPlandlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-ok" onclick="savetrainingPlan()">保存</a> <a
			href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-cancel"
			onclick="javascript:$('#trainingPlandlg').dialog('close')">取消</a>
	</div>
	
	<div id="plandlg" class="easyui-dialog"
		style="width: 800px; height: 720px; padding: 10px 20px" closed="true"
		buttons="#plandlg-buttons">
		<form id="planfm" method="post" novalidate>
			<div class="ftitle">专业介绍</div>
			<div class="fitem" style="">
                <label>专业介绍内容:</label>
                <br/>
            </div>
		</form>
	</div>
	<div id="plandlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-ok" onclick="savetrainingPlan()">保存</a> <a
			href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-cancel"
			onclick="javascript:$('#plandlg').dialog('close');">取消</a>
	</div>
	<script>
	var um1 = UM.getEditor('departmentMyEditornew');
	var um1 = UM.getEditor('directionMyEditornew');
	var url;
	function querytrainingPlan() {
		var teachernamequery = $('#teachernameQuery').val();
		var departmentquery = $('#departmentQuery').combobox('getValue');
		$('#trainingPlandg').datagrid('load', {
			teachernamequery : teachernamequery,
			departmentquery : departmentquery
		});
	}
	function newtrainingPlan() {
		$('#trainingPlandlg').dialog('open').dialog('setTitle', '新增专业信息');
		$('#trainingPlanfm').form('clear');
		url = 'TrainingPlan_save';
// 		UM.getEditor('departmentMyEditornew').setContent('', false);
// 		UM.getEditor('directionMyEditornew').setContent('', false);
	}
	function edittrainingPlan() {
		var row = $('#trainingPlandg').datagrid('getSelected');
		if (row) {
			$('#trainingPlandlg').dialog('open').dialog('setTitle',
					'编辑教师');
			$('#trainingPlanfm').form('clear');
			$('#trainingPlanfm').form('load', row);
			url = 'TrainingPlan_update?id=' + row.departmentid;
			UM.getEditor('directionMyEditornew').setContent(row.departmentdirection, false);
			UM.getEditor('departmentMyEditornew').setContent(row.departmentintroduction, false);
		}
	}
	
	function editForOne() {
		var row = $('#trainingPlandg').datagrid('getSelected');
		if (row) {
			$('#trainingPlandlg').dialog('open').dialog('setTitle',
					'编辑本科培养方案');
			$('#trainingPlanfm').form('clear');
// 			$('#trainingPlanfm').form('load', row);
			url = 'Teacher_update?id=' + row.departmentid;
		}
	}
	
	function editForTwo() {
		var row = $('#trainingPlandg').datagrid('getSelected');
		if (row) {
			$('#trainingPlandlg').dialog('open').dialog('setTitle',
					'编辑硕士培养方案');
			$('#trainingPlanfm').form('clear');
// 			$('#trainingPlanfm').form('load', row);
			url = 'Teacher_update?id=' + row.departmentid;
		}
	}
	
	function editForThree() {
		var row = $('#trainingPlandg').datagrid('getSelected');
		if (row) {
			$('#trainingPlandlg').dialog('open').dialog('setTitle',
					'编辑博士培养方案');
			$('#trainingPlanfm').form('clear');
// 			$('#trainingPlanfm').form('load', row);
			url = 'Teacher_update?id=' + row.departmentid;
		}
	}
	
	function editForFour() {
		var row = $('#trainingPlandg').datagrid('getSelected');
		if (row) {
			$('#trainingPlandlg').dialog('open').dialog('setTitle',
					'编辑专硕培养方案');
			$('#trainingPlanfm').form('clear');
// 			$('#trainingPlanfm').form('load', row);
			url = 'Teacher_update?id=' + row.departmentid;
		}
	}
	
	function savetrainingPlan() {
		$("#departmentContent").val(UM.getEditor('departmentMyEditornew').getContent());
		$("#directionContent").val(UM.getEditor('directionMyEditornew').getContent());
// 		alert($("#departmentContent").val()+"@@@@@@@@@@"+$("#directionContent").val());
    	var valid = $('#trainingPlanfm').form('validate');
		if(valid==true){
        $('#trainingPlanfm').form('submit',{
            url: url,
            onSubmit: function(){
                return $(this).form('validate');
            },
            success: function(result){
                if (result!="true"){
                	jAlert('系统错误，请联系管理员','错误提示');
                } else {
                    $('#trainingPlandlg').dialog('close');        // close the dialog
                    $('#trainingPlandg').datagrid('reload');    // reload the user data
                }
            }
        });
		}else{
			alert("信息填写不完整");
		}
	}
	function destroytrainingPlan() {
		var row = $('#trainingPlandg').datagrid('getSelected');
		if (row) {
			$.messager.confirm('确认', '是否要删除?', function(r) {
				if (r) {
					$.post('TrainingPlan_deleteTDepartment', {
						id : row.departmentid
					}, function(result) {
// 						alert(result);
						if (result = "true") {
							$('#trainingPlandg').datagrid('reload'); // reload the user data
						} else {
							jAlert('系统错误，请联系管理员', '错误提示');
						}
					}, 'json');
					
				}
			});
		}
	}
	$('#trainingPlan_tab').tabs({ 
	    border:false, 
	    onSelect:function(title,index){ 
// 	        alert(title+' is selected'+index); 
	        if(index==0){
// 	        	var um = UM.getEditor('departmentMyEditornew');
// 				UM.getEditor('departmentMyEditornew').setContent('', false);
	        }
			if(index==1){
// 				var um1 = UM.getEditor('directionMyEditornew');
// 	        	UM.getEditor('directionMyEditornew').setContent('', false);
				
	        }
	    } 
	});
	</script>
	<style type="text/css">
#trainingPlanfm {
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