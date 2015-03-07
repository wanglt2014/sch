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
<title>${sitename}--后台管理系统--用户管理</title>
   
</head>
<body>
		<div id="newstb" style="padding: 5px; height: auto;width:auto;">
			<div>
				创建起始日期: <input id="startdatacreatenew" class="easyui-datebox" style="width: 80px">
				创建结束日期: <input id="enddatacreatenew" class="easyui-datebox" style="width: 80px">
				文章类型: <select id="articletype" class="easyui-combobox" panelHeight="auto"
					style="width: 100px">
					<option value="">全部</option>
					<option value="regulation">教学规章制度</option>
					<option value="notice">教务教学通知</option>
				</select>
				作者:<input type="text"  id="author">
				标题:<input type="text"  id="articletitle">
				 <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-search" onclick="querynews()">搜索</a>
			</div>
		</div>
    <table id="newdg" title="文章列表" class="easyui-datagrid" style="width:auto;height:616px"
            url="Article_query"
            toolbar="#articletoolbar" pagination="true"
            rownumbers="true" fitColumns="true" singleSelect="true" pageSize="20">
        <thead>
            <tr>
                <th field="author" width="30">作者</th>
                <th field="createdate" width="50" >创建日期</th>
                <th field="articletype" width="30" formatter="formatnewstype">类型</th>
                <th field="articletitle" width="100">标题</th>
                <th field="articlesummary" width="250">概要</th>
                <th field="updatedate" width="50" >更新日期</th>
                <th field="articleid" width="30" formatter="formatpreview">预览</th>
            </tr>
        </thead>
    </table>
    <div id="articletoolbar">
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="insertArticle()">新增</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editArticle()">编辑</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyArticle()">删除</a>
    </div>
    
    <div id="newdlg" class="easyui-dialog" style="width:860px;height:auto;padding:10px 20px"
            closed="true" buttons="#newdlg-buttons">
        <div class="ftitle">文章详细信息</div>
        <form id="newsfm" method="post" novalidate>
            <div class="fitem">
                <label>类型:</label>
                <input type="radio" name="articletype"  value="regulation" checked="checked" />教学规章制度
                <input type="radio" name="articletype" value="notice"  />教务教学通知
            </div>
            <div class="fitem">
                <label>标题</label>
                <input id="articletitle" name="articletitle" class="easyui-validatebox" required="true" size="50px;">
            </div>
            <div class="fitem">
                <label>作者:</label>
                <input name="author" class="easyui-validatebox" required="true"/>
            </div>
            <div class="fitem">
                <label>概要:</label>
                <textarea name="articlesummary"  class="easyui-validatebox"  required="true" style="width: 500px;height: 100px;"/>
            </div>
            <div class="fitem">
                <label>时间:</label>
                <input name="createdate" type="text" class="easyui-datebox" id="createdate" required="true" />
            </div>
            <div  style="display: none;">
           		 <textarea name="content" id="content" class="easyui-validatebox"  required="true" style="width: 500px;height: 100px;"/>
            </div>
            <div class="fitem" id="uploadFileDIV">
                <label>上传文件:</label>
            	<input id="uploader_count" name="uploader_count" value="0" style="display: none;"/>
				<ul id="file-list" style="text-align: left;margin:0px 0px 0px 30px; ">
				</ul>
				<div class="btn-wraper">
					<input type="button" value="选择文件..." id="browse" />
					<input type="button" value="清空" id="clear-btn" />
					<p class="tip2">注意：只能上传10M以内的文件</p>
				</div>
			</div>
<!-- 			<div class="fitem" id="queryFileDIV"> -->
<!--                 <label>文件:</label> -->
<!--             	<s:if test="fileshowpath!='' and fileshowpath!=null"> -->
<!-- 					<a href="" id="filePath" title="" ></a> -->
<!-- 				</s:if> -->
<!-- 			</div> -->
             <div class="fitem" style="">
                <label>文章内容:</label>
                <br/>
                <!--style给定宽度可以影响编辑器的最终宽度-->
				<script type="text/plain" id="myEditornew" name="myEditornew" style="width:750px;height:240px;">
    				<p>这里我可以写一些输入提示</p>
				</script>
            </div>
          
        </form>
        
    </div>
    <div id="newdlg-buttons">
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveNews()">保存</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#newdlg').dialog('close')">取消</a>
    </div>
    
    <script type="text/javascript">
        var url;
        var allBox = $(":checkbox");
        allBox.click(function () {
            allBox.removeAttr("checked");
            $(this).attr("checked", "checked");
        });
        var um = UM.getEditor('myEditornew');
        function formatpreview(value,rowData,rowIndex) {
        	var type =rowData.articletype;
        	var actionUrl = "";
        	if("notice" == type){
        		actionUrl = "Article_teachDetail";
        	}else if("regulation" == type){
        		actionUrl = "Article_regulationDetail";
    		}
    		var s ='<a href="'+actionUrl+'?id='+rowData.articleid+'" class="easyui-linkbutton" target="_blank"">预览</a>';
    		return s;
   	    }
        
        function formatnewstype(value,rowData,rowIndex) {
        	var s="";
    		if(value=="notice"){
    			s ="教务教学通知";
    		}else if(value=="regulation"){
    			s ="教学规章制度";
    		}
    		return s;
   	    }
        
        function querynews(){
        	var startdatacreatenew = $('#startdatacreatenew').datebox('getValue');
        	var enddatacreatenew = $('#enddatacreatenew').datebox('getValue');
        	var newtype =  $('#articletype').combobox('getValue');
        	var newauthor = $('#author').val();
        	var newtitle = $('#articletitle').val();
        	$('#newdg').datagrid('load', {
        		startdatacreatenew:startdatacreatenew,
        		enddatacreatenew:enddatacreatenew,
        		newtype:newtype,
        		newauthor:newauthor,
        		newtitle:newtitle
        	});
        }
        function insertArticle(){
            $('#newdlg').dialog('open').dialog('setTitle','发表文章');
            $('#newsfm').form('clear');
            var str = result.articletype;
            $("[value='" + str + "']").attr("checked", true);
            UM.getEditor('myEditornew').setContent('', false);
            url = 'Article_save';
        }
        function editArticle(){
            var row = $('#newdg').datagrid('getSelected');
            if (row){
                $('#newdlg').dialog('open').dialog('setTitle','编辑文章');
                $('#newsfm').form('clear');
                $('#newsfm').form('load',row);
//                 $('#createdate').datebox('setValue', '2015-3-15');
// 				 $('#filePath').text(row.);
				$('#uploadFileDIV').hide();

                UM.getEditor('myEditornew').setContent(row.content, false);
                url = 'Article_update?id='+row.articleid;
            }
        }
        function saveNews(){
        	$("#content").val(UM.getEditor('myEditornew').getContent());
        	var valid = $('#newsfm').form('validate');
    		if(valid==true){
            $('#newsfm').form('submit',{
                url: url,
                onSubmit: function(){
                    return $(this).form('validate');
                },
                success: function(result){
                    if (result!="true"){
                    	uploader.refresh();
                    	jAlert('系统错误，请联系管理员','错误提示');
                    } else {
                    	uploader.splice(0,10); 
                    	$('#file-list').html("");
                        $('#newdlg').dialog('close');        // close the dialog
                        $('#newdg').datagrid('reload');    // reload the user data
                    }
                }
            });
            if(url.indexOf("save") > 0){
            	uploader.start();
            }
            
    		}else{
    			alert("信息填写不完整");
    		}
        }
        function destroyArticle(){
            var row = $('#newdg').datagrid('getSelected');
            if (row){
                $.messager.confirm('确认','是否要删除?',function(r){
                    if (r){
                        $.post('Article_deleteArticle',{id:row.articleid},function(result){
                            if (result="true"){
                                $('#newdg').datagrid('reload');    // reload the user data
                            } else {
                            	jAlert('系统错误，请联系管理员','错误提示');
                            }
                        },'json');
                    }
                });
            }
        }
        
        
      //上传控件##########################################
    	var uploader = new plupload.Uploader({ //实例化一个plupload上传对象
    		browse_button : 'browse',
    		multi_selection: false,
     		url : 'File_uploadForArticle',
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
    	uploader.init(); //初始化
    	
    	//绑定文件上传删除事件
    	uploader.bind('FilesRemoved',function(uploader,file){
//     		alert("删除");
    		$('#file-list').html("");
    	});
    	
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
    			var file_id = files[i].id;//ID,临时文件名
    			//构造html来更新UI
    			var html = '<li id="file-' + files[i].id +'"><p class="file-name">' + file_name + '</p><p class="progress"></p>';
//     			var html = '<li id="file-' + file_id +'" style="text-align: left;">';
    				html += '<input type="hidden" name="uploader_tmpname" value="' + file_id + '" />';
    				html += '<input type="hidden" name="uploader_name" value="' + file_name + '" /></li>';
    			$(html).appendTo('#file-list');
    		}
    	});
    </script>
    <style type="text/css">
        #newsfm{
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