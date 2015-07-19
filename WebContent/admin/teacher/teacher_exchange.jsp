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
		<input type="hidden" id="teacherIdForSave"> 
		<input type="hidden" id="teacherNameForSave"> 
	</div>
	<table id="teacherExchangedg" title="列表" class="easyui-datagrid"
		style="width: auto; height: 616px" url="Teacher_query"
		toolbar="#teacherExchangetoolbar" pagination="true" rownumbers="true"
		fitColumns="true" singleSelect="true" pageSize="20">
		<thead>
			<tr>
				<th field="teachername" width="30">姓名</th>
				<th field="departmentname" width="50">所在专业</th>
				<th field="titlename" width="30" >职称</th>
				<th field="job" width="30"  formatter="formatJobtype">职务</th>
				<th field="tutortype" width="20" formatter="formatTutortype">硕/博导</th>
				<th field="sex" width="20" formatter="formatSextype">性别</th>
			</tr>
		</thead>
	</table>
	<div id="teacherExchangetoolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editForVisitSchool()">教师访学</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editForAttMeeting()">参加国际/国内会议</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editForAttTrain()">参加培训</a>
	</div>
	<div id="visitSchooldlg" class="easyui-dialog"
		style="width: 800px; height: 620px; padding: 20px 20px;overflow: visible;" closed="true"
		buttons="#visitSchooldlg-buttons">
		<div id="visitSchoolRow" class="fitem">
		<form id="visitSchoolfm" method="post" novalidate>
		<span class="span_column">
			<label style="width: 160px;text-align: right;">访学开始时间:</label> 
			<input id="visitbegdate" name="visitbegdate" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">访学结束时间:</label> 
			<input id="visitenddate" name="visitenddate" type="date" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
		</span><br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">时间长度（月）:</label>
			<input id="visitlength" name="visitlength" style="width: 110px"
				class="easyui-validatebox"  maxlength="3">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">地点（国家/地区及高校）:</label>
			<input id="visitplace" name="visitplace" style="width: 110px"
				class="easyui-validatebox"  maxlength="20">
		</span><br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">项目名称/交流目的:</label>
			<input id="visitforproject" name="visitforproject" maxlength="100" style="width: 390px"
				class="easyui-validatebox" >
		</span><br><br>
		<a href="javascript:void(0)" class="easyui-linkbutton" style="margin-left: 70px;" iconCls="icon-ok" onclick="saveVisitSchool()">保存</a>
		</form>
		<hr  style="border-bottom:1px dashed;"><br>
		</div>
		<table id="visitSchooldg" title="列表" class="easyui-datagrid"
			style="width: auto; height: 250px" url="Exchange_queryVisitSchool"
			toolbar="#visitSchooltoolbar" pagination="true" rownumbers="true"
			fitColumns="true" pageList="[5,10]" singleSelect="true" pageSize="5" >
			<thead>
				<tr>
					<th field="visitbegdate" width="30">访学开始时间</th>
					<th field="visitenddate" width="30" >访学结束时间</th>
					<th field="visitlength" width="30">时间长度（月）</th>
					<th field="visitplace" width="50">地点（国家/地区及高校）</th>
					<th field="visitforproject" width="90">项目名称/交流目的</th>
				</tr>
			</thead>
		</table>
		<div id="visitSchooltoolbar">
			<a href="javascript:void(0)" class="easyui-linkbutton"
				iconCls="icon-remove" plain="true" onclick="destroyVisitSchool()">删除</a>
		</div>
	</div>
	<div id="visitSchooldlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel"
			onclick="javascript:$('#visitSchooldlg').dialog('close')">取消</a>
	</div>
	
	<div id="attMeetingdlg" class="easyui-dialog"
		style="width: 800px; height: 620px; padding: 20px 20px;overflow: visible;" closed="true"
		buttons="#attMeetingdlg-buttons">
		<div id="attMeetingRow" class="fitem">
		<form id="attMeetingfm" method="post" novalidate>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">会议名称:</label>
			<input id="attmeetingname" name="attmeetingname" style="width: 110px"
				class="easyui-validatebox"  maxlength="30">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">类别（国际或国内）:</label>
			<select id="attmeetingtype" name="attmeetingtype" class="easyui-combobox" panelHeight="auto" editable="false"
					style="width: 110px" >
					<option value="国内">国内</option>
					<option value="国际">国际</option>
			</select>
		</span><br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">主办方:</label>
			<input id="attmeetinghost" name="attmeetinghost" style="width: 110px"
				class="easyui-validatebox"  maxlength="30">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">会议地点:</label>
			<input id="attmeetingplace" name="attmeetingplace" style="width: 110px"
				class="easyui-validatebox"  maxlength="30">
		</span><br><br>
		<span class="span_column">
			<label style="width: 160px;text-align: right;">会议开始时间:</label> 
			<input id="attmeetingbegintime" name="attmeetingbegintime" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">会议结束时间:</label> 
			<input id="attmeetingendtime" name="attmeetingendtime" type="date" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
		</span><br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">参会论文:</label>
			<input id="attmeetingpaper" name="attmeetingpaper" style="width: 110px"
				class="easyui-validatebox"  maxlength="50">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">报告类别:</label>
			<select id="attmeetingreporttype" name="attmeetingreporttype" class="easyui-combobox" panelHeight="auto" editable="false"
				style="width: 110px" >
				<option value="大会报告">大会报告</option>
				<option value="小组报告">小组报告</option>
			</select>
		</span><br><br>
		<a href="javascript:void(0)" class="easyui-linkbutton" style="margin-left: 70px;" iconCls="icon-ok" onclick="saveAttMeeting()">保存</a>
		</form>
		<hr  style="border-bottom:1px dashed;"><br>
		</div>
		<table id="attMeetingdg" title="列表" class="easyui-datagrid"
			style="width: auto; height: 250px" url="Exchange_queryAttMeeting"
			toolbar="#attMeetingtoolbar" pagination="true" rownumbers="true"
			fitColumns="true" pageList="[5,10]" singleSelect="true" pageSize="5" >
			<thead>
				<tr>
					<th field="attmeetingname" width="30">会议名称</th>
					<th field="attmeetingtype" width="30" >类别</th>
					<th field="attmeetinghost" width="30">主办方</th>
					<th field="attmeetingplace" width="50">会议地点</th>
					<th field="attmeetingbegintime" width="50">会议开始时间</th>
					<th field="attmeetingendtime" width="50">会议结束时间</th>
					<th field="attmeetingpaper" width="50">参会论文</th>
					<th field="attmeetingreporttype" width="50">报告类别</th>
				</tr>
			</thead>
		</table>
		<div id="attMeetingtoolbar">
			<a href="javascript:void(0)" class="easyui-linkbutton"
				iconCls="icon-remove" plain="true" onclick="destroyAttMeeting()">删除</a>
		</div>
	</div>
	<div id="attMeetingdlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel"
			onclick="javascript:$('#attMeetingdlg').dialog('close')">取消</a>
	</div>
	
	<div id="attTraindlg" class="easyui-dialog"
		style="width: 800px; height: 620px; padding: 20px 20px;overflow: visible;" closed="true"
		buttons="#attTraindlg-buttons">
		<div id="attTrainRow" class="fitem">
		<form id="attTrainfm" method="post" novalidate>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">培训名称:</label>
			<input id="attname" name="attname" style="width: 110px"
				class="easyui-validatebox"  maxlength="30">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">类别（国际或国内）:</label>
			<select id="atttype" name="atttype" class="easyui-combobox" panelHeight="auto" editable="false"
					style="width: 110px" >
					<option value="国内">国内</option>
					<option value="国际">国际</option>
			</select>
		</span><br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">主办方:</label>
			<input id="atthost" name="atthost" style="width: 110px"
				class="easyui-validatebox"  maxlength="30">
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">培训地点:</label>
			<input id="atttrainplace" name="atttrainplace" style="width: 110px"
				class="easyui-validatebox"  maxlength="30">
		</span><br><br>
		<span class="span_column">
			<label style="width: 160px;text-align: right;">培训开始时间:</label> 
			<input id="atttrainbegintime" name="atttrainbegintime" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
		</span>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">培训结束时间:</label> 
			<input id="atttrainendtime" name="atttrainendtime" type="date" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
		</span><br><br>
		<span class="span_column" >
			<label style="width: 160px;text-align: right;">培训成果:</label>
			<input id="atttrainresult" name="atttrainresult" style="width: 110px"
				class="easyui-validatebox"  maxlength="50">
		</span><br><br>
		<a href="javascript:void(0)" class="easyui-linkbutton" style="margin-left: 70px;" iconCls="icon-ok" onclick="saveAttTrain()">保存</a>
		</form>
		<hr  style="border-bottom:1px dashed;"><br>
		</div>
		<table id="attTraindg" title="列表" class="easyui-datagrid"
			style="width: auto; height: 250px" url="Exchange_queryAttTrain"
			toolbar="#attTraintoolbar" pagination="true" rownumbers="true"
			fitColumns="true" pageList="[5,10]" singleSelect="true" pageSize="5" >
			<thead>
				<tr>
					<th field="attname" width="30">培训名称</th>
					<th field="atttype" width="30" >类别</th>
					<th field="atthost" width="30">主办方</th>
					<th field="atttrainplace" width="50">培训地点</th>
					<th field="atttrainbegintime" width="50">培训开始时间</th>
					<th field="atttrainendtime" width="50">培训结束时间</th>
					<th field="atttrainresult" width="50">培训成果</th>
				</tr>
			</thead>
		</table>
		<div id="attTraintoolbar">
			<a href="javascript:void(0)" class="easyui-linkbutton"
				iconCls="icon-remove" plain="true" onclick="destroyAttTrain()">删除</a>
		</div>
	</div>
	<div id="attTraindlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel"
			onclick="javascript:$('#attTraindlg').dialog('close')">取消</a>
	</div>
	<script>
	var url;
	function formatTutortype(value,rowData,rowIndex) {
    	var s="";
		if(value=="1"){
			s ="硕导";
		}else if(value=="2"){
			s ="博导";
		}
		return s;
	    }
	
	function formatSextype(value,rowData,rowIndex) {
    	var s="";
		if(value=="0"){
			s ="男";
		}else if(value=="1"){
			s ="女";
		}
		return s;
	    }
	
	function workTypeClick(newvalue,flag) {
		var text = $('#workType'+flag).combobox('getText');
		if(text!=null && text=='译著'){
			$('#oriAuthorSpan'+flag).show();
			$('#translateForeignSpan'+flag).hide();
		}else{
			$('#oriAuthorSpan'+flag).hide();
			$('#translateForeignSpan'+flag).show();
		}
	    }
	
	function formatJobtype(value,rowData,rowIndex) {
		var s="";
		$.ajax({
			type : 'post',
			url : 'Dictionary_queryDictionaryByType?type=job',
			async:false,
			success : function(datas) {
				var datasArr=eval(datas);  
				for(var i=0;i<datasArr.length;i++){
					if(value==datasArr[i].dictionarycode){
						s= datasArr[i].dictionaryvalue;
					}
				}  
			},
			error : function() {
				jAlert('系统错误，请联系管理员','错误提示');
			}
		});
		return s;
	}
	
	function editForVisitSchool() {
		var row = $('#teacherExchangedg').datagrid('getSelected');
		if (row) {
			$('#teacherNameForSave').val(row.teachername);
			$('#teacherIdForSave').val(row.id);
			$('#visitSchooldlg').dialog('open').dialog('setTitle',
					'教师访学');
			$('#visitSchoolfm').form('clear');
			$('#visitSchoolfm').form('load', row);
			$('#visitSchooldg').datagrid('load', {
				teacherId : row.id
			});
		}
	}
	
	function editForAttMeeting() {
		var row = $('#teacherExchangedg').datagrid('getSelected');
		if (row) {
			$('#teacherNameForSave').val(row.teachername);
			$('#teacherIdForSave').val(row.id);
			$('#attMeetingdlg').dialog('open').dialog('setTitle',
					'参加国际/国内会议');
			$('#attMeetingfm').form('clear');
			$('#attMeetingfm').form('load', row);
			$('#attMeetingdg').datagrid('load', {
				teacherId : row.id
			});
		}
	}
	function editForAttTrain() {
		var row = $('#teacherExchangedg').datagrid('getSelected');
		if (row) {
			$('#teacherNameForSave').val(row.teachername);
			$('#teacherIdForSave').val(row.id);
			$('#attTraindlg').dialog('open').dialog('setTitle',
					'参加培训');
			$('#attTrainfm').form('clear');
			$('#attTrainfm').form('load', row);
			$('#attTraindg').datagrid('load', {
				teacherId : row.id
			});
		}
	}
	
	function saveVisitSchool() {
		var teachername = $('#teacherNameForSave').val();
		var teacherId = $('#teacherIdForSave').val();
		$('#visitSchoolfm').form('submit', {
			url : 'Exchange_saveVisitschool?id=' + teacherId+'&name='+encodeURI(encodeURI(teachername)),
			onSubmit : function() {
				return $(this).form('validate');
			},
			success : function(result) {
				if (result != "true") {
					jAlert('系统错误，请联系管理员', '错误提示');
				} else {
					$('#visitSchooldg').datagrid('reload'); // reload the user data
				}
			}
		});
	}
	
	//删除
	function destroyVisitSchool() {
		var row = $('#visitSchooldg').datagrid('getSelected');
		if (row) {
			$.messager.confirm('确认', '是否要删除?', function(r) {
				if (r) {
					$.post('Exchange_deleteVisitschool', {
						id : row.visitid
					}, function(result) {
						if (result = "true") {
							$('#visitSchooldg').datagrid('reload'); // reload the user data
						} else {
							jAlert('系统错误，请联系管理员', '错误提示');
						}
					}, 'json');
				}
			});
		}
	}
	
	function saveAttMeeting() {
		var teachername = $('#teacherNameForSave').val();
		var teacherId = $('#teacherIdForSave').val();
		$('#attMeetingfm').form('submit', {
			url : 'Exchange_saveAttMeeting?id=' + teacherId+'&name='+encodeURI(encodeURI(teachername)),
			onSubmit : function() {
				return $(this).form('validate');
			},
			success : function(result) {
				if (result != "true") {
					jAlert('系统错误，请联系管理员', '错误提示');
				} else {
					$('#attMeetingdg').datagrid('reload'); // reload the user data
				}
			}
		});
	}
	
	//删除
	function destroyAttMeeting() {
		var row = $('#attMeetingdg').datagrid('getSelected');
		if (row) {
			$.messager.confirm('确认', '是否要删除?', function(r) {
				if (r) {
					$.post('Exchange_deleteAttMeeting', {
						id : row.attendid
					}, function(result) {
						if (result = "true") {
							$('#attMeetingdg').datagrid('reload'); // reload the user data
						} else {
							jAlert('系统错误，请联系管理员', '错误提示');
						}
					}, 'json');
				}
			});
		}
	}
	
	function saveAttTrain() {
		var teachername = $('#teacherNameForSave').val();
		var teacherId = $('#teacherIdForSave').val();
		$('#attTrainfm').form('submit', {
			url : 'Exchange_saveAttTrain?id=' + teacherId+'&name='+encodeURI(encodeURI(teachername)),
			onSubmit : function() {
				return $(this).form('validate');
			},
			success : function(result) {
				if (result != "true") {
					jAlert('系统错误，请联系管理员', '错误提示');
				} else {
					$('#attTraindg').datagrid('reload'); // reload the user data
				}
			}
		});
	}
	
	//删除
	function destroyAttTrain() {
		var row = $('#attTraindg').datagrid('getSelected');
		if (row) {
			$.messager.confirm('确认', '是否要删除?', function(r) {
				if (r) {
					$.post('Exchange_deleteAttTrain', {
						id : row.atttrainid
					}, function(result) {
						if (result = "true") {
							$('#attTraindg').datagrid('reload'); // reload the user data
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