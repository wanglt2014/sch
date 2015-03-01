<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>${sitename}--后台管理系统--师资队伍</title>
<%-- <link rel="stylesheet" type="text/css" href="${js_path}/plupload/queue/jquery.plupload.queue.css"> --%>
<%-- <script type="text/javascript" src="${js_path}/jquery.js"></script> --%>
<%-- <script type="text/javascript" src="${js_path}/plupload/plupload.full.min.js"></script> --%>
<%-- <script type="text/javascript" src="${js_path}/plupload/pluploadEXT.js"></script> --%>
<%-- <script type="text/javascript" src="${js_path}/plupload/queue/jquery.plupload.queue.js"></script> --%>
<%-- <script type="text/javascript" src="${js_path}/plupload/i18n/cn.js"></script> --%>

<!-- <style type="text/css">@import url(${request_path}/plupload/js/jquery.plupload.queue/jquery.plupload.queue.css);</style> -->
<script type="text/javascript" src="${request_path}/js/jquery.js" ></script> 

<link rel="stylesheet" type="text/css" href="${js_path}/plupload/queue/css/jquery.plupload.queue.css">

<%-- <script type="text/javascript" src="${js_path}/plupload/plupload.full.min.js"></script> --%>
<script type="text/javascript" src="${request_path}/plupload/js/plupload.full.js"></script>


<script type="text/javascript" src="${request_path}/plupload/js/i18n/cn.js"></script>
<script type="text/javascript" src="${request_path}/js/plupload/queue/jquery.plupload.queue.js"></script>
<script type="text/javascript" src="${request_path}/plupload/js/i18n/cn.js"></script>

<script type="text/javascript" src="${js_path}/plupload/pluploadEXT.js"></script>
</head>
<body>
<div id="productcategorytb" style="padding: 5px; height: auto">
		<div>
			教师姓名:<input type="text" id="teachername"> 
			所属专业:<input
				class="easyui-combobox" id="department"
				data-options="
 					url:'Dictionary_queryDictionaryByType?type=department',
					method:'get', 
 					valueField:'dictionarycode', 
 					textField:'dictionaryvalue', 
					panelHeight:'auto'"> 
			<a href="javascript:void(0)" class="easyui-linkbutton"
				iconCls="icon-search" onclick="queryTearcher()">搜索</a>
		</div>
	</div>
	<table id="teacherdg" title="列表" class="easyui-datagrid"
		style="width: auto; height: 616px" url="Teacher_query"
		toolbar="#teachertoolbar" pagination="true" rownumbers="true"
		fitColumns="true" singleSelect="true" pageSize="20">
		<thead>
			<tr>
				<th field="dictionarycode" width="50">编码</th>
				<th field="dictionaryvalue" width="50">值</th>
				<th field="dictionarytype" width="50">分类</th>
				<th field="dictionaryremark" width="50">备注</th>
			</tr>
		</thead>
	</table>
	<div id="teachertoolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="newTeacher()">新增</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editTeacher()">编辑</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="destroyTeacher()">删除</a>
	</div>
	<div id="dictionarydlg" class="easyui-dialog"
		style="width: 800px; height: 780px; padding: 10px 20px" closed="true"
		buttons="#dictionarydlg-buttons">
		<form id="dictionaryfm" method="post" novalidate>
		<div id="teacher_tab" class="easyui-tabs" style="height: 616px"
			data-options="fit:true,border:false,plain:true">
			<div title="基本信息" style="padding:20px;" id="Tab1" > 
					<div class="ftitle">基本信息</div>
					
						<div class="fitem">
							<label>姓名:</label> 
							<input id="teachername" name="tTeacher.teachername" class="easyui-validatebox" required="true">
						</div>
						<div class="fitem">
							<label>性别</label> 
							<select id="sex" name="tTeacher.sex" class="easyui-combobox" panelHeight="auto"
								style="width: 100px">
								<option value="0">男</option>
								<option value="1">女</option>
							</select>
						</div>
						<div class="fitem">
							<label>出生年月:</label> 
							<input id="birthday" name="tTeacher.birthday" type="text" data-options="formatter:ww4,parser:w4" class="easyui-datebox" id="birthday" required="true" />
						</div>
						<div class="fitem">
							<label>所在专业:</label>
							<input
								class="easyui-combobox" id="department" name="department"
								data-options="
 				 					url:'Dictionary_queryDictionaryByType?type=department',
 									method:'get',
 				 					valueField:'dictionarycode',
 				 					textField:'dictionaryvalue',  
 									panelHeight:'auto'"> 
						</div>
						<div class="fitem">
							<label>职称:</label>
							<input
								class="easyui-combobox" id="title"
								data-options="
 				 					url:'Dictionary_queryDictionaryByType?type=title',
 									method:'get',  
 				 					valueField:'dictionarycode',  
 				 					textField:'dictionaryvalue',  
 									panelHeight:'auto'"> 
						</div>
						<div class="fitem">
							<label>职务:</label>
							<input
								class="easyui-combobox" id="job"
								data-options="
			 						url:'Dictionary_queryDictionaryByType?type=job', 
									method:'get',
 				 					valueField:'dictionarycode',
				 					textField:'dictionaryvalue',
 									panelHeight:'auto'">
						</div>
						<div class="fitem">
							<label>硕/博导:</label>
							<select id="tutortype" name="tutortype" class="easyui-combobox" panelHeight="auto"
								style="width: 100px">
								<option value="1">硕导</option>
								<option value="2">博导</option>
							</select>
						</div>
						<div class="fitem">
							<label>个人介绍:</label>
							<textarea id="introduction" rows=5 name="introduction"  class="textarea easyui-validatebox"></textarea>
						</div><br>
						<div class="fitem">
							<div class="wraper">
							<label>照片:</label>
<!-- 							<input id="oldfileName" name="oldfileName" value="" style="display: none;"/> -->
<!-- 							<input id="tampFileName" name="tampFileName" value="" style="display: none;"/> -->
								<input id="uploader_count" name="uploader_count" value="0" style="display: none;"/>
								<ul id="file-list" style="text-align: left;margin:0px 0px 0px 30px; ">
								</ul>
								<div class="btn-wraper">
									<input type="button" value="选择文件..." id="browse" />
									<input type="button" value="开始上传" id="upload-btn" />
									<input type="button" value="清空" id="clear-btn" />
									<p class="tip2">注意：只能上传1M以内，格式为jpg,gif,png,bmp的照片</p>
								</div>
							</div>
							
						</div>
			</div> 
<!-- 			<div title="讲授课程资料" closable="false" style="overflow:auto;padding:20px;" id="Tab2" >  -->
<!-- 					<div class="ftitle">讲授课程资料</div> -->
<!-- 						<div class="fitem"> -->
<!-- 							<label>课程性质:</label> -->
<!-- 							<input -->
<!-- 								class="easyui-combobox" id="subjectType" -->
<!-- 								data-options=" -->
<!--  				 					url:'Dictionary_queryDictionaryByType?type=subjectType', -->
<!--  									method:'get',   -->
<!--  				 					valueField:'dictionarycode',   -->
<!--  				 					textField:'dictionaryvalue',   -->
<!--  									panelHeight:'auto'">  -->
<!-- 						</div> -->
<!-- 						<div class="fitem"> -->
<!-- 							<label>课程编号:</label> <input name="subjectNO" -->
<!-- 								class="easyui-validatebox" required="true"> -->
<!-- 						</div> -->
<!-- 						<div class="fitem"> -->
<!-- 							<label>课程名称:</label> <input name="subjectName" -->
<!-- 								class="easyui-validatebox" required="true"> -->
<!-- 						</div> -->
<!-- 						<div class="fitem"> -->
<!-- 							<label>课程介绍:</label> -->
<!-- 							<textarea id="subjectText" rows=5 name="subjectText"  class="textarea easyui-validatebox"></textarea> -->
<!-- 						</div> -->
<!-- 						<div class="fitem"> -->
<!-- 							<label>课程资料:</label>  -->
<!-- 							<div id="uploaderQueue"> -->
<!-- 								<p>您的浏览器未安装 Flash, Silverlight, Gears, BrowserPlus 或者支持 HTML5 .</p> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 			</div>  -->
<!-- 			<div title="科研资料"  closable="false" style="overflow:auto;padding:20px;" id="Tab3">  -->
<!-- 				<div class="ftitle">立项</div> -->
<!-- 				<div class="fitem"> -->
<!-- 					<label>项目级别:</label> <input name="researchlevel" -->
<!-- 						class="easyui-validatebox" required="true"> -->
<!-- 				</div> -->
<!-- 				<div class="fitem"> -->
<!-- 					<label>项目名称:</label> <input name="researchname" -->
<!-- 						class="easyui-validatebox" required="true"> -->
<!-- 				</div> -->
<!-- 				<div class="fitem"> -->
<!-- 					<label>项目编号:</label> <input name="researchno" -->
<!-- 						class="easyui-validatebox" required="true"> -->
<!-- 				</div> -->
<!-- 				<div class="fitem"> -->
<!-- 					<label>项目资金:</label> <input name="researchmoney" -->
<!-- 						class="easyui-validatebox" > -->
<!-- 				</div> -->
<!-- 				<div class="fitem"> -->
<!-- 					<label>配套资金:</label> <input name="researchmatchmoney" -->
<!-- 						class="easyui-validatebox" > -->
<!-- 				</div> -->
<!-- 				<div class="fitem"> -->
<!-- 					<label>项目主持人:</label> <input name="researchhost" -->
<!-- 						class="easyui-validatebox" > -->
<!-- 				</div> -->
<!-- 				<div class="fitem"> -->
<!-- 					<label>项目参与者:</label> <input name="researchactor" -->
<!-- 						class="easyui-validatebox" > -->
<!-- 				</div> -->
<!-- 				<div class="fitem"> -->
<!-- 					<label>项目开始时间:</label>  -->
<!-- 					<input id="researchbegindate" name="researchbegindate" type="text" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  required="true" /> -->
<!-- 				</div> -->
<!-- 				<div class="fitem"> -->
<!-- 					<label>项目结束时间:</label>  -->
<!-- 					<input id="researchenddate" name="researchenddate" type="text" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  required="true" /> -->
<!-- 				</div> -->
<!-- 				<div class="fitem"> -->
<!-- 					<label>立项申请书电子版:</label>  -->
<!-- 					<div id="uploaderQueueProject"> -->
<!-- 						<p>您的浏览器未安装 Flash, Silverlight, Gears, BrowserPlus 或者支持 HTML5 .</p> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="ftitle">论文</div> -->
<!-- 				<div class="fitem"> -->
<!-- 					<label>论文名称:</label> <input name="papername" -->
<!-- 						class="easyui-validatebox" required="true"> -->
<!-- 				</div> -->
<!-- 				<div class="fitem"> -->
<!-- 					<label>作者排序:</label> <input name="paperauthor" -->
<!-- 						class="easyui-validatebox" required="true"> -->
<!-- 				</div> -->
<!-- 				<div class="fitem"> -->
<!-- 					<label>期刊名称:</label> <input name="papernotename" -->
<!-- 						class="easyui-validatebox" required="true"> -->
<!-- 				</div> -->
<!-- 				<div class="fitem"> -->
<!-- 					<label>刊登年份:</label> <input name="papernoteyear" -->
<!-- 						class="easyui-validatebox" required="true"> -->
<!-- 				</div> -->
<!-- 				<div class="fitem"> -->
<!-- 					<label>杂志期号:</label> <input name="papernoteno" -->
<!-- 						class="easyui-validatebox" required="true"> -->
<!-- 				</div> -->
<!-- 				<div class="fitem"> -->
<!-- 					<label>论文电子版:</label>  -->
<!-- 					<div id="uploaderQueuePaper"> -->
<!-- 						<p>您的浏览器未安装 Flash, Silverlight, Gears, BrowserPlus 或者支持 HTML5 .</p> -->
<!-- 					</div> -->
<!-- 					<input name="subjectNO" -->
<!-- 						class="easyui-validatebox" required="true"> -->
<!-- 				</div> -->
<!-- 				<div class="ftitle">著作</div> -->
<!-- 			</div> -->
			
<!-- 			<div title="获奖"  closable="false" style="overflow:auto;padding:20px;" id="Tab4">  -->
<!-- 				<div class="ftitle">获奖</div> -->
<!-- 				包括教学获奖、科研获奖、社会服务获奖，以及若干可自定义的备选项 -->
<!-- 			</div> -->
<!-- 		</div> -->
</form>
	</div>
	<div id="dictionarydlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-ok" onclick="saveTeacher()">保存</a> <a
			href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-cancel"
			onclick="javascript:$('#dictionarydlg').dialog('close')">取消</a>
	</div>
	<script>
	var url;
	function queryTearcher() {
		var teachernamequery = $('#teachername').val();
		var departmentquery = $('#department').combobox('getValue');
		$('#teacherdg').datagrid('load', {
			teachernamequery : teachernamequery,
			departmentquery : departmentquery
		});
	}
	function newTeacher() {
		$('#dictionarydlg').dialog('open').dialog('setTitle', '新增分类');
		$('#dictionaryfm').form('clear');
		url = 'Teacher_save';
	}
	function editTeacher() {
		var row = $('#teacherdg').datagrid('getSelected');
		if (row) {
			$('#dictionarydlg').dialog('open').dialog('setTitle',
					'编辑分类');
			$('#dictionaryfm').form('clear');
			$('#dictionaryfm').form('load', row);
			url = 'Dictionary_update?id=' + row.dictionaryid;
		}
	}
	function saveTeacher() {
// 	        if (uploader.files.length > 0) {
// 	var uploaderQueue = $('#uploaderQueue').pluploadQueue();
// 		alert(uploaderQueue.files.length);
// 			if (uploaderQueue.files.length > 0) {
	            // When all files are uploaded submit form
// 	            uploader.bind('StateChanged', function() {
// 	                if (uploader.files.length === (uploader.total.uploaded + uploader.total.failed)) {
	var valid = $('#dictionaryfm').form('validate');
		if(valid==true){
			$('#dictionaryfm').form('submit', {
    			url : url,
    			onSubmit : function() {
    				return $(this).form('validate');
    			},
    			success : function(result) {
    				if (result != "true") {
    					jAlert('系统错误，请联系管理员', '错误提示');
    				} else {
    					$('#dictionarydlg').dialog('close'); // close the dialog
    					$('#teacherdg').datagrid('reload'); // reload the user data
    				}
    			}
    		});
	//         }
	//     });
	//     uploaderQueue.start();
    	uploader.start();
		}else{
			alert("信息填写不完整");
		}
	            		
// 	        } else {
// 				alert('请先上传数据文件.');
// 			}
	}
	function destroyTeacher() {
		var row = $('#teacherdg').datagrid('getSelected');
		if (row) {
			$.messager.confirm('确认', '你想要删除这个分类吗?', function(r) {
				if (r) {
					$.post('Dictionary_delete', {
						id : row.dictionaryid
					}, function(result) {
						if (result = "true") {
							$('#teacherdg').datagrid('reload'); // reload the user data
						} else {
							jAlert('系统错误，请联系管理员', '错误提示');
						}
					}, 'json');
				}
			});
		}
	}
	
	
	var uploaderForPic = new plupload.Uploader({ //实例化一个plupload上传对象
		browse_button : 'browse',
		multi_selection: false,
 		url : 'File_uploadForPic',
 		file_data_name : 'fileData',
// 		url : '${request_path}/pupload/upload.php', //服务器端的上传页面地址
        flash_swf_url : '${js_path}/plupload/Moxie.swf', //swf文件，当需要使用swf方式进行上传时需要配置该参数
        silverlight_xap_url : '${js_path}/plupload/Moxie.xap', //silverlight文件，当需要使用silverlight方式进行上传时需要配置该参数
        unique_names : true,  // 上传的文件名是否唯一   
        multipart_params: {
        	  filetype: 'pic'
//         	  two: '2',
//         	  three: { //值还可以是一个字面量对象
//         	    a: '4',
//         	    b: '5'
//         	  },
//         	  four: ['6', '7', '8']  //也可以是一个数组
        	},
        filters: {
  		  mime_types : [ //只允许上传图片文件和rar压缩文件
  		    { title : "图片文件", extensions : "jpg,gif,png,bmp" }
  		  ],
  		  max_file_size : '1000kb', //最大只能上传100kb的文件
  		  prevent_duplicates : true //不允许队列中存在重复文件
        }
	});
	uploaderForPic.init(); //初始化
	
	//绑定文件添加进队列事件
	uploaderForPic.bind('FilesAdded',function(uploader,files){
		$.each(uploader.files, function (i, file) { 
		        if (uploader.files.length <= 1) { 
		            return; 
		        } 
		        uploader.removeFile(file); 
		    });
		for(var i = 0, len = files.length; i<len; i++){
			var file_name = files[i].name; //文件名
			var file_id = files[i].id;//ID,临时文件名
			//构造html来更新UI
// 			var html = '<li id="file-' + files[i].id +'"><p class="file-name">' + file_name + '</p><p class="progress"></p></li>';
			var html = '<li id="file-' + file_id +'" style="text-align: left;">';
				html += '<input type="hiddent" name="uploader_pic_tmpname" value="' + file_id + '" />';
				html += '<input type="hiddent" name="uploader_pic_name" value="' + file_name + '" /></li>';
			$(html).appendTo('#file-list');
			!function(i){
				previewImage(files[i],function(imgsrc){
					$('#file-'+files[i].id).append('<img src="'+ imgsrc +'" />');
				})
		    }(i);
		}
	});
	
	var uploaderForProject = new plupload.Uploader({ //实例化一个plupload上传对象
		browse_button : 'browse',
		multi_selection: false,
 		url : 'File_uploadForPic',
 		file_data_name : 'fileData',
// 		url : '${request_path}/pupload/upload.php', //服务器端的上传页面地址
        flash_swf_url : '${js_path}/plupload/Moxie.swf', //swf文件，当需要使用swf方式进行上传时需要配置该参数
        silverlight_xap_url : '${js_path}/plupload/Moxie.xap', //silverlight文件，当需要使用silverlight方式进行上传时需要配置该参数
        unique_names : true,  // 上传的文件名是否唯一   
        multipart_params: {
        	  filetype: 'pic'
//         	  two: '2',
//         	  three: { //值还可以是一个字面量对象
//         	    a: '4',
//         	    b: '5'
//         	  },
//         	  four: ['6', '7', '8']  //也可以是一个数组
        	}
//         filters: {
//   		  mime_types : [ //只允许上传图片文件和rar压缩文件
//   		    { title : "图片文件", extensions : "jpg,gif,png,bmp" }
//   		  ],
//   		  max_file_size : '1000kb', //最大只能上传100kb的文件
//   		  prevent_duplicates : true //不允许队列中存在重复文件
//         }
	});
	uploaderForProject.init(); //初始化
	
	//绑定文件添加进队列事件
	uploader.bind('FilesAdded',function(uploader,files){
		var count = $("#uploader_project_count").val();
		for(var i = 0, len = files.length; i<len; i++){
			var file_name = files[i].name; //文件名
			var file_id = files[i].id;//ID,临时文件名
			count++;
			//构造html来更新UI
// 			var html = '<li id="file-' + files[i].id +'"><p class="file-name">' + file_name + '</p><p class="progress"></p></li>';
			var html = '<li id="file-' + file_id +'" style="text-align: left;"><p class="file-name">' + file_name + '</p><p class="progress"></p>';
				html += '<input type="hiddent" name="uploader_project_' + count + '_tmpname" value="' + file_id + '" />';
				html += '<input type="hiddent" name="uploader_project_' + count + '_name" value="' + file_name + '" /></li>';
			$(html).appendTo('#file-list-project');
		}
		$("#uploader_project_count").val(count);
	});
	
// 	//绑定文件添加进队列事件
// 	uploader.bind('FilesAdded',function(uploader,files){
// 		for(var i = 0, len = files.length; i<len; i++){
// 			var file_name = files[i].name; //文件名
// 			//构造html来更新UI
// 			var html = '<li id="file-' + files[i].id +'"><p class="file-name">' + file_name + '</p><p class="progress"></p></li>';
// 			$(html).appendTo('#file-list');
// 			!function(i){
// 				previewImage(files[i],function(imgsrc){
// 					$('#file-'+files[i].id).append('<img src="'+ imgsrc +'" />');
// 				})
// 		    }(i);
// 		}
// 	});
	
	
	//绑定文件上传进度事件
// 	uploader.bind('UploadProgress',function(uploader,file){
// 		$('#file-'+file.id+' .progress').css('width',file.percent + '%');//控制进度条
// 	});
	
	//绑定文件上传进度事件
	uploader.bind('FilesRemoved',function(uploader,file){
		alert("删除");
		$('#file-list').html("");
	});

	//上传按钮
	$('#upload-btn').click(function(){
		uploader.start(); //开始上传
	});
	
	//停止上传按钮
	$('#stopupload-btn').click(function(){
		uploader.stop(); //停止上传，停止后无法开始
		uploader.refresh();
	});

	//清空按钮
	$('#clear-btn').click(function(){
		uploader.splice(0,10); ////删除文件按钮
	});
	
	function cancle(fileid){
		alert(fileid);
//  		uploader.removeFile(filename); ////删除文件按钮
// 		uploader.removeFile(uploader.getFile(fileid));
	};
	function cancle2(fileid){
		alert(fileid);
// 		uploader.removeFile(filename); ////删除文件按钮
// 		uploader.removeFile(uploader.getFile(fileid));
	};
	
	//删除文件按钮
	$('#clear-btn').click(function(){
		uploader.splice(1,10); ////删除文件按钮
	});
// 	$(function() {
// 		var uploaderQueue = $("#uploaderQueue").pluploadQueue({
// 		runtimes : 'gears,flash,silverlight,browserplus,html5,html4',
// 		url : 'File_uploadForOther',
// 		max_file_size : '30mb',
// 		unique_names : true,
// 		chunk_size: '2mb',
// 		// Specify what files to browse for
// // 		filters : [
// // 			{title : "xls, xlsx文档", extensions : "xls,xlsx"}
// // 		],
// 		// Flash settings
// 		flash_swf_url : '${js_path}/plupload/plupload.flash.swf',
// 		// Silverlight settings
// 		silverlight_xap_url : '${js_path}/plupload/plupload.silverlight.xap'
// 		});
		
// 		$("#uploaderQueueProject").pluploadQueue({
// 			runtimes : 'gears,flash,silverlight,browserplus,html5,html4',
// 			url : 'File_uploadForOther',
// 			max_file_size : '10mb',
// 			unique_names : true,
// 			chunk_size: '2mb',
// 			// Specify what files to browse for
// //	 		filters : [
// //	 			{title : "xls, xlsx文档", extensions : "xls,xlsx"}
// //	 		],
// 			// Flash settings
// 			flash_swf_url : '${js_path}/plupload/plupload.flash.swf',
// 			// Silverlight settings
// 			silverlight_xap_url : '${js_path}/plupload/plupload.silverlight.xap'
// 			});
		
// 		$("#uploaderQueuePaper").pluploadQueue({
// 			runtimes : 'gears,flash,silverlight,browserplus,html5,html4',
// 			url : 'File_uploadForOther',
// 			max_file_size : '10mb',
// 			unique_names : true,
// 			chunk_size: '2mb',
// 			// Specify what files to browse for
// //	 		filters : [
// //	 			{title : "xls, xlsx文档", extensions : "xls,xlsx"}
// //	 		],
// 			// Flash settings
// 			flash_swf_url : '${js_path}/plupload/plupload.flash.swf',
// 			// Silverlight settings
// 			silverlight_xap_url : '${js_path}/plupload/plupload.silverlight.xap'
// 			});
		
// 	});
	
	</script>
	<style type="text/css">
#dictionaryfm {
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