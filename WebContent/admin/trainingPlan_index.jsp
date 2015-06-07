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
			iconCls="icon-edit" plain="true" onclick="editForSubject(1)">培养方案（本科）</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editForSubject(2)">培养方案（硕士）</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editForSubject(3)">培养方案（博士）</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editForSubject(4)">培养方案（专硕）</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="destroytrainingPlan()">删除</a>
	</div>
	<div id="trainingPlandlg" class="easyui-dialog"
		style="width: 900px; height: 620px; padding: 10px 20px" closed="true"
		buttons="#trainingPlandlg-buttons">
		<form id="trainingPlanfm" method="post" novalidate>
			<div id="trainingPlan_tab" class="easyui-tabs" style="height: 516px"
				data-options="fit:true,border:false,plain:true" >
				<div title="专业介绍" style="padding:20px;" id="Tab1"> 
					<div class="ftitle" style="font-size: 14px;font-weight: bold;padding: 5px 0;margin-bottom: 10px;border-bottom: 1px solid #ccc;">
					专业基本信息</div>
						<div class="fitem" style="margin-bottom: 5px;">
			                <label style="display: inline-block;width: 80px;">专业名称:</label>
			                <input id="departmentname" name="departmentname" maxlength="20" class="easyui-validatebox" required="true" size="50px;" />
			            </div>
			            <div class="fitem" style="margin-bottom: 5px;">
							<label style="display: inline-block;width: 80px;">专业:</label>
							<input
								class="easyui-combobox" id="departmenttype" name="departmenttype"  editable="false"
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
			iconCls="icon-ok" onclick="saveDep()">保存</a> <a
			href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-cancel"
			onclick="javascript:$('#trainingPlandlg').dialog('close')">取消</a>
	</div>
	
	<div id="plandlg" class="easyui-dialog"
		style="width: 700px; height: 520px; padding: 10px 20px" closed="true"
		buttons="#plandlg-buttons">
		<form id="planfm" method="post" novalidate>
			<div class="ftitle" style="font-size: 14px;font-weight: bold;padding: 5px 0;margin-bottom: 10px;border-bottom: 1px solid #ccc;">课程绑定</div>
			<div  style="text-align: left;;vertical-align: middle;">
				<span class="span_column" >
				<label style="width: 100px;">年级:</label>
				<select class="easyui-combobox" id="trainingplangrade" name="trainingplangrade"  editable="false"
					data-options="
		 					url:'Dictionary_queryDictionaryByType?type=grade',
							method:'get',
		 					valueField:'dictionarycode',
		 					textField:'dictionaryvalue',  
							panelHeight:'auto'" style="width: 110px" panelHeight="auto"> </select>
				</span><br><br>
				<span class="span_column" >
                <label style="width: 100px;">选择课程:</label>
                <input name="trplansubidsforoneId" id="trplansubidsforoneId"
					class="easyui-validatebox" style="display: none;">
				<select
					class="easyui-combogrid" id="trplansubidsforone" name="trplansubidsforone"
					style="width: 500px" panelHeight="auto" editable="false"
					data-options="
			            panelWidth: 500,multiple: true,singleSelect:true, idField: 'subjectid',panelHeight:300,
			            textField: 'subjectname',url: 'Subject_query',method: 'get',
			            pageSize: 10,//每页显示的记录条数，默认为10  
			             pageList: [10,20],//可以设置每页记录条数的列表 
			              pagination : false,//是否分页  
			               rownumbers:true,//序号  
			            columns: [[
			                {field:'ck',checkbox:true},
			                {field:'subjectname',title:'课程名称',width:40,align:'right'},
			                {field:'subjecttypename',title:'课程性质',width:40},
			                {field:'subjectno',title:'课程编号',width:40},
			                {field:'subjecttext',title:'课程介绍',width:120},
			            ]],fitColumns: true" >
				</select>
				<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="addPlan()">新增</a><br><br>
				</span> 
					<hr  style="border-bottom:1px dashed;"><br>
					<div id="plantempleate" style="display: none;">
					<div id="row0" class="fitem">
					<input name="trplansubidsforoneId0" id="trplansubidsforoneId0"  class="easyui-validatebox" style="display: none;"/>
					<input name="trainingplangrade0" id="trainingplangrade0"  readonly="readonly" class="easyui-validatebox" style="width: 50px;"/>级，课程信息为
					<input name="trplansubidsforone0" id="trplansubidsforone0"  readonly="readonly" class="easyui-validatebox" style="width: 400px;"/>
					<span id="deletePlanDiv0"></span>
					</div>
					</div>
					<div id="planDiv" ></div>
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
	var planNum = 0;
	var plantempleate = $("#plantempleate").html();//保存渲染前的模板
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
		var data = $('#departmenttype').combobox('getData');
		 $("#departmenttype").combobox('select',data[0].dictionarycode);
		UM.getEditor('departmentMyEditornew').setContent('', false);
		UM.getEditor('directionMyEditornew').setContent('', false);
	}
	function edittrainingPlan() {
		var row = $('#trainingPlandg').datagrid('getSelected');
		if (row) {
			$('#trainingPlandlg').dialog('open').dialog('setTitle',
					'编辑专业信息');
			$('#trainingPlanfm').form('clear');
			$('#trainingPlanfm').form('load', row);
			url = 'TrainingPlan_update?id=' + row.departmentid;
			UM.getEditor('directionMyEditornew').setContent(row.departmentdirection, false);
			UM.getEditor('departmentMyEditornew').setContent(row.departmentintroduction, false);
		}
	}
	
	function editForSubject(temp) {
		var row = $('#trainingPlandg').datagrid('getSelected');
		if (row) {
			$('#plandlg').dialog('open').dialog('setTitle',
					'编辑培养方案');
			$('#planfm').form('clear');
			planNum = 0;
			$("#planDiv").html("");
			var data = $('#trainingplangrade').combobox('getData');
			 $("#trainingplangrade ").combobox('select',data[0].dictionarycode);
// 			$('#trainingPlanfm').form('load', row);
			url = 'TrainingPlan_updatePlan?id=' + row.departmentid +'&planType='+temp;
			$.ajax({
				type : 'post',
				url : 'TrainingPlan_queryTrainingPlanByDepId',
				data : {
					departmentid :  row.departmentid,
					planType : temp,
				},
				success : function(datas) {
// 					alert(JSON.stringify(datas));
						var data = eval('(' + datas + ')'); 
						for (var i = 0; i < data.length; i++) {
							var row = data[i];
							addPlan();
							$('#trainingplangrade'+(parseInt(i)+1)).val(row.trainingplangrade);
							$('#trplansubidsforone'+(parseInt(i)+1)).val(row.trplansubidsfortwo);
						}
// 						var one = data.trplansubidsforone;
// 						if(one!=""){
// 							$('#trplansubidsforone').combogrid('setValues', one.split(","));
// 						}

				},
				error : function() {
					jAlert('系统错误，请联系管理员','错误提示');
				}
			});
		}
	}
	
	function saveDep() {
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
	
	function savetrainingPlan() {
// 		alert($("#departmentContent").val()+"@@@@@@@@@@"+$("#directionContent").val());
    	var valid = $('#planfm').form('validate');
		if(valid==true){
// 		$('#trplansubidsforoneId').val($('#trplansubidsforone').combogrid('getValues'));
        $('#planfm').form('submit',{
            url: url+'&planNum='+planNum,
            onSubmit: function(){
                return $(this).form('validate');
            },
            success: function(result){
                if (result!="true"){
                	jAlert('系统错误，请联系管理员','错误提示');
                } else {
                    $('#plandlg').dialog('close');        // close the dialog
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
	
	//动态添加获奖信息
	function addPlan() {
		planNum++;
// 		$("#deletePrlanBtn").remove();
		var html = plantempleate.replace(new RegExp("trainingplangrade0","gm"),'trainingplangrade'+planNum)
		.replace(new RegExp("trplansubidsforoneId0","gm"),'trplansubidsforoneId'+planNum)
		.replace(new RegExp("trplansubidsforone0","gm"),'trplansubidsforone'+planNum)
		.replace(new RegExp("deletePlanDiv0","gm"),'deletePlanDiv'+planNum)
		.replace(new RegExp("row0","gm"),'row'+planNum);
		$("#planDiv").append(html);
		$("#deletePlanDiv"+planNum).append('<a id="deletePlanBtn" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="removePlan('+planNum+')">删除</a>');
// 		alert($('#trainingplangrade').combobox('getValue')+"**"+$('#trplansubidsforone').combogrid('getValues')+"**"+$('#trplansubidsforone').combobox('getText'));
		$('#trainingplangrade'+planNum).val($('#trainingplangrade').combobox('getValue'));
		$('#trplansubidsforoneId'+planNum).val($('#trplansubidsforone').combogrid('getValues'));
		$('#trplansubidsforone'+planNum).val($('#trplansubidsforone').combobox('getText'));
	}
	function removePlan(infoIndex) {
		$("#row"+infoIndex).remove();
// 		if(parseInt(infoIndex)>1){
// 			$("#deletePlanDiv"+(parseInt(infoIndex)-1)).append('<a id="deletePlanBtn'+(parseInt(infoIndex)-1)+'" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="removePlan('+(parseInt(infoIndex)-1)+')">删除</a>');
// 		}
		planNum--;
	}
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