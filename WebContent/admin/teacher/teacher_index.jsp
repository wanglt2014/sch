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
					<label>讲授课程:</label>
					<input name="subjectIds" id="subjectIds"
					class="easyui-validatebox" style="display: none;">
				<select
					class="easyui-combogrid" id="subject" name="subject"
					style="width: 500px"
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
			                {field:'subjectteachername',title:'授课教师',width:30},
			                {field:'subjecttext',title:'课程介绍',width:120},
			            ]],fitColumns: true">
				</select>
			</div> 
			<div title="立项"  closable="false" style="overflow:auto;padding:20px;" id="Tab3"> 
				<div class="ftitle">立项</div>
				<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="addProject()">新增立项信息</a><br><br>
				<div id="projectTempleate" style="display: none;">
				<div id="projectRow0" class="fitem">
				<span class="span_column" >
					<label style="width: 85px;text-align: right;">项目种类:</label>
					<select id="researchtype0" name="researchtype0" class="easyui-combobox" panelHeight="auto" editable="false"
						style="width: 110px">
						<option value="1">国家社会科学基金</option>
						<option value="2">国家自然科学基金</option>
						<option value="3">教育部人文社科基金</option>
						<option value="4">省哲学社会科学研究规划项目</option>
						<option value="5">省自然科学基金项目</option>
						<option value="6">其他省部级以上项目</option>
					</select>
				</span>
				<span class="span_column" >
					<label style="width: 85px;text-align: right;">项目类别:</label>
					<select id="researchlevel0" name="researchlevel0" class="easyui-combobox" panelHeight="auto" editable="false"
						style="width: 110px">
						<option value="1">重大</option>
						<option value="2">重点</option>
						<option value="3">一般</option>
						<option value="4">面上</option>
						<option value="5">青年</option>
						<option value="6">其他</option>
					</select>
				</span>
				<span class="span_column" >
					<label >是否在研:</label> 
					<select id="isresearch0" name="isresearch0" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 140px" >
							<option value="1">是</option>
							<option value="0">否</option>
					</select>
				</span>
				<br><br>
<%-- 				<span class="span_column_sm" > --%>
<!-- 					<label style="width: 85px;text-align: right;">项目资金:</label> <input id="researchmoney0" name="researchmoney0" style="width: 110px" -->
<!-- 						class="easyui-numberbox" max="2000000000" > -->
<%-- 				</span> --%>
<%-- 				<span class="span_column_sm"  > --%>
<!-- 					<label style="width: 85px;text-align: right;">配套资金:</label> <input id="researchmatchmoney0" name="researchmatchmoney0" style="width: 110px" -->
<!-- 						class="easyui-numberbox" max="2000000000" > -->
<%-- 				</span> --%>
<%-- 				<span class="span_column_sm" > --%>
<!-- 					<label style="width: 85px;text-align: right;">项目主持人:</label> <input id="researchhost0" name="researchhost0" style="width: 110px" -->
<!-- 						class="easyui-validatebox" maxlength="20"> -->
<%-- 				</span> --%>
<!-- 				<br><br> -->
<%-- 				<span class="span_column_sm" > --%>
<!-- 					<label style="width: 85px;text-align: right;">项目参与者:</label> <input id="researchactor0" name="researchactor0" style="width: 110px;"   -->
<!-- 						class="easyui-validatebox" maxlength="40"> -->
<%-- 				</span> --%>
				<span class="span_column" >
					<label style="width: 85px;text-align: right;">教师排名:</label>
					<select id="researchrank0" on name="researchrank0" class="easyui-combobox" panelHeight="auto" editable="false"
						style="width: 110px" >
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
					</select>
				</span>
				<span class="span_column_sm" >
					<label style="width: 85px;text-align: right;">项目名称:</label>
					<input id="researchname0" name="researchname0" style="width: 110px"
						class="easyui-validatebox"  maxlength="20">
				</span>
				<span class="span_column_sm" >
					<label style="width: 85px;text-align: right;">项目编号:</label>
					<input id="researchno0" name="researchno0" maxlength="20" style="width: 110px"
						class="easyui-validatebox" >
				</span>
				<br><br>
				<span class="span_column_sm">
					<label style="width: 85px;text-align: right;">项目开始时间:</label> 
					<input id="researchbegindate0" name="researchbegindate0" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
				</span>
				<span class="span_column_sm" >
					<label style="width: 90px;text-align: right;">项目结束时间:</label> 
					<input id="researchenddate0" name="researchenddate0" type="date" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
				</span>
				<span class="span_column_sm" >
					<label style="width: 90px;text-align: right;">结题等级:</label> 
					<select id="researchknot0" name="researchknot0" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 100px" >
							<option value="1">优秀</option>
							<option value="2">良好</option>
							<option value="3">合格</option>
							<option value="4">其他</option>
					</select>
				</span>
				<br><br>
				<span class="span_column_sm" >
					<label style="width: 90px;text-align: right;">教学/科研:</label> 
					<select id="researchteachorresearch0" name="researchteachorresearch0" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 100px" >
							<option value="0">教学</option>
							<option value="1">科研</option>
					</select>
				</span>
				<span id="deleteProjectDiv0"></span>
				<hr  style="border-bottom:1px dashed;"><br>
<!-- 				<div class="ftitle">著作</div> -->
				</div>
				</div>
				<div id="projectDiv" ></div>
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
						<span class="span_column" ><label>刊登期号:</label> <input id="papernoteno0" name="papernoteno0" maxlength="20"
								class="easyui-validatebox" ></span>
						<span class="span_column" >
							<label >论文分类:</label> 
							<select id="paperteachorresearch0" name="paperteachorresearch0" class="easyui-combobox" panelHeight="auto" editable="false"
									style="width: 140px" >
									<option value="0">教学</option>
									<option value="1">科研</option>
							</select>
						</span>
						<br><br>
						<!-- 动态增加上传控件 -->
						<span class="span_column" style="width:100%;" id="paperObj0"> <label>论文电子版:</label> 
							<input type="button" value="选择文件..." id="browsePaper0" />
							<input type="button" value="清空" id="paper-clear-btn0" />&nbsp;&nbsp;<span class="tip2">(注意：只能上传20M以内的文件)</span>
						</span>
						<span id="file-list-paper0"></span>
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
				<div title="著作"  closable="false" style="overflow:auto;padding:20px;" id="Tab5"> 
					<div class="ftitle">著作</div>
					<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="addWork()">新增著作信息</a><br><br>
					<div id="workTempleate" style="display: none;">
					<div id="workRow0" class="fitem">
						<span class="span_column" >
							<label style="width: 85px;text-align: right;">作者排名:</label>
							<select id="workAuthorRank0" on name="workAuthorRank0" class="easyui-combobox" panelHeight="auto" editable="false"
								style="width: 110px" >
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
							</select>
						</span>
						<span class="span_column" >
							<label style="width: 85px;text-align: right;">著作题目:</label>
							<input id="workTitle0" name="workTitle0" maxlength="50" class="easyui-validatebox" style="width: 110px;">
						</span>
						<span class="span_column" >
							<label style="width: 85px;text-align: right;">出版单位:</label>
							<input id="workPublishUnit0" name="workPublishUnit0" maxlength="50" class="easyui-validatebox" style="width: 110px;">
						</span>
						<br><br>
						<span class="span_column" >
							<label style="width: 85px;text-align: right;">著作类别:</label>
							<select id="workType0" name="workType0" class="easyui-combobox" panelHeight="auto" editable="false"
								style="width: 110px">
								<option value="1">专著</option>
								<option value="2">编著</option>
								<option value="3">译著</option>
							</select>
						</span>
						<span class="span_column" >
							<label style="width: 85px;text-align: right;">出版地:</label>
							<input id="workPublishArea0" name="workPublishArea0" maxlength="50" style="width: 110px;" class="easyui-validatebox" >
						</span>
						<span class="span_column_sm">
							<label  style="width: 85px;text-align: right;">出版时间:</label> 
							<input id="workPublishTime0" name="workPublishTime0" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
						</span>
						<br><br>
						<span class="span_column" style="display: none;" id="oriAuthorSpan0">
							<label style="width: 85px;text-align: right;">原作者:</label>
							<input id="oriAuthor0" name="oriAuthor0" maxlength="30" style="width: 110px;" class="easyui-validatebox" >
						</span>
						<span class="span_column" id="translateForeignSpan0">
							<label style="width: 85px;text-align: right;">是否译成外文:</label>
							<select id="translateForeign0" name="translateForeign0" class="easyui-combobox" panelHeight="auto" editable="false"
								style="width: 110px;" >
								<option value="1">是</option>
								<option value="0">否</option>
							</select>
						</span>
						<span class="span_column" >
							<label style="width: 85px;text-align: right;">已出几版:</label>
							<input id="alreadyPublish0" name="alreadyPublish0" maxlength="2" style="width: 110px;" class="easyui-validatebox" >
						</span>
						<span class="span_column" >
							<label style="width: 85px;text-align: right;">ISBN号:</label>
							<input id="isbnNO0" name="isbnNO0" maxlength="20" style="width: 110px;" class="easyui-validatebox" >
						</span>
						<br><br>
						<span class="span_column" >
							<label style="width: 85px;text-align: right;">一级学科:</label>
							<select id="classA0" name="classA0" class="easyui-combobox" panelHeight="auto" editable="false"
								style="width: 110px" >
								<option value="840">840</option>
								<option value="820">820</option>
								<option value="180">180</option>
							</select>
						</span>
						<span class="span_column" >
							<label style="width: 85px;text-align: right;">资助项目编号:</label>
							<input id="projectno0" name="projectno0" maxlength="20" style="width: 110px;" class="easyui-validatebox" >
						</span>
						<span class="span_column" >
							<label style="width: 85px;text-align: right;">自己承担字数/全书总字数:</label>
							<input id="totalWord0" name="totalWord0" maxlength="10" style="width: 110px;" class="easyui-validatebox" >（千）
						</span>
						<br><br>
						<!-- 若教师选择著作类别中的“译著”，则系统显示C项，该老师应填写C项。如果教师选择著作类别为“专著”和“编著”则系统不显示C项 -->
					<span id="deleteWorkDiv0"></span>
<!-- 					<input id="prizeId0" name="prizeId0" /> -->
					<hr  style="border-bottom:1px dashed;"><br>
					</div>
					
					</div>
					<div id="workDiv" ></div>
				</div>
				<div title="获奖"  closable="false" style="overflow:auto;padding:20px;" id="Tab6"> 
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
	var projectNum = 0;
	var workNum = 0;
	var temp = $("#templeate").html();//保存渲染前的模板
	var paperTemp = $("#paperTempleate").html();
	var projectTemp = $("#projectTempleate").html();
	var workTemp = $("#workTempleate").html();
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
// 		alert($('#prizetype1').combobox('getText')+"****"+$('#prizetype1').combobox('getValue'));
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
		.replace(new RegExp("paper-clear-btn0","gm"),'paper-clear-btn'+paperNum)
		.replace(new RegExp("paperteachorresearch0","gm"),'paperteachorresearch'+paperNum);
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
	
	//动态添加立项信息
	function addProject() {
		projectNum++;
		$("#deleteProjectBtn").remove();
		var html = projectTemp.replace(new RegExp("researchlevel0","gm"),'researchlevel'+projectNum)
		.replace(new RegExp("researchname0","gm"),'researchname'+projectNum)
		.replace(new RegExp("researchno0","gm"),'researchno'+projectNum)
		.replace(new RegExp("researchtype0","gm"),'researchtype'+projectNum)
		.replace(new RegExp("isresearch0","gm"),'isresearch'+projectNum)
		.replace(new RegExp("researchrank0","gm"),'researchrank'+projectNum)
		.replace(new RegExp("researchknot0","gm"),'researchknot'+projectNum)
// 		.replace(new RegExp("researchmoney0","gm"),'researchmoney'+projectNum)
// 		.replace(new RegExp("researchmatchmoney0","gm"),'researchmatchmoney'+projectNum)
// 		.replace(new RegExp("researchhost0","gm"),'researchhost'+projectNum)
// 		.replace(new RegExp("researchactor0","gm"),'researchactor'+projectNum)
		.replace(new RegExp("researchbegindate0","gm"),'researchbegindate'+projectNum)
		.replace(new RegExp("researchenddate0","gm"),'researchenddate'+projectNum)
		.replace(new RegExp("deleteProjectDiv0","gm"),'deleteProjectDiv'+projectNum)
		.replace(new RegExp("projectRow0","gm"),'projectRow'+projectNum)
		.replace(new RegExp("researchteachorresearch0","gm"),'researchteachorresearch'+projectNum);
		$("#projectDiv").append(html);
		$("#projectDiv select").combobox({panelHeight:"auto"});//渲染
		$("#researchbegindate"+projectNum).datebox({panelHeight:"auto"});//渲染
		$("#researchenddate"+projectNum).datebox({panelHeight:"auto"});//渲染
		$("#deleteProjectDiv"+projectNum).append('<a id="deleteProjectBtn" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="removeProject('+projectNum+')">删除立项信息</a>');
		//动态增加上传控件
// 		createProject();
	}
	
	function removeProject(infoIndex) {
		$("#projectRow"+infoIndex).remove();
		if(parseInt(infoIndex)>1){
			$("#deleteProjectDiv"+(parseInt(infoIndex)-1)).append('<a id="deleteProjectBtn" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="removeProject('+(parseInt(infoIndex)-1)+')">删除立项信息</a>');
		}
		projectNum--;
	}
	
	
	//动态添加立项信息
	function addWork() {
		workNum++;
		$("#deleteWorkBtn").remove();
		var html = workTemp.replace(new RegExp("workAuthorRank0","gm"),'workAuthorRank'+workNum)
		.replace(new RegExp("workTitle0","gm"),'workTitle'+workNum)
		.replace(new RegExp("workPublishUnit0","gm"),'workPublishUnit'+workNum)
		.replace(new RegExp("workType0","gm"),'workType'+workNum)
		.replace(new RegExp("workPublishArea0","gm"),'workPublishArea'+workNum)
		.replace(new RegExp("workPublishTime0","gm"),'workPublishTime'+workNum)
		.replace(new RegExp("oriAuthor0","gm"),'oriAuthor'+workNum)
		.replace(new RegExp("translateForeign0","gm"),'translateForeign'+workNum)
		.replace(new RegExp("alreadyPublish0","gm"),'alreadyPublish'+workNum)
		.replace(new RegExp("isbnNO0","gm"),'isbnNO'+workNum)
		.replace(new RegExp("classA0","gm"),'classA'+workNum)
		.replace(new RegExp("oriAuthorSpan0","gm"),'oriAuthorSpan'+workNum)
		.replace(new RegExp("translateForeignSpan0","gm"),'translateForeignSpan'+workNum)
		.replace(new RegExp("projectno0","gm"),'projectno'+workNum)
		.replace(new RegExp("totalWord0","gm"),'totalWord'+workNum)
		.replace(new RegExp("deleteWorkDiv0","gm"),'deleteWorkDiv'+workNum)
		.replace(new RegExp("workRow0","gm"),'workRow'+workNum)
		$("#workDiv").append(html);
		$("#workDiv select").combobox({panelHeight:"auto"});//渲染
		$("#workPublishTime"+workNum).datebox({panelHeight:"auto"});//渲染
		$("#deleteWorkDiv"+workNum).append('<a id="deleteWorkBtn" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="removeWork('+workNum+')">删除立项信息</a>');
		var flag=workNum;
		$('#workType'+flag).combobox({
			onSelect:function(newValue,oldValue){
// 		    	alert(newValue+"*"+oldValue+"&&"+flag);
		    	workTypeClick(newValue,flag);
		    }
		});
		//动态增加上传控件
// 		createProject();
	}
	
	function removeWork(infoIndex) {
// 		alert($('#workType1').combobox('getText')+"****"+$('#workType1').combobox('getValue'));
		$("#workRow"+infoIndex).remove();
		if(parseInt(infoIndex)>1){
			$("#deleteWorkDiv"+(parseInt(infoIndex)-1)).append('<a id="deleteWorkBtn" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="removeWork('+(parseInt(infoIndex)-1)+')">删除著作信息</a>');
		}
		workNum--;
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
		if(uploaderForPic==null || uploaderForPic==undefined){
			createUploaderPic();
// 			createProject();
		}else{
			uploaderForPic.destroy();
			createUploaderPic();
			deleteAllUploader();
		}
// 		alert(JSON.stringify(uploaderForPic));
		showAllUploader();
		prizeNum = 0;
		paperNum = 0;
		projectNum = 0;
		workNum = 0;
		$("#prizeDiv").html("");
		$("#paperDiv").html("");
		$("#projectDiv").html("");
		$("#workDiv").html("");
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
	}
	function editTeacher() {
		var row = $('#teacherdg').datagrid('getSelected');
		if (row) {
			if(uploaderForPic==null || uploaderForPic==undefined){
				createUploaderPic();
// 				createProject();
			}else{
				uploaderForPic.destroy();
// 				uploaderForProject.destroy();
				createUploaderPic();
// 				createProject();
				deleteAllUploader();
			}
			prizeNum = 0;
			paperNum = 0;
			projectNum = 0;
			workNum = 0;
			$("#prizeDiv").html("");
			$("#paperDiv").html("");
			$("#projectDiv").html("");
			$("#workDiv").html("");
			$('#teacherdlg').dialog('open').dialog('setTitle',
					'编辑教师');
			$('#teacherfm').form('clear');
			$('#teacherfm').form('load', row);
			$('#img_photo').show();
			$('#img_photo').attr('src',row.iimageurll);
			var prizeList,paperList,subjectList,projectList;
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
 					projectList = json.tResearch;
 					workList = json.tWork;
 					
 					if(subjectList!=""){
						$('#subject').combogrid('setValues', subjectList.split(","));
					}
 					
// 					for(var i = 0; i < subjectList.length; i++){
// 						addSubject();
// 						$('#subjectno'+(parseInt(i)+1)).val(subjectList[i].subjectno);
// 						$('#subjectname'+(parseInt(i)+1)).val(subjectList[i].subjectname);
// 						$('#subjecttype'+(parseInt(i)+1)).combobox('select',subjectList[i].subjecttype);
// 						$('#subjecttypename'+(parseInt(i)+1)).val(subjectList[i].subjecttypename);
// 						$('#subjecttext'+(parseInt(i)+1)).val(subjectList[i].subjecttext);
// 					}
					
					for(var i = 0; i < paperList.length; i++){
						addPaper();
						$('#papername'+(parseInt(i)+1)).val(paperList[i].papername);
						$('#paperauthor'+(parseInt(i)+1)).val(paperList[i].paperauthor);
						$('#papernotename'+(parseInt(i)+1)).val(paperList[i].papernotename);
						$('#papernoteyear'+(parseInt(i)+1)).val(paperList[i].papernoteyear);
						$('#papernoteno'+(parseInt(i)+1)).val(paperList[i].papernoteno);
					}
					for(var i = 0; i < prizeList.length; i++){
						addPrize();
						$('#prizetype'+(parseInt(i)+1)).combobox('select',prizeList[i].prizetype);
						$('#prizeinfo'+(parseInt(i)+1)).val(prizeList[i].prizeinfo);
// 						$('#prizeId'+(parseInt(i)+1)).val(prizeList[i].prizeid);
// 						alert(prizeList[i].prizeid);
					}
					for(var i = 0; i < projectList.length; i++){
						addProject();
// 						$('#researchlevel'+(parseInt(i)+1)).val(projectList[i].researchlevel);
						$('#researchname'+(parseInt(i)+1)).val(projectList[i].researchname);
						$('#researchno'+(parseInt(i)+1)).val(projectList[i].researchno);
// 						$('#researchmoney'+(parseInt(i)+1)).val(projectList[i].researchmoney);
// 						$('#researchmatchmoney'+(parseInt(i)+1)).val(projectList[i].researchmatchmoney);
// 						$('#researchhost'+(parseInt(i)+1)).val(projectList[i].researchhost);
// 						$('#researchactor'+(parseInt(i)+1)).val(projectList[i].researchactor);
						$('#researchbegindate'+(parseInt(i)+1)).datebox('setValue',projectList[i].researchbegindate);
						$('#researchenddate'+(parseInt(i)+1)).datebox('setValue',projectList[i].researchenddate);
						$('#researchteachorresearch'+(parseInt(i)+1)).combobox('select',projectList[i].researchteachorresearch);
						$('#researchtype'+(parseInt(i)+1)).combobox('select',projectList[i].researchtype);
						$('#isresearch'+(parseInt(i)+1)).combobox('select',projectList[i].isresearch);
						$('#researchrank'+(parseInt(i)+1)).combobox('select',projectList[i].researchrank);
						$('#researchknot'+(parseInt(i)+1)).combobox('select',projectList[i].researchknot);
						$('#researchlevel'+(parseInt(i)+1)).combobox('select',projectList[i].researchlevel);
					}
					for(var i = 0; i < workList.length; i++){
						addWork();
						$('#classA'+(parseInt(i)+1)).combobox('select',workList[i].classa);
						$('#translateForeign'+(parseInt(i)+1)).combobox('select',workList[i].translateforeign);
						$('#workAuthorRank'+(parseInt(i)+1)).combobox('select',workList[i].workauthorrank);
						$('#workPublishTime'+(parseInt(i)+1)).datebox('setValue',workList[i].workpublishtime);
						$('#alreadyPublish'+(parseInt(i)+1)).val(workList[i].alreadypublish);
						$('#isbnNO'+(parseInt(i)+1)).val(workList[i].isbnno);
						$('#oriAuthor'+(parseInt(i)+1)).val(workList[i].oriauthor);
						$('#projectno'+(parseInt(i)+1)).val(workList[i].projectno);
						$('#totalWord'+(parseInt(i)+1)).val(workList[i].totalword);
						$('#workPublishArea'+(parseInt(i)+1)).val(workList[i].workpublisharea);
						$('#workPublishUnit'+(parseInt(i)+1)).val(workList[i].workpublishunit);
						$('#workTitle'+(parseInt(i)+1)).val(workList[i].worktitle);
// 						alert($('#workType'+(parseInt(i)+1)).combobox('getText'));
						$('#workType'+(parseInt(i)+1)).combobox('select',workList[i].worktype);
// 						$('#workType'+(parseInt(i)+1)).combobox('select',3);
// 						alert('#workType'+(parseInt(i)+1)+'@'+'#workType1');
					}
				},
				error : function() {
					jAlert('系统错误，请联系管理员','错误提示');
				}
			});
			dispalyAllUploader(paperList.length,projectList.length);
			url = 'Teacher_update?id=' + row.id;
		}
	}
	
	function saveTeacher() {
	var picLen = uploaderForPic.files.length;
	var valid = $('#teacherfm').form('validate');
		if(valid==true){
			$('#subjectIds').val($('#subject').combogrid('getValues'));
			$('#departmentname').val($('#department').combobox('getText'));
			$('#titlename').val($('#title').combobox('getText'));
			$('#jobname').val($('#job').combobox('getText'));
			$('#teacherfm').form('submit', {
    			url : url+"&prizeNum="+prizeNum+"&paperNum="+paperNum+"&projectNum="+projectNum+"&workNum="+workNum,
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
		for(var i = 1; i<=paperNum; i++){
			window["browsePaperTemp"+i].start();
		}
		}else{
			alert("信息填写不完整");
		}
	}
	function destroyTeacher() {
		var row = $('#teacherdg').datagrid('getSelected');
		if (row) {
			$.messager.confirm('确认', '是否要删除?', function(r) {
				if (r) {
					$.post('Teacher_delete', {
						id : row.id
					}, function(result) {
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
		for(var i = 1; i<=paperNum; i++){
		window["browsePaperTemp"+i].splice(0,10);
		}
	}
	
	//销毁所有上传控件
	function destroyAllUploader(){
		uploaderForPic.destroy();
	}
	
	//隐藏所有上传控件
	function dispalyAllUploader(paperSize,projectSize){
		for(var i = 1; i<=paperSize; i++){
			$(window["paperObj"+i]).hide();
			}
	}
	
	//显示所有上传控件
	function showAllUploader(){
// 		$('#outlineObj').show();
// 		$('#scheduleObj').show();
// 		$('#subjectObj').show();
// 		$('#projectObj').show();
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