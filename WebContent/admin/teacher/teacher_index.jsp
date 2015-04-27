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
<title>${sitename}--后台管理系统--师资队伍</title>
</head>
<body>
<style type="text/css">
.span_column{ 
			text-align:left;
			display:-moz-inline-box;
			display:inline-block;
			width:300px; }
.span_column_sm{ 
			text-align:left;
			display:-moz-inline-box;
			display:inline-block;
			width:180px; }

</style>
<div id="teachertb" style="padding: 5px; height: auto">
		<div>
			教师姓名:<input type="text" id="teachernameQuery"> 
			所在专业:<input
				class="easyui-combobox" id="departmentQuery"
				data-options="
 					url:'Dictionary_queryDictionaryByType?type=department',
					method:'get', 
 					valueField:'dictionarycode', 
 					textField:'dictionaryvalue', 
					panelHeight:'auto',editable:false"> 
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
				<th field="teachername" width="30">姓名</th>
				<th field="departmentname" width="50">所在专业</th>
				<th field="titlename" width="30" >职称</th>
				<th field="job" width="30"  formatter="formatJobtype">职务</th>
				<th field="tutortype" width="20" formatter="formatTutortype">硕/博导</th>
				<th field="sex" width="20" formatter="formatSextype">性别</th>
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
	<div id="teacherdlg" class="easyui-dialog"
		style="width: 800px; height: 720px; padding: 60px 20px;overflow: visible;" closed="true"
		buttons="#teacherdlg-buttons">
		<form id="teacherfm" method="post" novalidate>
		<div id="teacher_tab" class="easyui-tabs" style="height: 616px"
			data-options="fit:true,border:false,plain:true" >
			<div title="基本信息" style="padding:50px;" id="Tab1"> 
					<div class="ftitle">基本信息</div>
					
						<div class="fitem">
							<label>姓名:</label> 
							<input id="teachername" name="teachername" class="easyui-validatebox" required="true" maxlength="20">
						</div>
						<div class="fitem">
							<label>性别</label> 
							<select id="sex" name="sex" class="easyui-combobox" panelHeight="auto" editable="false"
								style="width: 100px">
								<option value="0" >男</option>
								<option value="1" >女</option>
							</select>
						</div>
						<div class="fitem">
							<label>出生年月:</label> 
							<input id="birthday" name="birthday" type="text" data-options="formatter:ww4,parser:w4" class="easyui-datebox" id="birthday" required="true" />
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
 									panelHeight:'auto',editable:false"> 
 							<input id="departmentname" name="departmentname" type="hidden" />
						</div>
						<div class="fitem">
							<label>职称:</label>
							<input
								class="easyui-combobox" id="title" name="title" editable="false"
								data-options="
 				 					url:'Dictionary_queryDictionaryByType?type=title',
 									method:'get',  
 				 					valueField:'dictionarycode',  
 				 					textField:'dictionaryvalue',  
 									panelHeight:'auto'"> 
 							<input id="titlename" name="titlename" type="hidden" />
						</div>
						<div class="fitem">
							<label>职务:</label>
							<input
								class="easyui-combobox" id="job" name="job"
								data-options="
			 						url:'Dictionary_queryDictionaryByType?type=job', 
									method:'get',
 				 					valueField:'dictionarycode',
				 					textField:'dictionaryvalue',
 									panelHeight:'auto',editable:false">
 							<input id="jobname" name="jobname" type="hidden" />
						</div>
						<div class="fitem">
							<label>硕/博导:</label>
							<select id="tutortype" name="tutortype" class="easyui-combobox" panelHeight="auto" editable="false"
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
<!-- 								<input id="uploader_count" name="uploader_count" value="0" style="display: none;"/> -->
<!-- 								<ul id="file-list" style="text-align: left;margin:0px 0px 0px 30px; "> -->
<!-- 								</ul> -->
								<div class="btn-wraper">
									<input type="button" value="选择文件..." id="browse" />
<!-- 									<input type="button" value="开始上传" id="upload-btn" /> -->
									<input type="button" value="清空" id="clear-btn" />
									<p class="tip2">注意：只能上传1M以内，格式为jpg,gif,png,bmp的照片</p>
								</div>
								<div id="file-list" style="text-align: left;margin:0px 0px 0px 60px; "></div>
								<img style="WIDTH:200px; HEIGHT:190px; BORDER:0;margin-left: 60px;" id="img_photo" src="" alt=""/>
								
							</div>
						</div>
			</div> 
			<div title="讲授课程资料" closable="false" style="overflow:auto;padding:20px;" id="Tab2" > 
					<div class="ftitle">讲授课程资料</div>
					<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="addSubject()">新增课程信息</a><br><br>
					<div id="subjectTempleate" style="display: none;">
					<div id="subjectRow0" class="fitem">
						<span class="span_column_sm" ><label style="width: 55px">课程编号:</label>
						<input id="subjectno0" name="subjectno0" class="easyui-validatebox" style="width: 110px"  maxlength="20">
						</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<span class="span_column_sm" ><label style="width: 55px">课程名称:</label>
						<input id="subjectname0" name="subjectname0" class="easyui-validatebox" style="width: 110px" maxlength="20">
						</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<span class="span_column_sm" ><label style="width: 55px">课程性质:</label>
						<select class="easyui-combobox" id="subjecttype0" name="subjecttype0"
								data-options="
   				 					url:'Dictionary_queryDictionaryByType?type=subjectType',  
   									method:'get',    
   				 					valueField:'dictionarycode',    
   				 					textField:'dictionaryvalue'"
							style="width: 110px" panelHeight="auto" editable="false"/>
   							<input id="subjecttypename0" name="subjecttypename0" type="hidden" />   
						</span><br><br>
						<span class="span_column" style="width: 600px"><label style="width: 55px">课程介绍:</label>
						<textarea id="subjecttext0" rows=5 name="subjecttext0"  class="textarea easyui-validatebox" maxlength="500" style="width: 505px"></textarea>
						</span><br><br>
						<span class="span_column" style="width:100%;" id="outlineObj0"> <label>教学大纲:</label> 
							<input type="button" value="选择文件..." id="browseOutline0" />
							<input type="button" value="清空" id="outline-clear-btn0" />&nbsp;&nbsp;<span class="tip2">(注意：只能上传20M以内的文件)</span>
						</span>
						<span id="file-list-outline0"></span>
	 						<ul id="file-list-outline" style="text-align: left;margin:0px 0px 0px 30px; "> 
	 						</ul> 
						<span class="span_column" style="width:100%;" id="scheduleObj0"> <label>教学进度表:</label> 
							<input type="button" value="选择文件..." id="browseSchedule0" />
							<input type="button" value="清空" id="schedule-clear-btn0" />&nbsp;&nbsp;<span class="tip2">(注意：只能上传20M以内的文件)</span>
						</span>
						<span id="file-list-schedule0"></span>
	 						<ul id="file-list-schedule" style="text-align: left;margin:0px 0px 0px 30px; "> 
	 						</ul> 
						<span class="span_column" style="width:100%;" id="subjectObj0"> <label>课程资料:</label> 
							<input type="button" value="选择文件..." id="browseSubject0" />
							<input type="button" value="清空" id="subject-clear-btn0" />&nbsp;&nbsp;<span class="tip2">(注意：只能上传20M以内的文件)</span>
						</span>
						<span id="file-list-subject0"></span>
	 						<ul id="file-list-subject" style="text-align: left;margin:0px 0px 0px 30px; "> 
	 						</ul> 
						<span id="deleteSubjectDiv0"></span>
						<hr  style="border-bottom:1px dashed;"><br>
						</div>
					</div>
					<div id="subjectDiv" ></div>
			</div> 
			<div title="立项"  closable="false" style="overflow:auto;padding:20px;" id="Tab3"> 
				<div class="ftitle">立项</div>
				<div class="fitem">
					<label>项目级别:</label> <input name="researchlevel"
						class="easyui-validatebox" maxlength="20">
				</div>
				<div class="fitem">
					<label>项目名称:</label> <input name="researchname"
						class="easyui-validatebox" required="true" maxlength="20">
				</div>
				<div class="fitem">
					<label>项目编号:</label> <input name="researchno" maxlength="20"
						class="easyui-validatebox" >
				</div>
				<div class="fitem">
					<label>项目资金:</label> <input name="researchmoney"
						class="easyui-numberbox" max="2000000000" >
				</div>
				<div class="fitem">
					<label>配套资金:</label> <input name="researchmatchmoney"
						class="easyui-numberbox" max="2000000000" >
				</div>
				<div class="fitem">
					<label>项目主持人:</label> <input name="researchhost"
						class="easyui-validatebox" maxlength="20">
				</div>
				<div class="fitem">
					<label>项目参与者:</label> <input name="researchactor"
						class="easyui-validatebox" maxlength="40">
				</div>
				<div class="fitem">
					<label>项目开始时间:</label> 
					<input id="researchbegindate" name="researchbegindate" type="text" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
				</div>
				<div class="fitem">
					<label>项目结束时间:</label> 
					<input id="researchenddate" name="researchenddate" type="text" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
				</div>
				<div class="fitem" id="projectObj">
					<div class="wraper">
					<label>立项申请书电子版:</label> 
<!-- 					<input id="uploader_project_count" name="uploader_project_count" value="0" style="display: none;"/> -->
					<div class="btn-wraper">
						<input type="button" value="选择文件..." id="browseProject" />
						<input type="button" value="清空" id="project-clear-btn" />
						<p class="tip2">注意：只能上传20M以内的文件</p>
					</div>
					<ul id="file-list-project" style="text-align: left;margin:0px 0px 0px 30px; ">
					</ul>
					</div>
				</div>
<!-- 				<div class="ftitle">著作</div> -->
				</div>
				<div title="论文"  closable="false" style="overflow:auto;padding:20px;" id="Tab4"> 
					<div class="ftitle">论文</div>
					<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="addPaper()">新增论文信息</a><br><br>
					<div id="paperTempleate" style="display: none;">
					<div id="paperRow0" class="fitem">
						<span class="span_column" ><label>论文名称:</label> <input id="papername0" name="papername0"
								class="easyui-validatebox"  maxlength="20"></span>
						<span class="span_column"><label>作者排序:</label> <input id="paperauthor0" name="paperauthor0" maxlength="20"
								class="easyui-validatebox" ></span><br><br>
						<span class="span_column" ><label>期刊名称:</label> <input id="papernotename0" name="papernotename0" maxlength="20"
								class="easyui-validatebox" ></span>
						<span class="span_column" ><label>刊登年份:</label> <input id="papernoteyear0" name="papernoteyear0"
								class="easyui-numberbox"  maxlength="4"></span><br><br>
						<span class="span_column" ><label>杂志期号:</label> <input id="papernoteno0" name="papernoteno0" maxlength="20"
								class="easyui-validatebox" ></span><br><br>
								<!-- 动态增加上传控件 -->
						<span class="span_column" style="width:100%;" id="paperObj0"> <label>论文电子版:</label> 
<!-- 							<a href="javascript:void(0)" class="easyui-linkbutton"  id="browsePaper0">选择文件...</a> -->
<!-- 							<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" id="paper-clear-btn0">清空</a> -->
							<input type="button" value="选择文件..." id="browsePaper0" />
							<input type="button" value="清空" id="paper-clear-btn0" />&nbsp;&nbsp;<span class="tip2">(注意：只能上传20M以内的文件)</span>
						</span>
						<span id="file-list-paper0"></span>
	 						<ul id="file-list-paper" style="text-align: left;margin:0px 0px 0px 30px; "> 
	 						</ul> 
						<span id="deletePaperDiv0"></span>
						<hr  style="border-bottom:1px dashed;"><br>
					</div>
					</div>
					<div id="paperDiv" ></div>
<!-- 					<div class="fitem" id="paperObj"> -->
<!-- 						<div class="wraper"> -->
<!-- 						<label>论文电子版:</label>  -->
<!-- 						<input id="uploader_paper_count" name="uploader_paper_count" value="0" style="display: none;"/> -->
<!-- 						<div class="btn-wraper"> -->
<!-- 							<a href="javascript:void(0)" class="easyui-linkbutton"  id="browsePaper">选择文件...</a> -->
<%-- 							<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" id="paper-clear-btn">清空</a>&nbsp;&nbsp;<span class="tip2">(注意：只能上传20M以内的文件)</span> --%>
<!-- 						</div> -->
<!-- 						<ul id="file-list-paper" style="text-align: left;margin:0px 0px 0px 30px; "></ul> -->
<!-- 						</div> -->
<!-- 					</div> -->
				</div>
				<div title="获奖"  closable="false" style="overflow:auto;padding:20px;" id="Tab5"> 
					<div class="ftitle">获奖</div>
					<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="addPrize()">新增获奖信息</a><br><br>
					<div id="templeate" style="display: none;">
					<div id="row0" class="fitem">
						<label>奖项性质:</label>
						<select id="prizetype0" name="prizetype0" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 100px" >
							<option value="teach">教学获奖</option>
							<option value="science">科研获奖</option>
							<option value="social" >社会服务获奖</option>
						</select>
   					<br><br>
					<label>获奖说明:</label>
   					<textarea id="prizeinfo0" rows=3 style="width: 400px;" name="prizeinfo0"  class="textarea easyui-validatebox" maxlength="1000"></textarea>
					<span id="deletePrizeDiv0"></span>
<!-- 					<input id="prizeId0" name="prizeId0" /> -->
					<hr  style="border-bottom:1px dashed;"><br>
					</div>
					
					</div>
					<div id="prizeDiv" ></div>
				</div>
			</div>
</form>
	</div>
	<div id="teacherdlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-ok" onclick="saveTeacher()">保存</a> <a
			href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-cancel"
			onclick="javascript:$('#teacherdlg').dialog('close')">取消</a>
	</div>
	<script>
	var prizeNum = 0;
	var paperNum = 0;
	var subjectNum = 0;
	var temp = $("#templeate").html();//保存渲染前的模板
	var paperTemp = $("#paperTempleate").html();
	var subjectTemp = $("#subjectTempleate").html();
	//动态添加获奖信息
	function addPrize() {
		prizeNum++;
		$("#deletePrizeBtn").remove();
		var html = temp.replace(new RegExp("prizetype0","gm"),'prizetype'+prizeNum).replace(new RegExp("prizeinfo0","gm"),'prizeinfo'+prizeNum).replace(new RegExp("deletePrizeDiv0","gm"),'deletePrizeDiv'+prizeNum).replace(new RegExp("row0","gm"),'row'+prizeNum);
		$("#prizeDiv").append(html);
		$("#prizeDiv select").combobox({panelHeight:"auto"});//渲染
		$("#deletePrizeDiv"+prizeNum).append('<a id="deletePrizeBtn" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="removePrize('+prizeNum+')">删除获奖信息</a>');
		
	}
	function removePrize(infoIndex) {
		$("#row"+infoIndex).remove();
		if(parseInt(infoIndex)>1){
			$("#deletePrizeDiv"+(parseInt(infoIndex)-1)).append('<a id="deletePrizeBtn" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="removePrize('+(parseInt(infoIndex)-1)+')">删除获奖信息</a>');
		}
		prizeNum--;
	}
	//动态添加获奖信息
	function addPaper() {
		paperNum++;
		$("#deletePaperBtn").remove();
		var html = paperTemp.replace(new RegExp("papername0","gm"),'papername'+paperNum)
		.replace(new RegExp("paperauthor0","gm"),'paperauthor'+paperNum)
		.replace(new RegExp("papernotename0","gm"),'papernotename'+paperNum)
		.replace(new RegExp("papernoteyear0","gm"),'papernoteyear'+paperNum)
		.replace(new RegExp("papernoteno0","gm"),'papernoteno'+paperNum)
		.replace(new RegExp("deletePaperDiv0","gm"),'deletePaperDiv'+paperNum)
		.replace(new RegExp("paperRow0","gm"),'paperRow'+paperNum)
		.replace(new RegExp("browsePaper0","gm"),'browsePaper'+paperNum)
		.replace(new RegExp("paperObj0","gm"),'paperObj'+paperNum)
		.replace(new RegExp("file-list-paper0","gm"),'file-list-paper'+paperNum)
		.replace(new RegExp("paper-clear-btn0","gm"),'paper-clear-btn'+paperNum);
		$("#paperDiv").append(html);
		$("#paperDiv select").combobox({panelHeight:"auto"});//渲染
		$("#deletePaperDiv"+paperNum).append('<a id="deletePaperBtn" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="removePaper('+paperNum+')">删除论文信息</a>');
		//动态增加上传控件
		window["browsePaperTemp"+paperNum] = new plupload.Uploader({ //实例化一个plupload上传对象
			browse_button : 'browsePaper'+paperNum,
			multi_selection: false,
	 		url : 'File_uploadForTeacher',
	 		file_data_name : 'fileData',
//	 		url : '${request_path}/pupload/upload.php', //服务器端的上传页面地址
	        flash_swf_url : '${js_path}/plupload/Moxie.swf', //swf文件，当需要使用swf方式进行上传时需要配置该参数
	        silverlight_xap_url : '${js_path}/plupload/Moxie.xap', //silverlight文件，当需要使用silverlight方式进行上传时需要配置该参数
	        unique_names : true,  // 上传的文件名是否唯一   
	        multipart_params: {
	        	  filetype: 'paper'
	        	},
	        filters: {
	  		  max_file_size : '20mb', //最大只能上传100kb的文件
	  		  prevent_duplicates : true //不允许队列中存在重复文件
	        },
	        para:paperNum
		});
		window["browsePaperTemp"+paperNum].init();
		//绑定文件添加进队列事件
		window["browsePaperTemp"+paperNum].bind('FilesAdded',function(uploader,files){
// 			alert(JSON.stringify(uploader));
			$.each(uploader.files, function (i, file) { 
			if (uploader.files.length <= 1) { 
		            return; 
		        } 
			window["browsePaperTemp"+uploader.settings.para].removeFile(file); 
		    });
			for(var i = 0, len = files.length; i<len; i++){
				var file_name = files[i].name; //文件名
				var file_id = files[i].id;//ID,临时文件名
				var para = uploader.settings.para;
				//构造html来更新UI
				var html = '<span id="file-' + file_id +'" style="text-align: left;"><p class="file-name">' + file_name + '</p><p class="progress"></p>';
					html += '<input type="hiddent" style="display: none;" name="uploader_paper_tmpname_'+para+'" value="' + file_id + '" />';
					html += '<input type="hiddent" style="display: none;" name="uploader_paper_name_'+para+'" value="' + file_name + '" /></span>';
					$(html).appendTo('#file-list-paper'+para);
			}
		});
		//绑定文件上传进度事件
		window["browsePaperTemp"+paperNum].bind('UploadProgress',function(uploader,file){
			$('#file-'+file.id+' .progress').css('width',file.percent + '%');//控制进度条
		});
		//绑定文件上传删除事件
		window["browsePaperTemp"+paperNum].bind('FilesRemoved',function(uploader,file){
			$('#file-list-paper'+uploader.settings.para).html("");
		});
		//清空按钮
		$('#paper-clear-btn'+paperNum).click(function(event){
			event = event ? event : window.event; //判断触发对象，兼容FF。
			var obj = event.srcElement ? event.srcElement : event.target; 
			var id = obj.id;
			window["browsePaperTemp"+id.substr(id.length-1,1)].splice(0,10); ////删除文件按钮
		});
	}
	
	function removePaper(infoIndex) {
		$("#paperRow"+infoIndex).remove();
		if(parseInt(infoIndex)>1){
			$("#deletePaperDiv"+(parseInt(infoIndex)-1)).append('<a id="deletePaperBtn" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="removePaper('+(parseInt(infoIndex)-1)+')">删除论文信息</a>');
		}
		paperNum--;
	}
	var subjecttypeInit;
	//动态添加课程信息
	function addSubject() {
		subjectNum++;
		$("#deleteSubjectBtn").remove();
		var html = subjectTemp.replace(new RegExp("subjecttype0","gm"),'subjecttype'+subjectNum)
		.replace(new RegExp("subjecttypename0","gm"),'subjecttypename'+subjectNum)
		.replace(new RegExp("subjectno0","gm"),'subjectno'+subjectNum)
		.replace(new RegExp("subjectname0","gm"),'subjectname'+subjectNum)
		.replace(new RegExp("subjecttext0","gm"),'subjecttext'+subjectNum)
		.replace(new RegExp("deleteSubjectDiv0","gm"),'deleteSubjectDiv'+subjectNum)
		.replace(new RegExp("subjectRow0","gm"),'subjectRow'+subjectNum)
		.replace(new RegExp("browseOutline0","gm"),'browseOutline'+subjectNum)
		.replace(new RegExp("outlineObj0","gm"),'outlineObj'+subjectNum)
		.replace(new RegExp("file-list-outline0","gm"),'file-list-outline'+subjectNum)
		.replace(new RegExp("outline-clear-btn0","gm"),'outline-clear-btn'+subjectNum)
		.replace(new RegExp("browseSchedule0","gm"),'browseSchedule'+subjectNum)
		.replace(new RegExp("scheduleObj0","gm"),'scheduleObj'+subjectNum)
		.replace(new RegExp("file-list-schedule0","gm"),'file-list-schedule'+subjectNum)
		.replace(new RegExp("schedule-clear-btn0","gm"),'schedule-clear-btn'+subjectNum)
		.replace(new RegExp("browseSubject0","gm"),'browseSubject'+subjectNum)
		.replace(new RegExp("subjectObj0","gm"),'subjectObj'+subjectNum)
		.replace(new RegExp("file-list-subject0","gm"),'file-list-subject'+subjectNum)
		.replace(new RegExp("subject-clear-btn0","gm"),'subject-clear-btn'+subjectNum);
		$("#subjectDiv").append(html);
		$("#subjecttype"+subjectNum).combobox({panelHeight:"auto"});//渲染
		$("#deleteSubjectDiv"+subjectNum).append('<a id="deleteSubjectBtn" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="removeSubject('+subjectNum+')">删除课程信息</a>');
		//动态增加上传控件
		createSubjectUpload();
// 		setTimeout("var data = $('#subjecttype'+subjectNum).combobox('getData');$('#subjecttype'+subjectNum).combobox('select',data[0].dictionarycode);",300);   
		$('#subjecttype'+subjectNum).combobox('select',subjecttypeInit);//
	}
	
	function createSubjectUpload() {
		//教学大纲 上传控件##########################################
		window["browseOutlineTemp"+subjectNum]  = new plupload.Uploader({ //实例化一个plupload上传对象
			browse_button : 'browseOutline'+subjectNum,
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
	  		  max_file_size : '20mb', //最大只能上传20mb的文件
	  		  prevent_duplicates : true //不允许队列中存在重复文件
	        },
	        para:subjectNum
		});
		window["browseOutlineTemp"+subjectNum].init();
		window["browseOutlineTemp"+subjectNum].bind('Error',function(uploader,errObject){
			if(errObject.code=='-600'){
				alert("上传文件过大");
			}
		});
		//绑定文件添加进队列事件
		window["browseOutlineTemp"+subjectNum].bind('FilesAdded',function(uploader,files){
			$.each(uploader.files, function (i, file) { 
				if (uploader.files.length <= 1) { 
			            return; 
			        } 
				window["browseOutlineTemp"+uploader.settings.para].removeFile(file); 
			    });
			for(var i = 0, len = files.length; i<len; i++){
				var file_name = files[i].name; //文件名
				var file_id = files[i].id;//ID,临时文件名
				var para = uploader.settings.para;
				//构造html来更新UI
				var html = '<li id="file-' + file_id +'" style="text-align: left;"><p class="file-name">' + file_name + '</p><p class="progress"></p>';
					html += '<input type="hiddent" style="display: none;" name="uploader_outline_tmpname_'+para+'" value="' + file_id + '" />';
					html += '<input type="hiddent" style="display: none;" name="uploader_outline_name_'+para+'" value="' + file_name + '" /></li>';
				$(html).appendTo('#file-list-outline'+para);
			}
		});
		//绑定文件上传进度事件
		window["browseOutlineTemp"+subjectNum].bind('UploadProgress',function(uploader,file){
			$('#file-'+file.id+' .progress').css('width',file.percent + '%');//控制进度条
		});
		
		//绑定文件上传删除事件
		window["browseOutlineTemp"+subjectNum].bind('FilesRemoved',function(uploader,file){
			$('#file-list-outline'+uploader.settings.para).html("");
		});
		//清空按钮
		$('#outline-clear-btn'+subjectNum).click(function(){
			event = event ? event : window.event; //判断触发对象，兼容FF。
			var obj = event.srcElement ? event.srcElement : event.target; 
			var id = obj.id;
			window["browseOutlineTemp"+id.substr(id.length-1,1)].splice(0,10); ////删除文件按钮
		});
		
		//教学进度表 上传控件##########################################
		window["browseScheduleTemp"+subjectNum] = new plupload.Uploader({ //实例化一个plupload上传对象
			browse_button : 'browseSchedule'+subjectNum,
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
	  		  max_file_size : '20mb', //最大只能上传100kb的文件
	  		  prevent_duplicates : true //不允许队列中存在重复文件
	        },
	        para:subjectNum
		});
		window["browseScheduleTemp"+subjectNum].init();
		window["browseScheduleTemp"+subjectNum].bind('Error',function(uploader,errObject){
			if(errObject.code=='-600'){
				alert("上传文件过大");
			}
		});
		//绑定文件添加进队列事件
		window["browseScheduleTemp"+subjectNum].bind('FilesAdded',function(uploader,files){
			$.each(uploader.files, function (i, file) { 
				if (uploader.files.length <= 1) { 
			            return; 
			        } 
				window["browseScheduleTemp"+uploader.settings.para].removeFile(file); 
			    });
			for(var i = 0, len = files.length; i<len; i++){
				var file_name = files[i].name; //文件名
				var file_id = files[i].id;//ID,临时文件名
				var para = uploader.settings.para;
				//构造html来更新UI
				var html = '<li id="file-' + file_id +'" style="text-align: left;"><p class="file-name">' + file_name + '</p><p class="progress"></p>';
					html += '<input type="hiddent" style="display: none;" name="uploader_schedule_tmpname_'+para+'" value="' + file_id + '" />';
					html += '<input type="hiddent" style="display: none;" name="uploader_schedule_name_'+para+'" value="' + file_name + '" /></li>';
				$(html).appendTo('#file-list-schedule'+para);
			}
		});
		//绑定文件上传进度事件
		window["browseScheduleTemp"+subjectNum].bind('UploadProgress',function(uploader,file){
			$('#file-'+file.id+' .progress').css('width',file.percent + '%');//控制进度条
		});
		//绑定文件上传删除事件
		window["browseScheduleTemp"+subjectNum].bind('FilesRemoved',function(uploader,file){
			$('#file-list-schedule'+uploader.settings.para).html("");
		});
		//清空按钮
		$('#schedule-clear-btn'+subjectNum).click(function(){
			event = event ? event : window.event; //判断触发对象，兼容FF。
			var obj = event.srcElement ? event.srcElement : event.target; 
			var id = obj.id;
			window["browseScheduleTemp"+id.substr(id.length-1,1)].splice(0,10); ////删除文件按钮
		});
		
		//课程资料 上传控件##########################################
		window["browseSubjectTemp"+subjectNum] = new plupload.Uploader({ //实例化一个plupload上传对象
			browse_button : 'browseSubject'+subjectNum,
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
	  		  max_file_size : '20mb', //最大只能上传100kb的文件
	  		  prevent_duplicates : true //不允许队列中存在重复文件
	        },
	        para:subjectNum
		});
		window["browseSubjectTemp"+subjectNum].init();
		window["browseSubjectTemp"+subjectNum].bind('Error',function(uploader,errObject){
			if(errObject.code=='-600'){
				alert("上传文件过大");
			}
		});
		//绑定文件添加进队列事件
		window["browseSubjectTemp"+subjectNum].bind('FilesAdded',function(uploader,files){
			$.each(uploader.files, function (i, file) {
				if (uploader.files.length <= 1) { 
			            return; 
			        } 
				window["browseSubjectTemp"+uploader.settings.para].removeFile(file); 
			    });
			for(var i = 0, len = files.length; i<len; i++){
				var file_name = files[i].name; //文件名
				var file_id = files[i].id;//ID,临时文件名
				var para = uploader.settings.para;
				//构造html来更新UI
				var html = '<li id="file-' + file_id +'" style="text-align: left;"><p class="file-name">' + file_name + '</p><p class="progress"></p>';
					html += '<input type="hiddent" style="display: none;" name="uploader_subject_tmpname_'+para+'" value="' + file_id + '" />';
					html += '<input type="hiddent" style="display: none;" name="uploader_subject_name_'+para+'" value="' + file_name + '" /></li>';
				$(html).appendTo('#file-list-subject'+para);
			}
		});
		//绑定文件上传进度事件
		window["browseSubjectTemp"+subjectNum].bind('UploadProgress',function(uploader,file){
			$('#file-'+file.id+' .progress').css('width',file.percent + '%');//控制进度条
		});
		//绑定文件上传删除事件
		window["browseSubjectTemp"+subjectNum].bind('FilesRemoved',function(uploader,file){
			$('#file-list-subject'+uploader.settings.para).html("");
		});
		//清空按钮
		$('#subject-clear-btn'+subjectNum).click(function(){
			event = event ? event : window.event; //判断触发对象，兼容FF。
			var obj = event.srcElement ? event.srcElement : event.target; 
			var id = obj.id;
			window["browseSubjectTemp"+id.substr(id.length-1,1)].splice(0,10); ////删除文件按钮
		});
	}
	
	function removeSubject(infoIndex) {
		$("#subjectRow"+infoIndex).remove();
		if(parseInt(infoIndex)>1){
			$("#deleteSubjectDiv"+(parseInt(infoIndex)-1)).append('<a id="deleteSubjectBtn" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="removeSubject('+(parseInt(infoIndex)-1)+')">删除课程信息</a>');
		}
		subjectNum--;
	}
	
	var url;
	function queryTearcher() {
		var teachernamequery = $('#teachernameQuery').val();
		var departmentquery = $('#departmentQuery').combobox('getValue');
		$('#teacherdg').datagrid('load', {
			teachernamequery : teachernamequery,
			departmentquery : departmentquery
		});
	}
	function newTeacher() {
		$('#teacher_tab').tabs('select',0);
// 		alert(JSON.stringify(uploaderForPic));
// 		alert(uploaderForOutline);
// 		alert(uploaderForOutline==undefined);
		if(uploaderForPic==null || uploaderForPic==undefined){
			createUploaderPic();
			createProject();
		}else{
			uploaderForPic.destroy();
			uploaderForProject.destroy();
			createUploaderPic();
			createProject();
			deleteAllUploader();
		}
// 		alert(JSON.stringify(uploaderForPic));
		showAllUploader();
		prizeNum = 0;
		paperNum = 0;
		subjectNum = 0;
		$("#prizeDiv").html("");
		$("#paperDiv").html("");
		$("#subjectDiv").html("");
		$('#teacherdlg').dialog('open').dialog('setTitle', '新增教师');
		$('#teacherfm').form('clear');
		url = 'Teacher_save?temp=0';
		$('#sex').combobox('select',0);
		$('#tutortype').combobox('select',1);
		$('#prizetype0').combobox('select','teach');
		$('#img_photo').hide();
		
		var data = $('#department').combobox('getData');
		 $("#department ").combobox('select',data[0].dictionarycode);
		 var data = $('#title').combobox('getData');
		 $("#title ").combobox('select',data[0].dictionarycode);
		 var data = $('#job').combobox('getData');
		 $("#job ").combobox('select',data[0].dictionarycode);
		 var data = $('#subjecttype0').combobox('getData');
		 subjecttypeInit = data[0].dictionarycode;
// 		 $("#subjecttype0").combobox('select',data[0].dictionarycode);
// 		 $('#file-list').html("");
// 		 uploaderForPic.destroy();
		
	}
	function editTeacher() {
		var row = $('#teacherdg').datagrid('getSelected');
		if (row) {
			if(uploaderForPic==null || uploaderForPic==undefined){
				createUploaderPic();
				createProject();
			}else{
				uploaderForPic.destroy();
				uploaderForProject.destroy();
				createUploaderPic();
				createProject();
				deleteAllUploader();
			}
			prizeNum = 0;
			paperNum = 0;
			subjectNum = 0;
			$("#prizeDiv").html("");
			$("#paperDiv").html("");
			$("#subjectDiv").html("");
			$('#teacherdlg').dialog('open').dialog('setTitle',
					'编辑教师');
			$('#teacherfm').form('clear');
			$('#teacherfm').form('load', row);
			$('#img_photo').show();
			$('#img_photo').attr('src',row.iimageurll);
			var subjectid,paperid,researchid;
			var prizeList,paperList,subjectList;
// 			alert(JSON.stringify(row));
			//从后台获取数据
			$.ajax({
				type : 'post',
				url : 'Teacher_queryTeacherOtherInfo?teacherId='+row.id,
				async:false,
				success : function(datas) {
					var json = eval('(' + datas + ')'); 
//  					alert(JSON.stringify(json.subject.subjectid)+"!!!"+JSON.stringify(json.tPaper.paperid)+"@@@@"+JSON.stringify(json.tResearch.researchid));
//  					subjectid = json.subject.subjectid;
//  					paperid = json.tPaper.paperid;
//  					researchid=json.tResearch.researchid;
// 					alert(JSON.stringify(json));
					paperList = json.tPaper;
 					prizeList = json.tPrize;
 					subjectList = json.subject;
//  				alert(JSON.stringify(datas.subject));
//  					$('#teacherfm').form('load', json.subject[0]);
// 					$('#teacherfm').form('load', json.tPaper[0]);
					$('#teacherfm').form('load', json.tResearch[0]);
					
					for(var i = 0; i < subjectList.length; i++){
						addSubject();
						$('#subjectno'+(parseInt(i)+1)).val(subjectList[i].subjectno);
						$('#subjectname'+(parseInt(i)+1)).val(subjectList[i].subjectname);
						$('#subjecttype'+(parseInt(i)+1)).combobox('select',subjectList[i].subjecttype);
						$('#subjecttypename'+(parseInt(i)+1)).val(subjectList[i].subjecttypename);
						$('#subjecttext'+(parseInt(i)+1)).val(subjectList[i].subjecttext);
					}
					
					for(var i = 0; i < paperList.length; i++){
						addPaper();
						$('#papername'+(parseInt(i)+1)).val(paperList[i].papername);
						$('#paperauthor'+(parseInt(i)+1)).val(paperList[i].paperauthor);
						$('#papernotename'+(parseInt(i)+1)).val(paperList[i].papernotename);
						$('#papernoteyear'+(parseInt(i)+1)).val(paperList[i].papernoteyear);
						$('#papernoteno'+(parseInt(i)+1)).val(paperList[i].papernoteno);
					}
					
					for(var i = 0; i < prizeList.length; i++){
// 						alert(prizeList[i].prizetype);
						addPrize();
						$('#prizetype'+(parseInt(i)+1)).combobox('select',prizeList[i].prizetype);
						$('#prizeinfo'+(parseInt(i)+1)).val(prizeList[i].prizeinfo);
// 						$('#prizeId'+(parseInt(i)+1)).val(prizeList[i].prizeid);
// 						alert(prizeList[i].prizeid);
					}
// 					for(var tmp in prizeList){   
// 						alert(tmp.prizetype);
// 					}
				},
				error : function() {
					jAlert('系统错误，请联系管理员','错误提示');
				}
			});
			dispalyAllUploader(paperList.length,subjectList.length);
// 			alert(subjectid+"##"+paperid+"$$"+researchid);
// 			url = 'Teacher_update?id=' + row.id+'&subjectid='+subjectid+'&paperid='+paperid+'&researchid='+researchid;
			url = 'Teacher_update?id=' + row.id;
		}
	}
	
	function saveTeacher() {
	var picLen = uploaderForPic.files.length;
// 	var outlineLen = uploaderForOutline.files.length;
// 	var scheduleLen = uploaderForSchedule.files.length;
// 	var subjectLen = uploaderForSubject.files.length;
	var probjectLen = uploaderForProject.files.length;
// 	var paperLen = uploaderForPaper.files.length;
//  	alert(picLen+"&&"+outlineLen+"&&"+scheduleLen+"&&+"+subjectLen+"&&"+probjectLen+"&&"+paperLen);
	var valid = $('#teacherfm').form('validate');
		if(valid==true){
			$('#departmentname').val($('#department').combobox('getText'));
			$('#titlename').val($('#title').combobox('getText'));
			$('#jobname').val($('#job').combobox('getText'));
			for(var i = 1; i<=subjectNum; i++){
			$('#subjecttypename'+i).val($('#subjecttype'+i).combobox('getText'));
			}
			$('#teacherfm').form('submit', {
    			url : url+"&prizeNum="+prizeNum+"&paperNum="+paperNum+"&subjectNum="+subjectNum,
    			onSubmit : function() {
    				return $(this).form('validate');
    			},
    			success : function(result) {
    				if (result != "true") {
    					jAlert('系统错误，请联系管理员', '错误提示');
    				} else {
    					deleteAllUploader();
//     					destroyAllUploader();
    					$('#teacherdlg').dialog('close'); // close the dialog
    					$('#teacherdg').datagrid('reload'); // reload the user data
    				}
    			}
    		});
		if (picLen > 0) {
			uploaderForPic.start();
		}
// 		if (outlineLen > 0) {
// 			uploaderForOutline.start();
// 		}
// 		if (scheduleLen > 0) {
// 			uploaderForSchedule.start();
// 		}
// 		if (subjectLen > 0) {
// 			uploaderForSubject.start();
// 		}
		if (probjectLen > 0) {
			uploaderForProject.start();
		}
		for(var i = 1; i<=subjectNum; i++){
			window["browseOutlineTemp"+i].start();
			window["browseScheduleTemp"+i].start();
			window["browseSubjectTemp"+i].start();
		}
// 		if (paperLen > 0) {
			//动态增加上传控件
		for(var i = 1; i<=paperNum; i++){
			window["browsePaperTemp"+i].start();
		}
// 			uploaderForPaper.start();
// 		}
    	
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
			$.messager.confirm('确认', '是否要删除?', function(r) {
				if (r) {
					$.post('Teacher_delete', {
						id : row.id
					}, function(result) {
// 						alert(result);
						if (result = "true") {
							$('#teacherdg').datagrid('reload'); // reload the user data
						} else {
							jAlert('系统错误，请联系管理员', '错误提示');
						}
					}, 'json');
					$('#teacherdg').datagrid('reload'); // reload the user data
				}
			});
		}
	}
	
	//销毁所有上传控件
	function deleteAllUploader(){
		uploaderForPic.splice(0,10);
// 		uploaderForOutline.splice(0,10);
// 		uploaderForSchedule.splice(0,10);
// 		uploaderForSubject.splice(0,10);
		uploaderForProject.splice(0,10);
		for(var i = 1; i<=subjectNum; i++){
			window["browseOutlineTemp"+i].splice(0,10);
			window["browseScheduleTemp"+i].splice(0,10);
			window["browseSubjectTemp"+i].splice(0,10);
			}
// 		uploaderForPaper.splice(0,10);
		//动态增加上传控件
// 		if (paperNum > 0) {
			for(var i = 1; i<=paperNum; i++){
			window["browsePaperTemp"+i].splice(0,10);
			}
// 		}
	}
	
	//销毁所有上传控件
	function destroyAllUploader(){
		uploaderForPic.destroy();
		uploaderForOutline.destroy();
		uploaderForSchedule.destroy();
		uploaderForSubject.destroy();
		uploaderForProject.destroy();
// 		uploaderForPaper.destroy();
	}
	
	//隐藏所有上传控件
	function dispalyAllUploader(paperSize,subjectSize){
// 		$('#outlineObj').hide();
// 		$('#scheduleObj').hide();
// 		$('#subjectObj').hide();
		$('#projectObj').hide();
		for(var i = 1; i<=subjectSize; i++){
			$(window["scheduleObj"+i]).hide();
			$(window["subjectObj"+i]).hide();
			$(window["outlineObj"+i]).hide();
			}
		for(var i = 1; i<=paperSize; i++){
			$(window["paperObj"+i]).hide();
			}
	}
	
	//显示所有上传控件
	function showAllUploader(){
// 		$('#outlineObj').show();
// 		$('#scheduleObj').show();
// 		$('#subjectObj').show();
		$('#projectObj').show();
// 		$('#paperObj').show();
	}
	var uploaderForPic;
	function createUploaderPic(){
		//照片 上传控件##########################################
		uploaderForPic = new plupload.Uploader({ //实例化一个plupload上传对象
			browse_button : 'browse',
			multi_selection: false,
	 		url : 'File_uploadForTeacher',
	 		file_data_name : 'fileData',
//	 		url : '${request_path}/pupload/upload.php', //服务器端的上传页面地址
	        flash_swf_url : '${js_path}/plupload/Moxie.swf', //swf文件，当需要使用swf方式进行上传时需要配置该参数
	        silverlight_xap_url : '${js_path}/plupload/Moxie.xap', //silverlight文件，当需要使用silverlight方式进行上传时需要配置该参数
	        unique_names : true,  // 上传的文件名是否唯一   
	        multipart_params: {
	        	  filetype: 'pic'
//	         	  two: '2',
//	         	  three: { //值还可以是一个字面量对象
//	         	    a: '4',
//	         	    b: '5'
//	         	  },
//	         	  four: ['6', '7', '8']  //也可以是一个数组
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
		
		//清空按钮
		$('#clear-btn').click(function(){
			uploaderForPic.splice(0,10); 
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
//	 			var html = '<li id="file-' + files[i].id +'"><p class="file-name">' + file_name + '</p><p class="progress"></p></li>';
//	 			var html = '<li id="file-' + file_id +'" style="text-align: left;">';
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
	
// 	uploaderForPic.init(); //初始化
	
	
	var uploaderForProject;
	function createProject(){
		//立项上传控件###################################################
		uploaderForProject = new plupload.Uploader({ //实例化一个plupload上传对象
			browse_button : 'browseProject',
			multi_selection: false,
	 		url : 'File_uploadForTeacher',
	 		file_data_name : 'fileData',
//	 		url : '${request_path}/pupload/upload.php', //服务器端的上传页面地址
	        flash_swf_url : '${js_path}/plupload/Moxie.swf', //swf文件，当需要使用swf方式进行上传时需要配置该参数
	        silverlight_xap_url : '${js_path}/plupload/Moxie.xap', //silverlight文件，当需要使用silverlight方式进行上传时需要配置该参数
	        unique_names : true,  // 上传的文件名是否唯一   
	        multipart_params: {
	        	  filetype: 'project'
	        	},
	        filters: {
	  		  max_file_size : '20mb', //最大只能上传20mb的文件
	  		  prevent_duplicates : true //不允许队列中存在重复文件
	        }
		});
	 	uploaderForProject.init(); //初始化
		
	 	
	 	uploaderForProject.bind('Error',function(uploader,errObject){
			if(errObject.code=='-600'){
				alert("上传文件过大");
			}
		});
	 	
		//绑定文件添加进队列事件
		uploaderForProject.bind('FilesAdded',function(uploader,files){
			$.each(uploader.files, function (i, file) { 
				if (uploader.files.length <= 1) { 
			            return; 
			        } 
				uploaderForProject.removeFile(file); 
			    });
//	 		var count = $("#uploader_project_count").val();
			for(var i = 0, len = files.length; i<len; i++){
				var file_name = files[i].name; //文件名
				var file_id = files[i].id;//ID,临时文件名
//	 			count++;
				//构造html来更新UI
//	 			var html = '<li id="file-' + files[i].id +'"><p class="file-name">' + file_name + '</p><p class="progress"></p></li>';
				var html = '<li id="file-' + file_id +'" style="text-align: left;"><p class="file-name">' + file_name + '</p><p class="progress"></p>';
					html += '<input type="hiddent" style="display: none;" name="uploader_project_tmpname" value="' + file_id + '" />';
					html += '<input type="hiddent" style="display: none;" name="uploader_project_name" value="' + file_name + '" /></li>';
				$(html).appendTo('#file-list-project');
			}
//	 		$("#uploader_project_count").val(count);
		});
		
		//绑定文件上传进度事件
		uploaderForProject.bind('UploadProgress',function(uploader,file){
			$('#file-'+file.id+' .progress').css('width',file.percent + '%');//控制进度条
		});
		
		//绑定文件上传删除事件
		uploaderForProject.bind('FilesRemoved',function(uploader,file){
			$('#file-list-project').html("");
		});
		
		//清空按钮
		$('#project-clear-btn').click(function(){
			uploaderForProject.splice(0,10); ////删除文件按钮
		});
		
	}
	
	
	//论文上传控件###################################################
// 	var uploaderForPaper = new plupload.Uploader({ //实例化一个plupload上传对象
// 		browse_button : 'browsePaper',
// 		multi_selection: false,
//  		url : 'File_uploadForTeacher',
//  		file_data_name : 'fileData',
// // 		url : '${request_path}/pupload/upload.php', //服务器端的上传页面地址
//         flash_swf_url : '${js_path}/plupload/Moxie.swf', //swf文件，当需要使用swf方式进行上传时需要配置该参数
//         silverlight_xap_url : '${js_path}/plupload/Moxie.xap', //silverlight文件，当需要使用silverlight方式进行上传时需要配置该参数
//         unique_names : true,  // 上传的文件名是否唯一   
//         multipart_params: {
//         	  filetype: 'paper'
//         	},
//         filters: {
//   		  max_file_size : '20mb', //最大只能上传100kb的文件
//   		  prevent_duplicates : true //不允许队列中存在重复文件
//         }
// 	});
// // 	uploaderForPaper.init(); //初始化
	
// 	//绑定文件添加进队列事件
// 	uploaderForPaper.bind('FilesAdded',function(uploader,files){
// 		var count = $("#uploader_paper_count").val();
// 		for(var i = 0, len = files.length; i<len; i++){
// 			var file_name = files[i].name; //文件名
// 			var file_id = files[i].id;//ID,临时文件名
// 			count++;
// 			//构造html来更新UI
// // 			var html = '<li id="file-' + files[i].id +'"><p class="file-name">' + file_name + '</p><p class="progress"></p></li>';
// 			var html = '<li id="file-' + file_id +'" style="text-align: left;"><p class="file-name">' + file_name + '</p><p class="progress"></p>';
// 				html += '<input type="hiddent" style="display: none;" name="uploader_paper_tmpname_'+count+'" value="' + file_id + '" />';
// 				html += '<input type="hiddent" style="display: none;" name="uploader_paper_name_'+count+'" value="' + file_name + '" /></li>';
// 			$(html).appendTo('#file-list-paper');
// 		}
// 		$("#uploader_paper_count").val(count);
// 	});
	
// 	//绑定文件上传进度事件
// 	uploaderForPaper.bind('UploadProgress',function(uploader,file){
// 		$('#file-'+file.id+' .progress').css('width',file.percent + '%');//控制进度条
// 	});
	
// 	//绑定文件上传删除事件
// 	uploaderForPaper.bind('FilesRemoved',function(uploader,file){
// 		$('#file-list-paper').html("");
// 	});

// 	//清空按钮
// 	$('#paper-clear-btn').click(function(){
// 		uploaderForPaper.splice(0,10); ////删除文件按钮
// 	});
	
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
	
	
// 	$(function() {
// 		var uploaderQueue = $("#uploaderQueue").pluploadQueue({
// 		runtimes : 'gears,flash,silverlight,browserplus,html5,html4',
// 		url : 'File_uploadForTeacher',
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
// 			url : 'File_uploadForTeacher',
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
// 			url : 'File_uploadForTeacher',
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
// 	$('#teacher_tab').tabs({ 
// 	    border:false, 
// 	    onSelect:function(title,index){ 
// // 	        alert(title+' is selected'+index); 
// 	        if(index==0){
// // 	        	uploaderForPic.init();
// 	        }
// 			if(index==1){
// // 				if(uploaderForOutline==null || uploaderForOutline==undefined){
// // 					createSubjectUpload();
// // 				}else{
// // 					uploaderForOutline.destroy();
// // 					uploaderForSchedule.destroy();
// // 					uploaderForSubject.destroy();
// // 					createSubjectUpload();
// // 				}
// // 				uploaderForSubject.init(); //初始化
// // 				uploaderForSchedule.init(); //初始化
// // 				uploaderForOutline.init(); //初始化
// 	        }
// 			if(index==2){
// // 				uploaderForProject.init();
// 			}
// 			if(index==3){
// // 				uploaderForPaper.init(); //初始化
// 			}
// 	    } 
// 	});
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