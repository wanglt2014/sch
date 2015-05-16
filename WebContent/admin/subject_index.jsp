<%@page import="org.apache.struts2.components.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String request_path = request.getContextPath();
	String image_path = request_path + "/images/blue-themes";
	String css_path = request_path + "/css/blue-themes";
	String js_path = request_path + "/js";
	request.setAttribute("request_path", request_path);
	request.setAttribute("image_path", image_path);
	request.setAttribute("css_path", css_path);
	request.setAttribute("js_path", js_path);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${sitename}--后台管理系统--课程管理</title>
</head>
<body>
		<div id="subjecttb" style="padding: 5px; height: auto;width:auto;">
			<div>
<!-- 				作者:<input type="text"  id="authorQuery"> -->
				名称:<input type="text"  id="subjectname">
				 <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-search" onclick="querySubject()">搜索</a>
			</div>
		</div>
    <table id="subjectdg" title="课程列表" class="easyui-datagrid" style="width:auto;height:616px"
            url="Subject_query"
            toolbar="#subjecttoolbar" pagination="true"
            rownumbers="true" fitColumns="true" singleSelect="true" pageSize="20">
        <thead>
            <tr>
            	<th field="subjectname" width="50" >课程名称</th>
                <th field="subjecttypename" width="30">课程类型</th>
                <th field="subjectno" width="60" >课程编号</th>
                <th field="subjectteachername" width="30">授课教师</th>
                <th field="subjectCredit" width="30">学分</th>
                <th field="subjecttext" width="180" >课程介绍</th>
            </tr>
        </thead>
    </table>
    <div id="subjecttoolbar">
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="insertSubject()">新增</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editSubject()">编辑</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroySubject()">删除</a>
    </div>
    
    <div id="subjectdlg" class="easyui-dialog" style="width:860px;height:auto;padding:10px 20px;top: 20px;"
            closed="true" buttons="#subjectdlg-buttons">
        <div class="ftitle">课程信息</div>
        <form id="subjectfm" method="post" novalidate>
        <div class="fitem" >
            <span class="span_column" >
                <label style="width: 55px">课程编号:</label>
        		<input id="subjectno" name="subjectno" class="easyui-validatebox" style="width: 110px"  maxlength="20">
            </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="span_column" >
                <label style="width: 55px">课程名称:</label>
				<input id="subjectname" name="subjectname" class="easyui-validatebox" style="width: 110px" maxlength="20">
            </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="span_column" >
			<label style="width: 55px">课程性质:</label>
			<input class="easyui-combobox" id="subjecttype" name="subjecttype"
					data-options="url:'Dictionary_queryDictionaryByType?type=subjectType',  
									method:'get',    
				 					valueField:'dictionarycode',    
				 					textField:'dictionaryvalue'"
				style="width: 110px" panelHeight="auto" editable="false"/>
			<input id="subjecttypename" name="subjecttypename" type="hidden" />   
			</span><br><br>
            <span class="span_column" >
                <label style="width: 55px">学分:</label>
				<input id="subjectcredit" name="subjectcredit" class="easyui-validatebox" style="width: 110px" maxlength="5">
            </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="span_column" >
                <label style="width: 55px">学年:</label>
				<input id="subjectyear" name="subjectyear" class="easyui-validatebox" style="width: 110px" maxlength="4">
            </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="span_column" >
				<label style="width: 55px">专业:</label>
				<input
					class="easyui-combobox" id="subjectdepartment" name="subjectdepartment"  editable="false"
					data-options="
		 					url:'Dictionary_queryDictionaryByType?type=department',
							method:'get',
		 					valueField:'dictionarycode',
		 					textField:'dictionaryvalue',  
							panelHeight:'auto'" style="width: 110px" panelHeight="auto" editable="false"/> 
				<input id="subjectdepartmentname" name="subjectdepartmentname" type="hidden" />
			</span>	<br><br>
			 <span >
                <label style="width: 55px">学时:</label>
	                <span class="span_column" >
		                <label style="width: 55px">理论:</label>
						<input id="classhourfortheory" name="classhourfortheory" class="easyui-validatebox" style="width: 50px" maxlength="5">
	            	</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	            	<span class="span_column" >
	                	<label style="width: 55px">实验:</label>
						<input id="classhourfortest" name="classhourfortest" class="easyui-validatebox" style="width: 50px" maxlength="5">
			        </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            <span class="span_column" >
		                <label style="width: 55px">上机:</label>
						<input id="classhourformachine" name="classhourformachine" class="easyui-validatebox" style="width: 50px" maxlength="5">
		            </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            <span class="span_column" >
		                <label style="width: 55px">其它:</label>
						<input id="classhourforother" name="classhourforother" class="easyui-validatebox" style="width: 50px" maxlength="5">
		            </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span><br><br>
            <span >
                <label style="width: 55px">学期学时:</label>
	                <span class="span_column" >
		                <label style="width: 55px">第一学期:</label>
						<input id="termclasshourforone" name="termclasshourforone" class="easyui-validatebox" style="width: 50px" maxlength="5">
	            	</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	            	<span class="span_column" >
	                	<label style="width: 55px">第二学期:</label>
						<input id="termclasshourfortwo" name="termclasshourfortwo" class="easyui-validatebox" style="width: 50px" maxlength="5">
			        </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            <span class="span_column" >
		                <label style="width: 55px">第三学期:</label>
						<input id="termclasshourforthree" name="termclasshourforthree" class="easyui-validatebox" style="width: 50px" maxlength="5">
		            </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            <span class="span_column" >
		                <label style="width: 55px">第四学期:</label>
						<input id="termclasshourforfour" name="termclasshourforfour" class="easyui-validatebox" style="width: 50px" maxlength="5">
		            </span><br><br>
		            <label style="width: 55px"></label>
		            <span class="span_column" >
		                <label style="width: 55px">第五学期:</label>
						<input id="termclasshourforfive" name="termclasshourforfive" class="easyui-validatebox" style="width: 50px" maxlength="5">
	            	</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	            	<span class="span_column" >
	                	<label style="width: 55px">第六学期:</label>
						<input id="termclasshourforsix" name="termclasshourforsix" class="easyui-validatebox" style="width: 50px" maxlength="5">
			        </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            <span class="span_column" >
		                <label style="width: 55px">第七学期:</label>
						<input id="termclasshourforseven" name="termclasshourforseven" class="easyui-validatebox" style="width: 50px" maxlength="5">
		            </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            <span class="span_column" >
		                <label style="width: 55px">第八学期:</label>
						<input id="termclasshourforeight" name="termclasshourforeight" class="easyui-validatebox" style="width: 50px" maxlength="5">
		            </span><br><br>
            </span><br><br>
			<div class="fitem" style="width: 600px">
			<label style="width: 55px">课程介绍:</label>
			<textarea id="subjecttext" rows=5 name="subjecttext"  class="textarea easyui-validatebox" maxlength="500" style="width: 505px"></textarea>
			</div>
			<div class="fitem" style="width: 600px">
			<label style="width: 55px">备注:</label>
			<textarea id="subjectremark" rows=5 name="subjectremark"  class="textarea easyui-validatebox" maxlength="500" style="width: 505px"></textarea>
			</div>
			<div class="fitem" style="width:100%;" id="outlineObj"> <label style="width: 65px">教学大纲:</label> 
				<input type="button" value="选择文件..." id="browseOutline" />
				<input type="button" value="清空" id="outline-clear-btn" />&nbsp;&nbsp;<span class="tip2">(注意：只能上传50M以内的文件)</span>
			</div>
			<span id="file-list-outline"></span>
			<div class="fitem" style="width:100%;" id="scheduleObj"> <label style="width: 65px">教学进度表:</label> 
				<input type="button" value="选择文件..." id="browseSchedule" />
				<input type="button" value="清空" id="schedule-clear-btn" />&nbsp;&nbsp;<span class="tip2">(注意：只能上传50M以内的文件)</span>
			</div>
			<span id="file-list-schedule"></span>
			<div class="fitem" style="width:100%;" id="subjectObj"> <label style="width: 65px">课程资料:</label> 
				<input type="button" value="选择文件..." id="browseSubject" />
				<input type="button" value="清空" id="subject-clear-btn" />&nbsp;&nbsp;<span class="tip2">(注意：只能上传50M以内的文件)</span>
			</div>
			<span id="file-list-subject"></span>
<!-- 			<div class="fitem" id="uploadFileDIV"> -->
<!--                 <label>上传文件:</label> -->
<!--             	<input id="uploader_count" name="uploader_count" value="0" style="display: none;"/> -->
<!-- 				<div class="btn-wraper"> -->
<!-- 					<input type="button" value="选择文件..." id="browseForsubject" /> -->
<!-- 					<input type="button" value="清空" id="clear-btn" /> -->
<!-- 					<p class="tip2">注意：只能上传10M以内的文件</p> -->
<!-- 				</div> -->
<!-- 				<ul id="file-listForsubject" style="text-align: left;margin:0px 0px 0px 30px; "> -->
<!-- 				</ul> -->
<!-- 			</div> -->
        </form>
        </div>
    </div>
    <div id="subjectdlg-buttons">
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveSubject()">保存</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#subjectdlg').dialog('close')">取消</a>
    </div>
    
    <script type="text/javascript">
        var url;
        function querySubject(){
        	var subjectname = $('#subjectname').val();
        	$('#subjectdg').datagrid('load', {
        		subjectname:subjectname
        	});
        }
        var uploaderForOutline,uploaderForSchedule,uploaderForSubject;
        function createSubjectUpload() {
    		//教学大纲 上传控件##########################################
    		uploaderForOutline  = new plupload.Uploader({ //实例化一个plupload上传对象
    			browse_button : 'browseOutline',
    			multi_selection: false,
    	 		url : 'File_uploadForTeacher',
    	 		file_data_name : 'fileData',
    	        flash_swf_url : '${js_path}/plupload/Moxie.swf', //swf文件，当需要使用swf方式进行上传时需要配置该参数
    	        silverlight_xap_url : '${js_path}/plupload/Moxie.xap', //silverlight文件，当需要使用silverlight方式进行上传时需要配置该参数
    	        unique_names : true,  // 上传的文件名是否唯一   
    	        multipart_params: {
    	        	  filetype: 'outline'
    	        	},
    	        filters: {
    	  		  max_file_size : '50mb', //最大只能上传50mb的文件
    	  		  prevent_duplicates : true //不允许队列中存在重复文件
    	        }
    		});
    		uploaderForOutline.init();
    		uploaderForOutline.bind('Error',function(uploader,errObject){
    			if(errObject.code=='-600'){
    				alert("上传文件过大");
    			}
    		});
    		//绑定文件添加进队列事件
    		uploaderForOutline.bind('FilesAdded',function(uploader,files){
    			$.each(uploader.files, function (i, file) { 
    				if (uploader.files.length <= 1) { 
    			            return; 
    			        } 
    				uploaderForOutline.removeFile(file); 
    			    });
    			for(var i = 0, len = files.length; i<len; i++){
    				var file_name = files[i].name; //文件名
    				var file_id = files[i].id;//ID,临时文件名
    				//构造html来更新UI
    				var html = '<span id="file-' + file_id +'" style="text-align: left;"><p class="file-name">' + file_name + '</p><p class="progress"></p>';
    					html += '<input type="hiddent" style="display: none;" name="uploader_outline_tmpname" value="' + file_id + '" />';
    					html += '<input type="hiddent" style="display: none;" name="uploader_outline_name" value="' + file_name + '" /></span>';
    				$(html).appendTo('#file-list-outline');
    			}
    		});
    		//绑定文件上传进度事件
    		uploaderForOutline.bind('UploadProgress',function(uploader,file){
    			$('#file-'+file.id+' .progress').css('width',file.percent + '%');//控制进度条
    		});
    		
    		//绑定文件上传删除事件
    		uploaderForOutline.bind('FilesRemoved',function(uploader,file){
    			$('#file-list-outline').html("");
    		});
    		//清空按钮
    		$('#outline-clear-btn').click(function(){
    			uploaderForOutline.splice(0,10); ////删除文件按钮
    		});
    		
    		//教学进度表 上传控件##########################################
    		uploaderForSchedule= new plupload.Uploader({ //实例化一个plupload上传对象
    			browse_button : 'browseSchedule',
    			multi_selection: false,
    	 		url : 'File_uploadForTeacher',
    	 		file_data_name : 'fileData',
    	        flash_swf_url : '${js_path}/plupload/Moxie.swf', //swf文件，当需要使用swf方式进行上传时需要配置该参数
    	        silverlight_xap_url : '${js_path}/plupload/Moxie.xap', //silverlight文件，当需要使用silverlight方式进行上传时需要配置该参数
    	        unique_names : true,  // 上传的文件名是否唯一   
    	        multipart_params: {
    	        	  filetype: 'schedule'
    	        	},
    	        filters: {
    	  		  max_file_size : '50mb', //最大只能上传100kb的文件
    	  		  prevent_duplicates : true //不允许队列中存在重复文件
    	        }
    		});
    		uploaderForSchedule.init();
    		uploaderForSchedule.bind('Error',function(uploader,errObject){
    			if(errObject.code=='-600'){
    				alert("上传文件过大");
    			}
    		});
    		//绑定文件添加进队列事件
    		uploaderForSchedule.bind('FilesAdded',function(uploader,files){
    			$.each(uploader.files, function (i, file) { 
    				if (uploader.files.length <= 1) { 
    			            return; 
    			        } 
    				uploaderForSchedule.removeFile(file); 
    			    });
    			for(var i = 0, len = files.length; i<len; i++){
    				var file_name = files[i].name; //文件名
    				var file_id = files[i].id;//ID,临时文件名
    				//构造html来更新UI
    				var html = '<span id="file-' + file_id +'" style="text-align: left;"><p class="file-name">' + file_name + '</p><p class="progress"></p>';
    					html += '<input type="hiddent" style="display: none;" name="uploader_schedule_tmpname" value="' + file_id + '" />';
    					html += '<input type="hiddent" style="display: none;" name="uploader_schedule_name" value="' + file_name + '" /></span>';
    				$(html).appendTo('#file-list-schedule');
    			}
    		});
    		//绑定文件上传进度事件
    		uploaderForSchedule.bind('UploadProgress',function(uploader,file){
    			$('#file-'+file.id+' .progress').css('width',file.percent + '%');//控制进度条
    		});
    		//绑定文件上传删除事件
    		uploaderForSchedule.bind('FilesRemoved',function(uploader,file){
    			$('#file-list-schedule').html("");
    		});
    		//清空按钮
    		$('#schedule-clear-btn').click(function(){
    			uploaderForSchedule.splice(0,10); ////删除文件按钮
    		});
    		
    		//课程资料 上传控件##########################################
    		uploaderForSubject= new plupload.Uploader({ //实例化一个plupload上传对象
    			browse_button : 'browseSubject',
    			multi_selection: false,
    	 		url : 'File_uploadForTeacher',
    	 		file_data_name : 'fileData',
    	        flash_swf_url : '${js_path}/plupload/Moxie.swf', //swf文件，当需要使用swf方式进行上传时需要配置该参数
    	        silverlight_xap_url : '${js_path}/plupload/Moxie.xap', //silverlight文件，当需要使用silverlight方式进行上传时需要配置该参数
    	        unique_names : true,  // 上传的文件名是否唯一   
    	        multipart_params: {
    	        	  filetype: 'subject'
    	        	},
    	        filters: {
    	  		  max_file_size : '50mb', //最大只能上传100kb的文件
    	  		  prevent_duplicates : true //不允许队列中存在重复文件
    	        }
    		});
    		uploaderForSubject.init();
    		uploaderForSubject.bind('Error',function(uploader,errObject){
    			if(errObject.code=='-600'){
    				alert("上传文件过大");
    			}
    		});
    		//绑定文件添加进队列事件
    		uploaderForSubject.bind('FilesAdded',function(uploader,files){
    			$.each(uploader.files, function (i, file) {
    				if (uploader.files.length <= 1) { 
    			            return; 
    			        } 
    				uploaderForSubject.removeFile(file); 
    			    });
    			for(var i = 0, len = files.length; i<len; i++){
    				var file_name = files[i].name; //文件名
    				var file_id = files[i].id;//ID,临时文件名
    				//构造html来更新UI
    				var html = '<span id="file-' + file_id +'" style="text-align: left;"><p class="file-name">' + file_name + '</p><p class="progress"></p>';
    					html += '<input type="hiddent" style="display: none;" name="uploader_subject_tmpname" value="' + file_id + '" />';
    					html += '<input type="hiddent" style="display: none;" name="uploader_subject_name" value="' + file_name + '" /></span>';
    				$(html).appendTo('#file-list-subject');
    			}
    		});
    		//绑定文件上传进度事件
    		uploaderForSubject.bind('UploadProgress',function(uploader,file){
    			$('#file-'+file.id+' .progress').css('width',file.percent + '%');//控制进度条
    		});
    		//绑定文件上传删除事件
    		uploaderForSubject.bind('FilesRemoved',function(uploader,file){
    			$('#file-list-subject').html("");
    		});
    		//清空按钮
    		$('#subject-clear-btn').click(function(){
    			uploaderForSubject.splice(0,10); ////删除文件按钮
    		});
    	}
        
        function insertSubject(){
    		if(uploaderForSchedule==null || uploaderForSchedule==undefined){
    			createSubjectUpload();
    		}else{
    			uploaderForSchedule.destroy();
    			uploaderForSubject.destroy();
    			uploaderForOutline.destroy();
    			createSubjectUpload();
    			deleteAllSubjectUploader();
    		}
    		showAllSubjectUploader();
            $('#subjectdlg').dialog('open').dialog('setTitle','新增课程');
            $('#subjectfm').form('clear');
            var data = $('#subjecttype').combobox('getData');
            $('#subjecttype').combobox('select', data[0].dictionarycode);
            var data2 = $('#subjectdepartment').combobox('getData');
            $('#subjectdepartment').combobox('select', data2[0].dictionarycode);
            $('#subjecttypename').val($('#subjecttype').combobox('getText'));
            $('#subjectdepartmentname').val($('#subjectdepartment').combobox('getText'));
//             $('#uploadFileDIV').show();
//             UM.getEditor('myEditornew').setContent('', false);
            url = 'Subject_save';
//             createSubjectUpload();
            uploaderForDownload.splice(0,10);
        }
        function editSubject(){
            var row = $('#subjectdg').datagrid('getSelected');
            if (row){
            	if(uploaderForSchedule==null || uploaderForSchedule==undefined){
        			createSubjectUpload();
        		}else{
        			uploaderForSchedule.destroy();
        			uploaderForSubject.destroy();
        			uploaderForOutline.destroy();
        			createSubjectUpload();
        			deleteAllSubjectUploader();
        		}
                $('#subjectdlg').dialog('open').dialog('setTitle','编辑资料');
                $('#subjectfm').form('clear');
//                 $('#uploadFileDIV').hide();
                $('#subjectfm').form('load',row);
                
                url = 'Subject_update?id='+row.subjectid;
            }
        }
        function saveSubject(){
        	var valid = $('#subjectfm').form('validate');
    		if(valid==true){
   			$('#subjectdepartmentname').val($('#subjectdepartment').combobox('getText'));
   		 	$('#subjecttypename').val($('#subjecttype').combobox('getText'));
            $('#subjectfm').form('submit',{
                url: url,
                onSubmit: function(){
                    return $(this).form('validate');
                },
                success: function(result){
                    if (result!="true"){
//                     	uploaderForDownload.refresh();
                    	jAlert('系统错误，请联系管理员','错误提示');
                    } else {
                    	deleteAllSubjectUploader();
                    	$('#file-listForDownload').html("");
                        $('#subjectdlg').dialog('close');        // close the dialog
                        $('#subjectdg').datagrid('reload');    // reload the user data
                    }
                }
            });
            if(uploaderForOutline==null || uploaderForOutline==undefined){
       		 	var outlineLen = uploaderForOutline.files.length;
       		 	var scheduleLen = uploaderForSchedule.files.length;
       		 	var subjectLen = uploaderForSubject.files.length;
	    		if (outlineLen > 0) {
					uploaderForOutline.start();
				}
				if (scheduleLen > 0) {
					uploaderForSchedule.start();
				}
				if (subjectLen > 0) {
					uploaderForSubject.start();
				}
            }
    		}else{
    			alert("信息填写不完整");
    		}
        }
        function destroySubject(){
            var row = $('#subjectdg').datagrid('getSelected');
            if (row){
                $.messager.confirm('确认','是否要删除?',function(r){
                    if (r){
                        $.post('Subject_delete',{id:row.subjectid},function(result){
                            if (result="true"){
                                $('#subjectdg').datagrid('reload');    // reload the user data
                            } else {
                            	jAlert('系统错误，请联系管理员','错误提示');
                            }
                        },'json');
                    }
                });
            }
        }
        
    	//销毁所有上传控件
    	function deleteAllSubjectUploader(){
    		uploaderForOutline.splice(0,10);
    		uploaderForSchedule.splice(0,10);
    		uploaderForSubject.splice(0,10);
    		
    	}
    	//显示所有上传控件
    	function showAllSubjectUploader(){
    		$('#outlineObj').show();
    		$('#scheduleObj').show();
    		$('#subjectObj').show();
    	}
        
      //上传控件##########################################
    	var uploaderForDownload = new plupload.Uploader({ //实例化一个plupload上传对象
    		browse_button : 'browseForDownload',
    		multi_selection: false,
     		url : 'File_uploadForOther',
     		file_data_name : 'fileData',
//     		url : '${request_path}/pupload/upload.php', //服务器端的上传页面地址
            flash_swf_url : '${js_path}/plupload/Moxie.swf', //swf文件，当需要使用swf方式进行上传时需要配置该参数
            silverlight_xap_url : '${js_path}/plupload/Moxie.xap', //silverlight文件，当需要使用silverlight方式进行上传时需要配置该参数
            unique_names : true,  // 上传的文件名是否唯一   
            multipart_params: {
            	  filetype: 'article'
            	},
            filters: {
//       		  mime_types : [ //只允许上传图片文件和rar压缩文件
//       		    { title : "图片文件", extensions : "jpg,gif,png,bmp" }
//       		  ],
      		  max_file_size : '10mb', //最大只能上传10mb的文件
      		  prevent_duplicates : true //不允许队列中存在重复文件
            }
    	});
//     	uploaderForDownload.init(); //初始化
    	
    	//绑定文件上传删除事件
    	uploaderForDownload.bind('FilesRemoved',function(uploader,file){
//     		alert("删除");
    		$('#file-listForDownload').html("");
    	});
    	
    	//绑定文件添加进队列事件
    	uploaderForDownload.bind('FilesAdded',function(uploader,files){
    		$.each(uploader.files, function (i, file) { 
    			if (uploader.files.length <= 1) { 
    		            return; 
    		        } 
    		        uploaderForDownload.removeFile(file); 
    		    });
    		for(var i = 0, len = files.length; i<len; i++){
    			var file_name = files[i].name; //文件名
    			var file_id = files[i].id;//ID,临时文件名
    			//构造html来更新UI
    			var html = '<li id="file-' + files[i].id +'"><p class="file-name">' + file_name + '</p><p class="progress"></p>';
//     			var html = '<li id="file-' + file_id +'" style="text-align: left;">';
    				html += '<input type="hidden" name="uploader_tmpname" value="' + file_id + '" />';
    				html += '<input type="hidden" name="uploader_name" value="' + file_name + '" /></li>';
    			$(html).appendTo('#file-listForDownload');
    			$('#filename').val(file_name);
    		}
    	});
    </script>
    <style type="text/css">
        #subjectfm{
            margin:0;
            padding:10px 30px;
        }
        .ftitle{
            font-size:14px;
            font-weight:bold;
            padding:5px 0;
            margin-bottom:10px;
            border-bottom:1px solid #ccc;
        }
        .fitem{
            margin-bottom:5px;
        }
        .fitem label{
            display:inline-block;
            width:80px;
        }
    </style>
</body>
</html>