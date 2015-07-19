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
<!-- 	<div id="firstpicdlg" class="easyui-dialog" -->
<!-- 		style="width: 800px; height: 720px; padding: 60px 20px;overflow: visible;" closed="true" -->
<!-- 		buttons="#firstpicdlg-buttons"> -->
 <img src="${first_path}/indexpic1.jpg" width="500" height="252"/>
 <img src="${first_path}/indexpic2.jpg" width="500" height="252"/>
 <img src="${first_path}/indexpic3.jpg" width="500" height="252"/>
 <img src="${first_path}/indexpic4.jpg" width="500" height="252"/>
		<form id="firstpicfm" method="post" novalidate>
			<div class="fitem">
				<div class="wraper">
				<label>图片1:</label>
					<div class="btn-wraper">
						<input type="button" value="选择文件..." id="browse1" />
						<input type="button" value="清空" id="clear-btn" />
						<p class="tip2">注意：只能上传1M以内，格式为jpg,gif,png,bmp的照片</p></div>
					<div id="file-list" style="text-align: left;margin:0px 0px 0px 60px; "></div>
					<img style="WIDTH:500px; HEIGHT:252px; BORDER:0;margin-left: 60px;" id="img_photo" src="" alt=""/>
				</div>
			</div>
			<div class="fitem">
				<div class="wraper">
				<label>图片2:</label>
					<div class="btn-wraper">
						<input type="button" value="选择文件..." id="browse2" />
						<input type="button" value="清空" id="clear-btn" />
						<p class="tip2">注意：只能上传1M以内，格式为jpg,gif,png,bmp的照片</p></div>
					<div id="file-list2" style="text-align: left;margin:0px 0px 0px 60px; "></div>
				</div>
			</div>
			
		</form>
	<script>
	var url;
	function newfirstpic() {
		createUploaderPic();
		createUploaderPic2();
		$('#firstpicdlg').dialog('open').dialog('setTitle', '');
		$('#firstpicfm').form('clear');
		url = 'Exchange_UpdatePic';
	}
	
	function savefirstpic() {
		var picLen = uploaderForPic.files.length;
			$('#firstpicfm').form('submit', {
    			url : url,
    			onSubmit : function() {
    				return $(this).form('validate');
    			},
    			success : function(result) {
    				if (result != "true") {
    					jAlert('系统错误，请联系管理员', '错误提示');
    				}
    			}
    		});
			if (picLen > 0) {
				uploaderForPic.start();
			}
		}
	
	//销毁所有上传控件
	function deleteAllUploader(){
		uploaderForPic.splice(0,10);
	}
	
	//销毁所有上传控件
	function destroyAllUploader(){
		uploaderForPic.destroy();
	}
	
	var uploaderForPic;
	function createUploaderPic(){
		var picno = $('#picNo').val();
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
		//绑定文件上传删除事件
		uploaderForPic.bind('FilesRemoved',function(uploader,file){
			$('#file-list').html("");
		});
		
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
				//构造html来更新UI
				var	html = '<span id="file-' + file_id +'" style="text-align: left;">';
					html += '<input type="hiddent" style="display: none;" name="uploader_pic_tmpname" value="' + file_id + '" />';
					html += '<input type="hiddent" style="display: none;" name="uploader_pic_name" value="' + file_name + '" /></span>';
				$(html).appendTo('#file-list');
				!function(i){
					previewImage(files[i],function(imgsrc){
						$('#file-'+files[i].id).append('<img src="'+ imgsrc +'" />');
					})
			    }(i);
			    $('#img_photo').hide();
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
		//绑定文件上传删除事件
		uploaderForPic2.bind('FilesRemoved',function(uploader,file){
			$('#file-list2').html("");
		});
		
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
				//构造html来更新UI
				var	html = '<span id="file-' + file_id +'" style="text-align: left;">';
					html += '<input type="hiddent" style="display: none;" name="uploader_pic_tmpname" value="' + file_id + '" />';
					html += '<input type="hiddent" style="display: none;" name="uploader_pic_name" value="' + file_name + '" /></span>';
				$(html).appendTo('#file-list2');
				!function(i){
					previewImage(files[i],function(imgsrc){
						$('#file-'+files[i].id).append('<img src="'+ imgsrc +'" />');
					})
			    }(i);
// 			    $('#img_photo').hide();
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