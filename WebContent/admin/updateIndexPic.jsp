<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
	String request_path = request.getContextPath();
	String js_path = request_path + "/js";
	String first_path = request_path + "/uploadFile/firstpic";
	request.setAttribute("request_path", request_path);
	request.setAttribute("js_path", js_path);
	request.setAttribute("first_path", first_path);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${sitename}--后台管理系统--图片修改</title>
</head>
<body>
<div style="{width:auto;float:left;margin-left: auto;margin-right: auto;">
	<form id="firstpicfm" method="post" novalidate>
	<p class="tip2">注意：只能上传1M以内，格式为jpg,gif,png,bmp的照片，宽:500，高:252</p>
		<div class="fitem" style="float: left;">
			<div class="wraper">
			<label>图片1:</label><input type="button" value="选择文件..." id="browse1" />
				<div class="btn-wraper"></div>
				<img src="${first_path}/indexpic1.jpg" id="indexpic1" width="500" height="252"/>
			</div>
		</div>
		<div class="fitem" style="float: left;clear: right;">
			<div class="wraper">
			<label>图片2:</label><input type="button" value="选择文件..." id="browse2" />
				<div class="btn-wraper"></div>
				<img src="${first_path}/indexpic2.jpg" id="indexpic2" width="500" height="252"/>
			</div>
		</div>
		<div class="fitem" style="float: left;">
			<div class="wraper">
			<label>图片3:</label><input type="button" value="选择文件..." id="browse3" />
				<div class="btn-wraper"></div>
				<img src="${first_path}/indexpic3.jpg" id="indexpic3" width="500" height="252"/>
			</div>
		</div>
		<div class="fitem" style="float: left;clear: right;">
			<div class="wraper">
			<label>图片4:</label><input type="button" value="选择文件..." id="browse4" />
				<div class="btn-wraper"></div>
				<img src="${first_path}/indexpic4.jpg" id="indexpic4" width="500" height="252"/>
			</div>
		</div>
	</form>
	<a href="javascript:void(0)" class="easyui-linkbutton"
		iconCls="icon-ok" onclick="savefirstpic()">保存</a>
</div>
	<script>
	var url;
	createUploaderPic();
	createUploaderPic2();
	createUploaderPic3();
	createUploaderPic4();
	function savefirstpic() {
		var picLen = uploaderForPic.files.length;
		var picLen2 = uploaderForPic2.files.length;
		var picLen3 = uploaderForPic3.files.length;
		var picLen4 = uploaderForPic4.files.length;
			$('#firstpicfm').form('submit', {
    			url :'Exchange_UpdatePic',
    			onSubmit : function() {
    				return $(this).form('validate');
    			},
    			success : function(result) {
    				if (result != "true") {
    					jAlert('系统错误，请联系管理员', '错误提示');
    				}else{
    					jAlert('保存成功', '提示');
    				}
    			}
    		});
			if (picLen > 0) {
				uploaderForPic.start();
			}
			if (picLen2 > 0) {
				uploaderForPic2.start();
			}
			if (picLen3 > 0) {
				uploaderForPic3.start();
			}
			if (picLen4 > 0) {
				uploaderForPic4.start();
			}
		}
	
	//销毁所有上传控件
	function deleteAllUploader(){
		uploaderForPic.splice(0,2);
		uploaderForPic2.splice(0,2);
		uploaderForPic3.splice(0,2);
		uploaderForPic4.splice(0,2);
	}
	
	//销毁所有上传控件
	function destroyAllUploader(){
		uploaderForPic.destroy();
		uploaderForPic2.destroy();
		uploaderForPic3.destroy();
		uploaderForPic4.destroy();
	}
	
	var uploaderForPic;
	function createUploaderPic(){
		//照片 上传控件##########################################
		uploaderForPic = new plupload.Uploader({ //实例化一个plupload上传对象
			browse_button : 'browse1',
			multi_selection: false,
	 		url : 'File_uploadForFirstPic',
	 		file_data_name : 'fileData',
	        flash_swf_url : '${js_path}/plupload/Moxie.swf', //swf文件，当需要使用swf方式进行上传时需要配置该参数
	        silverlight_xap_url : '${js_path}/plupload/Moxie.xap', //silverlight文件，当需要使用silverlight方式进行上传时需要配置该参数
	        unique_names : true,  // 上传的文件名是否唯一   
	        multipart_params: {
	        	  filetype: "indexpic1"
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
			        uploaderForPic.removeFile(file); 
			    });
			for(var i = 0, len = files.length; i<len; i++){
				var file_name = files[i].name; //文件名
				var file_id = files[i].id;//ID,临时文件名
				!function(i){
					previewImage(files[i],function(imgsrc){
						$('#indexpic1').attr("src",imgsrc);
					})
			    }(i);
			}
		});
	}
	
	var uploaderForPic2;
	function createUploaderPic2(){
		//照片 上传控件##########################################
		uploaderForPic2 = new plupload.Uploader({ //实例化一个plupload上传对象
			browse_button : 'browse2',
			multi_selection: false,
	 		url : 'File_uploadForFirstPic',
	 		file_data_name : 'fileData',
	        flash_swf_url : '${js_path}/plupload/Moxie.swf', //swf文件，当需要使用swf方式进行上传时需要配置该参数
	        silverlight_xap_url : '${js_path}/plupload/Moxie.xap', //silverlight文件，当需要使用silverlight方式进行上传时需要配置该参数
	        unique_names : true,  // 上传的文件名是否唯一   
	        multipart_params: {
	        	  filetype: "indexpic2"
	        	},
	        filters: {
	  		  mime_types : [ //只允许上传图片文件和rar压缩文件
	  		    { title : "图片文件", extensions : "jpg,gif,png,bmp" }
	  		  ],
	  		  max_file_size : '1000kb', //最大只能上传100kb的文件
	  		  prevent_duplicates : true //不允许队列中存在重复文件
	        }
		});
		uploaderForPic2.init(); //初始化
		//绑定文件添加进队列事件
		uploaderForPic2.bind('FilesAdded',function(uploader,files){
			$.each(uploader.files, function (i, file) { 
				if (uploader.files.length <= 1) { 
			            return; 
			        } 
			        uploaderForPic2.removeFile(file); 
			    });
			for(var i = 0, len = files.length; i<len; i++){
				var file_name = files[i].name; //文件名
				var file_id = files[i].id;//ID,临时文件名
				!function(i){
					previewImage(files[i],function(imgsrc){
						$('#indexpic2').attr("src",imgsrc);
					})
			    }(i);
			}
		});
	}
	
	var uploaderForPic3;
	function createUploaderPic3(){
		//照片 上传控件##########################################
		uploaderForPic3 = new plupload.Uploader({ //实例化一个plupload上传对象
			browse_button : 'browse3',
			multi_selection: false,
	 		url : 'File_uploadForFirstPic',
	 		file_data_name : 'fileData',
	        flash_swf_url : '${js_path}/plupload/Moxie.swf', //swf文件，当需要使用swf方式进行上传时需要配置该参数
	        silverlight_xap_url : '${js_path}/plupload/Moxie.xap', //silverlight文件，当需要使用silverlight方式进行上传时需要配置该参数
	        unique_names : true,  // 上传的文件名是否唯一   
	        multipart_params: {
	        	  filetype: "indexpic3"
	        	},
	        filters: {
	  		  mime_types : [ //只允许上传图片文件和rar压缩文件
	  		    { title : "图片文件", extensions : "jpg,gif,png,bmp" }
	  		  ],
	  		  max_file_size : '1000kb', //最大只能上传100kb的文件
	  		  prevent_duplicates : true //不允许队列中存在重复文件
	        }
		});
		uploaderForPic3.init(); //初始化
		//绑定文件添加进队列事件
		uploaderForPic3.bind('FilesAdded',function(uploader,files){
			$.each(uploader.files, function (i, file) { 
				if (uploader.files.length <= 1) { 
			            return; 
			        } 
			        uploaderForPic3.removeFile(file); 
			    });
			for(var i = 0, len = files.length; i<len; i++){
				var file_name = files[i].name; //文件名
				var file_id = files[i].id;//ID,临时文件名
				!function(i){
					previewImage(files[i],function(imgsrc){
						$('#indexpic3').attr("src",imgsrc);
					})
			    }(i);
			}
		});
	}
	var uploaderForPic4;
	function createUploaderPic4(){
		//照片 上传控件##########################################
		uploaderForPic4 = new plupload.Uploader({ //实例化一个plupload上传对象
			browse_button : 'browse4',
			multi_selection: false,
	 		url : 'File_uploadForFirstPic',
	 		file_data_name : 'fileData',
	        flash_swf_url : '${js_path}/plupload/Moxie.swf', //swf文件，当需要使用swf方式进行上传时需要配置该参数
	        silverlight_xap_url : '${js_path}/plupload/Moxie.xap', //silverlight文件，当需要使用silverlight方式进行上传时需要配置该参数
	        unique_names : true,  // 上传的文件名是否唯一   
	        multipart_params: {
	        	  filetype: "indexpic4"
	        	},
	        filters: {
	  		  mime_types : [ //只允许上传图片文件和rar压缩文件
	  		    { title : "图片文件", extensions : "jpg,gif,png,bmp" }
	  		  ],
	  		  max_file_size : '1000kb', //最大只能上传100kb的文件
	  		  prevent_duplicates : true //不允许队列中存在重复文件
	        }
		});
		uploaderForPic4.init(); //初始化
		//绑定文件添加进队列事件
		uploaderForPic4.bind('FilesAdded',function(uploader,files){
			$.each(uploader.files, function (i, file) { 
				if (uploader.files.length <= 1) { 
			            return; 
			        } 
			        uploaderForPic4.removeFile(file); 
			    });
			for(var i = 0, len = files.length; i<len; i++){
				var file_name = files[i].name; //文件名
				var file_id = files[i].id;//ID,临时文件名
				!function(i){
					previewImage(files[i],function(imgsrc){
						$('#indexpic4').attr("src",imgsrc);
					})
			    }(i);
			}
		});
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