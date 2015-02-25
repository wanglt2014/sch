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
		style="width: 800px; height: 680px; padding: 10px 20px" closed="true"
		buttons="#dictionarydlg-buttons">
<!-- 		<div id="right_tab" class="easyui-tabs"  -->
<!--  			data-options="fit:true,border:false,plain:true" id="tabs"> -->
<!-- 		<div title="html" style="padding:10px" id="html"> -->
<!-- 		<div class="kk2"><a onclick="nextBQ();">下一步</a></div> -->
<!-- 		<button onclick="nextBQ();">下一步</button> -->
<!-- 		<p>This is html</p> -->
<!-- 		</div> -->
<!-- 		<div title="css" style="padding:10px" id="css"> -->
<!-- 		<div class="kk1"><a onclick="purHZ();">上一步</a></div> -->
<!-- 		<div class="kk2"><a onclick="nextHZ();">下一步</a></div> -->
<!-- 		<p>This is css</p> -->
<!-- 		</div> -->
<!-- 		<div title="js" style="padding:10px" id="js"> -->
<!-- 		<div class="kk1"><a onclick="purGJ();">上一步</a></div> -->
<!-- 		<div class="kk2"><a onclick="nextSubmit();">确定</a></div> -->
<!-- 		<p>This is js</p> -->
<!-- 		</div> -->
<!-- 		</div> -->
		
		<form id="dictionaryfm" method="post" novalidate>
		<div id="teacher_tab" class="easyui-tabs" style="height: 616px"
			data-options="fit:true,border:false,plain:true">
			<div title="Tab1" style="padding:20px;" id="Tab1" > 
					<div class="ftitle">基本信息</div>
					
						<div class="fitem">
							<label>姓名:</label> 
							<input name="teachername" class="easyui-validatebox" required="true">
						</div>
						<div class="fitem">
							<label>性别</label> 
							<select id="sex" class="easyui-combobox" panelHeight="auto"
								style="width: 100px">
								<option value="0">男</option>
								<option value="1">女</option>
							</select>
						</div>
						<div class="fitem">
							<label>出生年月:</label> 
							<input name="birthday" type="text" class="easyui-datebox" id="birthday" required="true" />
						</div>
						<div class="fitem">
							<label>所在专业:</label>
							<input
								class="easyui-combobox" id="department"
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
								class="easyui-combobox" id="department"
								data-options="
 				 					url:'Dictionary_queryDictionaryByType?type=department',
 									method:'get',  
 				 					valueField:'dictionarycode',  
 				 					textField:'dictionaryvalue',  
 									panelHeight:'auto'"> 
						</div>
						<div class="fitem">
							<label>职务:</label>
							<input
								class="easyui-combobox" id="department"
								data-options="
			 						url:'Dictionary_queryDictionaryByType?type=department', 
									method:'get',
 				 					valueField:'dictionarycode',
				 					textField:'dictionaryvalue',
 									panelHeight:'auto'">
						</div>
						<div class="fitem">
							<label>硕/博导:</label>
							<select id="sex" class="easyui-combobox" panelHeight="auto"
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
			<div title="Tab2" closable="false" style="overflow:auto;padding:20px;" id="Tab2" > 
			<div class="ftitle">字典信息</div>
<!-- 						<div class="fitem"> -->
<!-- 							<label>编码:</label> <input name="dictionarycode" -->
<!-- 								class="easyui-validatebox" required="true"> -->
<!-- 						</div> -->
<!-- 						<div class="fitem"> -->
<!-- 							<label>值</label> <input name="dictionaryvalue" -->
<!-- 								class="easyui-validatebox" required="true"> -->
<!-- 						</div> -->
<!-- 						<div class="fitem"> -->
<!-- 							<label>分类:</label> <input name="dictionarytype" -->
<!-- 								class="easyui-validatebox" required="true"> -->
<!-- 						</div> -->
<!-- 						<div class="fitem"> -->
<!-- 							<label>备注:</label> -->
<!-- 							 <input name="dictionaryremark" -->
<!-- 								class="easyui-validatebox" required="true"> -->
<!-- 						</div> -->
<!-- 					<div class="kk1"><a onclick="purT1();">上一步</a></div> -->
<!-- 					<div class="kk2"><a onclick="nextT3();">下一步</a></div> -->
			</div> 
			<div title="Tab3" iconCls="icon-reload" closable="false" style="padding:20px;" id="Tab3"> 
				tab3 
				<div class="kk1"><a onclick="purT2();">上一步</a></div>
				<div class="kk2"><a onclick="nextSubmit();">确定</a></div>
			</div>
		</div>
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
	        if (uploader.files.length > 0) {
	            // When all files are uploaded submit form
	            uploader.bind('StateChanged', function() {
	                if (uploader.files.length === (uploader.total.uploaded + uploader.total.failed)) {
	            		$('#dictionaryfm').form('submit', {
	            			url : url,
	            			onSubmit : function() {
	            				alert($(this).form('validate'));
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
	                }
	            });
	            uploader.start();
	        } else {
				alert('请先上传数据文件.');
			}
		
//			$('#teacher_tab').tabs('disableTab', 1);
//			$('#teacher_tab').tabs('select', 'Tab2');
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
	
// 	$(function() {
// 		$("#uploader").pluploadQueue({
// 	 		browse_button : 'browse',
// 	 		multi_selection: false,
// 	  		url : 'File_upload',//服务器端的上传页面地址
// 	         flash_swf_url : '${js_path}/plupload/Moxie.swf', //swf文件，当需要使用swf方式进行上传时需要配置该参数
// 	         silverlight_xap_url : '${js_path}/plupload/Moxie.xap', //silverlight文件，当需要使用silverlight方式进行上传时需要配置该参数
// 	         filters: {
// 	   		  mime_types : [ //只允许上传图片文件和rar压缩文件
// 	   		    { title : "图片文件", extensions : "jpg,gif,png,bmp" }
// 	   		  ],
// 	   		  max_file_size : '100kb', //最大只能上传100kb的文件
// 	   		  prevent_duplicates : true //不允许队列中存在重复文件
// 	         }
// 		});
// 		$('form').submit(function(e) {
// 	        var uploader = $('#uploader').pluploadQueue();
// 	        if (uploader.files.length > 0) {
// 	            // When all files are uploaded submit form
// 	            uploader.bind('StateChanged', function() {
// 	                if (uploader.files.length === (uploader.total.uploaded + uploader.total.failed)) {
// 	                    $('form')[0].submit();
// 	                }
// 	            });
// 	            uploader.start();
// 	        } else {
// 				alert('请先上传数据文件.');
// 			}
// 	        return false;
//     	});
// 	});
	
	var uploader = new plupload.Uploader({ //实例化一个plupload上传对象
		browse_button : 'browse',
		multi_selection: false,
 		url : 'File_uploadForPic',
 		file_data_name : 'fileData',
// 		url : '${request_path}/pupload/upload.php', //服务器端的上传页面地址
        flash_swf_url : '${js_path}/plupload/Moxie.swf', //swf文件，当需要使用swf方式进行上传时需要配置该参数
        silverlight_xap_url : '${js_path}/plupload/Moxie.xap', //silverlight文件，当需要使用silverlight方式进行上传时需要配置该参数
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
	uploader.init(); //初始化

	//绑定文件添加进队列事件
	uploader.bind('FilesAdded',function(uploader,files){
		 	$.each(uploader.files, function (i, file) { 
		        if (uploader.files.length <= 1) { 
		            return; 
		        } 
		        uploader.removeFile(file); 

		    });
		for(var i = 0, len = files.length; i<len; i++){
			var file_name = files[i].name; //文件名
			//构造html来更新UI
// 			var html = '<li id="file-' + files[i].id +'"><p class="file-name">' + file_name + '</p><p class="progress"></p></li>';
			var html = '<li id="file-' + files[i].id +'" style="text-align: left;"></li>';
			$(html).appendTo('#file-list');
			!function(i){
				previewImage(files[i],function(imgsrc){
					$('#file-'+files[i].id).append('<img src="'+ imgsrc +'" />');
				})
		    }(i);
		}
	});
	
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