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
<!-- 			所在专业:<input -->
<!-- 				class="easyui-combobox" id="departmentQuery" -->
<!-- 				data-options=" -->
<!--  					url:'Dictionary_queryDictionaryByType?type=department', -->
<!-- 					method:'get',  -->
<!--  					valueField:'dictionarycode',  -->
<!--  					textField:'dictionaryvalue',  -->
<!-- 					panelHeight:'auto',editable:false">  -->
			<a href="javascript:void(0)" class="easyui-linkbutton"
				iconCls="icon-search" onclick="queryTearcher()">搜索</a>
				<input type="hidden" id="teacherIdForSave"> 
				<input type="hidden" id="teacherNameForSave"> 
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
			iconCls="icon-edit" plain="true" onclick="editForTeach()">教学信息</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editForkeyan()">科研信息</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editForSubject(3)">培养方案（博士）</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editForSubject(4)">培养方案（专硕）</a>
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
<!-- 							<input -->
<!-- 								class="easyui-combobox" id="department" name="department" -->
<!-- 								data-options=" -->
<!--  				 					url:'Dictionary_queryDictionaryByType?type=department', -->
<!--  									method:'get', -->
<!--  				 					valueField:'dictionarycode', -->
<!--  				 					textField:'dictionaryvalue',   -->
<!--  									panelHeight:'auto',editable:false">  -->
 							<input id="departmentname" name="departmentname" type="hidden" />
						</div>
						<div class="fitem">
							<label>职称:</label>
<!-- 							<input -->
<!-- 								class="easyui-combobox" id="title" name="title" editable="false" -->
<!-- 								data-options=" -->
<!--  				 					url:'Dictionary_queryDictionaryByType?type=title', -->
<!--  									method:'get',   -->
<!--  				 					valueField:'dictionarycode',   -->
<!--  				 					textField:'dictionaryvalue',   -->
<!--  									panelHeight:'auto'">  -->
 							<input id="titlename" name="titlename" type="hidden" />
						</div>
						<div class="fitem">
							<label>职务:</label>
<!-- 							<input -->
<!-- 								class="easyui-combobox" id="job" name="job" -->
<!-- 								data-options=" -->
<!-- 			 						url:'Dictionary_queryDictionaryByType?type=job',  -->
<!-- 									method:'get', -->
<!--  				 					valueField:'dictionarycode', -->
<!-- 				 					textField:'dictionaryvalue', -->
<!--  									panelHeight:'auto',editable:false"> -->
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
	
	<div id="teachdlg" class="easyui-dialog"
		style="width: 800px; height: 620px; padding: 20px 20px;overflow: visible;" closed="true"
		buttons="#teachdlg-buttons">
		<div id="teach_tab" class="easyui-tabs" style="height: 616px"
			data-options="fit:true,border:false,plain:true" >
			<div title="教改立项" style="padding:20px;" id="Tab1"> 
				<div class="ftitle">教改立项</div>
				<div id="projectRow" class="fitem">
				
				</div>
				<table id="teachResearchdg" title="列表" class="easyui-datagrid"
					style="width: auto; height: 250px" url="Teacher_queryTeachResearch"
					toolbar="#teachResearchtoolbar" pagination="true" rownumbers="true"
					fitColumns="true" pageList="[5,10]" singleSelect="true" pageSize="5" >
					<thead>
						<tr>
							<th field="researchlevel" width="50">项目类别</th>
							<th field="researchrank" width="30" >教师排名</th>
							<th field="isresearch" width="30">是否在研</th>
							<th field="researchname" width="20">项目名称</th>
							<th field="researchno" width="20">项目编号</th>
							<th field="researchbegindate" width="20">项目开始时间</th>
							<th field="researchenddate" width="20">项目结束时间</th>
							<th field="researchknot" width="20">结题等级</th>
						</tr>
					</thead>
				</table>
				<div id="teachResearchtoolbar">
<!-- 					<a href="javascript:void(0)" class="easyui-linkbutton" -->
<!-- 						iconCls="icon-add" plain="true" onclick="newTeachResearch()">新增</a> -->
<!-- 					<a href="javascript:void(0)" class="easyui-linkbutton" -->
<!-- 						iconCls="icon-edit" plain="true" onclick="editTeachResearch()">编辑</a> -->
					<a href="javascript:void(0)" class="easyui-linkbutton"
						iconCls="icon-remove" plain="true" onclick="destroyResearch('teach')">删除</a>
				</div>
				
			</div>
			<div title="教改论文" style="padding:20px;" id="Tab2"> 
				<div class="ftitle">教改论文</div>
					<div id="teachpaperRow" class="fitem">
				
					</div>
					<table id="teachPaperdg" title="列表" class="easyui-datagrid"
					style="width: 950px; height: 250px" url="Teacher_queryTeachPaper"
					toolbar="#teachPapertoolbar" pagination="true" rownumbers="true"
					fitColumns="false" pageList="[5,10]" singleSelect="true" pageSize="5" >
					<thead>
						<tr>
							<th field="papername" width="100">论文题目</th>
							<th field="paperauthor" width="60">作者排名</th>
							<th field="papernotename" width="120" >发表刊物/论文集名称</th>
							<th field="papernotecountry" width="60">刊物国别</th>
							<th field="papernotedate" width="100">发表/出版时间</th>
							<th field="papernoteno" width="80">期号（卷号）</th>
							<th field="papernotepage" width="50">页码</th>
							<th field="paperincluded" width="100">论文收录</th>
							<th field="paperfactors" width="60">影响因子</th>
							<th field="paperreprint" width="60">论文转载</th>
							<th field="paperprojectno" width="100">资助项目编号</th>
						</tr>
					</thead>
				</table>
				<div id="teachPapertoolbar">
					<a href="javascript:void(0)" class="easyui-linkbutton"
						iconCls="icon-remove" plain="true" onclick="deletePaper('teach')">删除</a>
				</div>
				
			</div>
			<div title="教材出版" style="padding:20px;" id="Tab3"> 
				<div class="ftitle">教材出版</div>
				<div id="teachworkRow" class="fitem">
				</div>
				<table id="teachWorkdg" title="列表" class="easyui-datagrid"
					style="width: 1100px; height: 250px" url="Teacher_queryTeachWork"
					toolbar="#teachWorktoolbar" pagination="true" rownumbers="true"
					fitColumns="false" pageList="[5,10]" singleSelect="true" pageSize="5" >
					<thead>
						<tr>
							<th field="workauthorrank" width="100">作者排名</th>
							<th field="worktitle" width="100">教材名称</th>
							<th field="workpublishunit" width="120" >出版单位</th>
							<th field="workpublisharea" width="100">出版地</th>
							<th field="workpublishtime" width="100">出版时间</th>
							<th field="alreadypublish" width="100">已出几版</th>
							<th field="isbnno" width="100">ISBN号</th>
							<th field="projectno" width="150">资助项目编号</th>
							<th field="totalword" width="150">自己承担字数/全书总字数</th>
						</tr>
					</thead>
				</table>
				<div id="teachWorktoolbar">
					<a href="javascript:void(0)" class="easyui-linkbutton"
						iconCls="icon-remove" plain="true" onclick="deleteWork('teach')">删除</a>
				</div>
				
			</div>
			<div title="优秀主讲师" style="padding:20px;" id="Tab4"> 
				<div class="ftitle">优秀主讲师</div>
				<div id="speakerprizeRow" class="fitem">
				</div>
				<table id="speakerPrizedg" title="列表" class="easyui-datagrid"
				style="width: 1300px; height: 250px" url="Teacher_querySpeakerPrize"
				toolbar="#speakerPrizetoolbar" pagination="true" rownumbers="true"
				fitColumns="false" pageList="[5,10]" singleSelect="true" pageSize="5" >
				<thead>
					<tr>
						<th field="prizetitle" width="100">奖项名称</th>
						<th field="prizelevel" width="100">奖励等级</th>
						<th field="prizedep" width="100">授奖部门</th>
						<th field="prizedate" width="80">获奖时间</th>
						<th field="prizeno" width="100">证书编号</th>
					</tr>
				</thead>
			</table>
			<div id="speakerPrizetoolbar">
				<a href="javascript:void(0)" class="easyui-linkbutton"
					iconCls="icon-remove" plain="true" onclick="deletePrize('speaker')">删除</a>
			</div>
			
			</div>
			<div title="教学成果奖" style="padding:20px;" id="Tab5"> 
				<div class="ftitle">教学成果奖</div>
				<div id="teachprizeRow" class="fitem">
				</div>
				<table id="teachPrizedg" title="列表" class="easyui-datagrid"
				style="width: 1300px; height: 250px" url="Teacher_queryTeachPrize"
				toolbar="#teachPrizetoolbar" pagination="true" rownumbers="true"
				fitColumns="false" pageList="[5,10]" singleSelect="true" pageSize="5" >
				<thead>
					<tr>
						<th field="prizerank" width="100">获奖排名</th>
						<th field="prizetitle" width="100">奖项名称</th>
						<th field="prizeresultname" width="120" >成果名称</th>
						<th field="prizelevel" width="100">奖励等级</th>
						<th field="prizetype" width="100">成果类别</th>
						<th field="prizedep" width="100">授奖部门</th>
						<th field="prizedate" width="80">获奖时间</th>
						<th field="prizeno" width="100">证书编号</th>
					</tr>
				</thead>
			</table>
			<div id="teachPrizetoolbar">
				<a href="javascript:void(0)" class="easyui-linkbutton"
					iconCls="icon-remove" plain="true" onclick="deletePrize('teach')">删除</a>
			</div>
			
			</div>
		</div>
	</div>
	<div id="teachdlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-cancel"
			onclick="javascript:$('#teachdlg').dialog('close')">取消</a>
	</div>
	
	<div id="keyandlg" class="easyui-dialog"
		style="width: 800px; height: 620px; padding: 20px 20px;overflow: visible;" closed="true"
		buttons="#keyandlg-buttons">
		<div id="keyan_tab" class="easyui-tabs" style="height: 616px"
			data-options="fit:true,border:false,plain:true" >
			<div title="立项" style="padding:20px;" id="Tab1"> 
				<div class="ftitle">立项</div>
				<div id="keyanprojectRow" class="fitem">
				
				</div>
				<table id="keyanResearchdg" title="列表" class="easyui-datagrid"
					style="width: auto; height: 250px" url="Teacher_queryTResearch"
					toolbar="#keyanResearchtoolbar" pagination="true" rownumbers="true"
					fitColumns="true" pageList="[5,10]" singleSelect="true" pageSize="5" >
					<thead>
						<tr>
							<th field="researchtype" width="30">项目种类</th>
							<th field="researchlevel" width="50">项目类别</th>
							<th field="researchrank" width="30" >教师排名</th>
							<th field="isresearch" width="30">是否在研</th>
							<th field="researchname" width="20">项目名称</th>
							<th field="researchno" width="20">项目编号</th>
							<th field="researchbegindate" width="20">项目开始时间</th>
							<th field="researchenddate" width="20">项目结束时间</th>
							<th field="researchknot" width="20">结题等级</th>
						</tr>
					</thead>
				</table>
				<div id="keyanResearchtoolbar">
					<a href="javascript:void(0)" class="easyui-linkbutton"
						iconCls="icon-remove" plain="true" onclick="destroyResearch('keyan')">删除</a>
				</div>
				
			</div>
			<div title="论文" style="overflow:auto;padding:20px;" id="Tab2"> 
				<div class="ftitle">论文</div>
				<div id="paperRow" class="fitem">
				</div>
					<table id="keyanPaperdg" title="列表" class="easyui-datagrid"
					style="width: 1300px; height: 250px" url="Teacher_queryPaper"
					toolbar="#keyanPapertoolbar" pagination="true" rownumbers="true"
					fitColumns="false" pageList="[5,10]" singleSelect="true" pageSize="5" >
					<thead>
						<tr>
							<th field="papername" width="100">论文题目</th>
							<th field="paperauthor" width="100">作者排名</th>
							<th field="papernotename" width="120" >发表刊物/论文集名称</th>
							<th field="papernotecountry" width="100">刊物国别</th>
							<th field="papernotedate" width="100">发表/出版时间</th>
							<th field="papernoteno" width="100">期号（卷号）</th>
							<th field="papernotepage" width="80">页码</th>
							<th field="paperincluded" width="100">论文收录</th>
							<th field="paperfactors" width="100">影响因子</th>
							<th field="paperreprint" width="100">论文转载</th>
							<th field="paperclassa" width="100">一级学科</th>
							<th field="paperprojectno" width="150">资助项目编号</th>
						</tr>
					</thead>
				</table>
				<div id="keyanPapertoolbar">
					<a href="javascript:void(0)" class="easyui-linkbutton"
						iconCls="icon-remove" plain="true" onclick="deletePaper('keyan')">删除</a>
				</div>
				
			</div>
			<div title="著作" style="overflow:auto;padding:20px;" id="Tab3"> 
				<div class="ftitle">著作</div>
				<div id="workRow" class="fitem">
				</div>
				<table id="keyanWorkdg" title="列表" class="easyui-datagrid"
					style="width: 1300px; height: 250px" url="Teacher_queryWork"
					toolbar="#keyanWorktoolbar" pagination="true" rownumbers="true"
					fitColumns="false" pageList="[5,10]" singleSelect="true" pageSize="5" >
					<thead>
						<tr>
							<th field="workauthorrank" width="100">作者排名</th>
							<th field="worktitle" width="100">著作题目</th>
							<th field="workpublishunit" width="120" >出版单位</th>
							<th field="worktype" width="100">著作类别</th>
							<th field="workpublisharea" width="100">出版地</th>
							<th field="workpublishtime" width="100">出版时间</th>
							<th field="oriauthor" width="80">原作者</th>
							<th field="translateforeign" width="100">是否译成外文</th>
							<th field="alreadypublish" width="100">已出几版</th>
							<th field="isbnno" width="100">ISBN号</th>
							<th field="classa" width="100">一级学科</th>
							<th field="projectno" width="150">资助项目编号</th>
							<th field="totalword" width="150">自己承担字数/全书总字数</th>
						</tr>
					</thead>
				</table>
				<div id="keyanWorktoolbar">
					<a href="javascript:void(0)" class="easyui-linkbutton"
						iconCls="icon-remove" plain="true" onclick="deleteWork('keyan')">删除</a>
				</div>
				
			</div>
			<div title="获奖" style="padding:20px;" id="Tab4"> 
				<div id="prizeRow" class="fitem">
				</div>
				<table id="keyanPrizedg" title="列表" class="easyui-datagrid"
				style="width: 1300px; height: 250px" url="Teacher_queryPrize"
				toolbar="#keyanPrizetoolbar" pagination="true" rownumbers="true"
				fitColumns="false" pageList="[5,10]" singleSelect="true" pageSize="5" >
				<thead>
					<tr>
						<th field="prizerank" width="100">获奖排名</th>
						<th field="prizetitle" width="100">奖项名称</th>
						<th field="prizeresultname" width="120" >成果名称</th>
						<th field="prizelevel" width="100">奖励等级</th>
						<th field="prizetype" width="100">成果类别</th>
						<th field="prizedep" width="100">授奖部门</th>
						<th field="prizedate" width="80">获奖时间</th>
						<th field="prizeno" width="100">证书编号</th>
					</tr>
				</thead>
			</table>
			<div id="keyanPrizetoolbar">
				<a href="javascript:void(0)" class="easyui-linkbutton"
					iconCls="icon-remove" plain="true" onclick="deletePrize('keyan')">删除</a>
			</div>
			
		</div>
		<div title="学术兼职" style="padding:20px;" id="Tab5"> 
			<div class="ftitle">学术兼职</div>
			<div id="partJobRow" class="fitem">
			</div>
				<table id="partJobdg" title="列表" class="easyui-datagrid"
				style="width: 1300px; height: 250px" url="Teacher_queryPartJob"
				toolbar="#partJobtoolbar" pagination="true" rownumbers="true"
				fitColumns="false" pageList="[5,10]" singleSelect="true" pageSize="5" >
				<thead>
					<tr>
						<th field="partplace" width="150">学会/协会/期刊名称</th>
						<th field="partjob" width="150">在学会/协会/期刊中职务</th>
						<th field="partbegintime" width="120" >任职开始时间</th>
						<th field="partendtime" width="100">任职截止时间</th>
						<th field="partlevel" width="150">学会/协会/期刊级别</th>
						<th field="parttopay" width="150">是否需要交纳会费 </th>
						<th field="partofmoney" width="100">交纳金额</th>
					</tr>
				</thead>
			</table>
			<div id="partJobtoolbar">
				<a href="javascript:void(0)" class="easyui-linkbutton"
					iconCls="icon-remove" plain="true" onclick="deletePartJob()">删除</a>
			</div>
		</div>
		<div title="荣誉及其他" style="padding:20px;" id="Tab5"> 
			<div class="ftitle">荣誉及其他</div>
			<div id="honorRow" class="fitem">
			</div>
				<table id="honordg" title="列表" class="easyui-datagrid"
				style="width: 850px; height: 250px" url="Teacher_queryHonor"
				toolbar="#honortoolbar" pagination="true" rownumbers="true"
				fitColumns="false" pageList="[5,10]" singleSelect="true" pageSize="5" >
				<thead>
					<tr>
						<th field="honortitle" width="150">荣誉名称</th>
						<th field="honorleave" width="150">荣誉级别</th>
						<th field="honordep" width="120" >授予部门</th>
						<th field="honorremark" width="380">备注</th>
					</tr>
				</thead>
			</table>
			<div id="honortoolbar">
				<a href="javascript:void(0)" class="easyui-linkbutton"
					iconCls="icon-remove" plain="true" onclick="deleteHonor()">删除</a>
			</div>
			
		</div>
	</div>
	</div>
	<div id="keyandlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-cancel"
			onclick="javascript:$('#keyandlg').dialog('close')">取消</a>
	</div>
	<script>
	setTimeout("loadContent();",2000);//延时2秒 
	function loadContent() {
		$('#projectRow').load('${request_path}/admin/teacher/teacher_teachResearch.jsp'); 
		$('#teachpaperRow').load('${request_path}/admin/teacher/teachPaper.jsp'); 
		$('#honorRow').load('${request_path}/admin/teacher/honor.jsp'); 
		$('#paperRow').load('${request_path}/admin/teacher/keyanPaper.jsp'); 
		$('#prizeRow').load('${request_path}/admin/teacher/keyanPrize.jsp'); 
		$('#keyanprojectRow').load('${request_path}/admin/teacher/keyanResearch.jsp'); 
		$('#workRow').load('${request_path}/admin/teacher/keyanWork.jsp'); 
		$('#partJobRow').load('${request_path}/admin/teacher/partJob.jsp'); 
		$('#speakerprizeRow').load('${request_path}/admin/teacher/speakerprize.jsp'); 
		$('#teachprizeRow').load('${request_path}/admin/teacher/teachPrize.jsp'); 
		$('#teachworkRow').load('${request_path}/admin/teacher/teachWork.jsp'); 
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
// 			 var startTime,endTime; 
// 			 var d=new Date(); 
// 			 startTime=d.getTime(); 
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
			$('#teacherdlg').dialog('open').dialog('setTitle',
					'编辑教师');
			$('#teacherfm').form('clear');
			$('#teacherfm').form('load', row);
			$('#img_photo').show();
			$('#img_photo').attr('src',row.iimageurll);
// 			alert(JSON.stringify(row));
			//从后台获取数据
			$.ajax({
				type : 'post',
				url : 'Teacher_queryTeacherOtherInfo?teacherId='+row.id,
				async:false,
				success : function(datas) {
					var json = eval('(' + datas + ')'); 
// 					paperList = json.tPaper;
//  					prizeList = json.tPrize;
 					subjectList = json.subject;
//  					workList = json.tWork;
 					
 					if(subjectList!=""){
						$('#subject').combogrid('setValues', subjectList.split(","));
					}
				},
				error : function() {
					jAlert('系统错误，请联系管理员','错误提示');
				}
			});
// 			dispalyAllUploader(paperList.length);
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
    			url : url,
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
	}
	
	//销毁所有上传控件
	function destroyAllUploader(){
		uploaderForPic.destroy();
	}
	
	//隐藏所有上传控件
	function dispalyAllUploader(paperSize){
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
	
	function editForTeach() {
		var row = $('#teacherdg').datagrid('getSelected');
		if (row) {
			$('#teacherNameForSave').val(row.teachername);
			$('#teacherIdForSave').val(row.id);
			$('#teachdlg').dialog('open').dialog('setTitle',
					'编辑教学信息');
			$('#teachfm').form('clear');
			$('#teachfm').form('load', row);
			$('#teachResearchdg').datagrid('load', {
				teacherId : row.id
			});
			
			$('#teachPaperdg').datagrid('load', {
				teacherId : row.id
			});
			$('#teachWorkdg').datagrid('load', {
				teacherId : row.id
			});
			$('#teachPrizedg').datagrid('load', {
				teacherId : row.id
			});
			$('#speakerPrizedg').datagrid('load', {
				teacherId : row.id
			});
		}
	}
	function saveRearch(typeval) {
		var teachername = $('#teacherNameForSave').val();
		var teacherId = $('#teacherIdForSave').val();
		var formId = null;
		if(typeval == 'teach'){
			formId = 'teachResearchfm';
		}else if(typeval == 'keyan'){
			formId = 'keyanResearchfm';
		}
		$('#'+formId).form('submit', {
			url : 'Teacher_saveResearch?id=' + teacherId+'&type='+typeval+'&name='+encodeURI(encodeURI(teachername)),
			onSubmit : function() {
				return $(this).form('validate');
			},
			success : function(result) {
				if (result != "true") {
					jAlert('系统错误，请联系管理员', '错误提示');
				} else {
					if(typeval == 'teach'){
						$('#teachResearchdg').datagrid('reload'); // reload the user data
					}else if(typeval == 'keyan'){
						$('#keyanResearchdg').datagrid('reload'); // reload the user data
					}
					
				}
			}
		});
	}
	
	//删除立项
	function destroyResearch(typeval) {
		var row = null;
		if(typeval == 'teach'){
			row = $('#teachResearchdg').datagrid('getSelected');
		}else if(typeval == 'keyan'){
			row = $('#keyanResearchdg').datagrid('getSelected');
		}
		if (row) {
			$.messager.confirm('确认', '是否要删除?', function(r) {
				if (r) {
					$.post('Teacher_deleteResearch', {
						id : row.researchid
					}, function(result) {
						if (result = "true") {
							if(typeval == 'teach'){
								$('#teachResearchdg').datagrid('reload'); // reload the user data
							}else if(typeval == 'keyan'){
								$('#keyanResearchdg').datagrid('reload'); // reload the user data
							}
						} else {
							jAlert('系统错误，请联系管理员', '错误提示');
						}
					}, 'json');
// 					$('#teachResearchdg').datagrid('reload'); // reload the user data
				}
			});
		}
	}
	
	function editForkeyan() {
		var row = $('#teacherdg').datagrid('getSelected');
		if (row) {
			$('#teacherNameForSave').val(row.teachername);
			$('#teacherIdForSave').val(row.id);
			$('#keyandlg').dialog('open').dialog('setTitle',
					'编辑科研信息');
			$('#keyanfm').form('clear');
			$('#keyanResearchdg').datagrid('load', {
				teacherId : row.id
			});
			
			$('#keyanPaperdg').datagrid('load', {
				teacherId : row.id
			});
			
			$('#keyanWorkdg').datagrid('load', {
				teacherId : row.id
			});
			
			$('#keyanPrizedg').datagrid('load', {
				teacherId : row.id
			});
			
			$('#partJobdg').datagrid('load', {
				teacherId : row.id
			});
			
			$('#honordg').datagrid('load', {
				teacherId : row.id
			});
			
			
		}
	}
	
	function savePaper(typeval) {
		var teachername = $('#teacherNameForSave').val();
		var teacherId = $('#teacherIdForSave').val();
		var formId = null;
		if(typeval == 'teach'){
			formId = 'teachPaperfm';
		}else if(typeval == 'keyan'){
			formId = 'keyanPaperfm';
		}
		$('#'+formId).form('submit', {
			url : 'Teacher_savePaper?id=' + teacherId+'&type='+typeval+'&name='+encodeURI(encodeURI(teachername)),
			onSubmit : function() {
				return $(this).form('validate');
			},
			success : function(result) {
				if (result != "true") {
					jAlert('系统错误，请联系管理员', '错误提示');
				} else {
					if(typeval == 'teach'){
						$('#teachPaperdg').datagrid('reload'); // reload the user data
					}else if(typeval == 'keyan'){
						$('#keyanPaperdg').datagrid('reload'); // reload the user data
					}
					
				}
			}
		});
	}
	//删除论文
	function deletePaper(typeval) {
		var row = null;
		if(typeval == 'teach'){
			row = $('#teachPaperdg').datagrid('getSelected');
		}else if(typeval == 'keyan'){
			row = $('#keyanPaperdg').datagrid('getSelected');
		}
		if (row) {
			$.messager.confirm('确认', '是否要删除?', function(r) {
				if (r) {
					$.post('Teacher_deletePaper', {
						id : row.paperid
					}, function(result) {
						if (result = "true") {
							if(typeval == 'teach'){
								$('#teachPaperdg').datagrid('reload'); // reload the user data
							}else if(typeval == 'keyan'){
								$('#keyanPaperdg').datagrid('reload'); // reload the user data
							}
						} else {
							jAlert('系统错误，请联系管理员', '错误提示');
						}
					}, 'json');
// 					$('#teachResearchdg').datagrid('reload'); // reload the user data
				}
			});
		}
	}
	
	function saveWork(typeval) {
		var teachername = $('#teacherNameForSave').val();
		var teacherId = $('#teacherIdForSave').val();
		var formId = null;
		if(typeval == 'teach'){
			formId = 'teachWorkfm';
		}else if(typeval == 'keyan'){
			formId = 'keyanWorkfm';
		}
		$('#'+formId).form('submit', {
			url : 'Teacher_saveWork?id=' + teacherId+'&type='+typeval+'&name='+encodeURI(encodeURI(teachername)),
			onSubmit : function() {
				return $(this).form('validate');
			},
			success : function(result) {
				if (result != "true") {
					jAlert('系统错误，请联系管理员', '错误提示');
				} else {
					if(typeval == 'teach'){
						$('#teachWorkdg').datagrid('reload'); // reload the user data
					}else if(typeval == 'keyan'){
						$('#keyanWorkdg').datagrid('reload'); // reload the user data
					}
					
				}
			}
		});
	}
	
	//删除论文
	function deleteWork(typeval) {
		var row = null;
		if(typeval == 'teach'){
			row = $('#teachWorkdg').datagrid('getSelected');
		}else if(typeval == 'keyan'){
			row = $('#keyanWorkdg').datagrid('getSelected');
		}
		if (row) {
			$.messager.confirm('确认', '是否要删除?', function(r) {
				if (r) {
					$.post('Teacher_deleteWork', {
						id : row.workid
					}, function(result) {
						if (result = "true") {
							if(typeval == 'teach'){
								$('#teachWorkdg').datagrid('reload'); // reload the user data
							}else if(typeval == 'keyan'){
								$('#keyanWorkdg').datagrid('reload'); // reload the user data
							}
						} else {
							jAlert('系统错误，请联系管理员', '错误提示');
						}
					}, 'json');
// 					$('#teachResearchdg').datagrid('reload'); // reload the user data
				}
			});
		}
	}
	
	function savePrize(typeval) {
		var teachername = $('#teacherNameForSave').val();
		var teacherId = $('#teacherIdForSave').val();
		var formId = null;
		if(typeval == 'teach'){
			formId = 'teachPrizefm';
		}else if(typeval == 'keyan'){
			formId = 'keyanPrizefm';
		}else if(typeval == 'speaker'){
			formId = 'speakerPrizefm';
		}
		$('#'+formId).form('submit', {
			url : 'Teacher_savePrize?id=' + teacherId+'&type='+typeval+'&name='+encodeURI(encodeURI(teachername)),
			onSubmit : function() {
				return $(this).form('validate');
			},
			success : function(result) {
				if (result != "true") {
					jAlert('系统错误，请联系管理员', '错误提示');
				} else {
					if(typeval == 'teach'){
						$('#teachPrizedg').datagrid('reload'); // reload the user data
					}else if(typeval == 'keyan'){
						$('#keyanPrizedg').datagrid('reload'); // reload the user data
					}else if(typeval == 'speaker'){
						$('#speakerPrizedg').datagrid('reload'); // reload the user data
					}
					
				}
			}
		});
	}
	
	//删除论文
	function deletePrize(typeval) {
		var row = null;
		if(typeval == 'teach'){
			row = $('#teachPrizedg').datagrid('getSelected');
		}else if(typeval == 'keyan'){
			row = $('#keyanPrizedg').datagrid('getSelected');
		}else if(typeval == 'speaker'){
			row = $('#speakerPrizedg').datagrid('getSelected');
		}
		if (row) {
			$.messager.confirm('确认', '是否要删除?', function(r) {
				if (r) {
					$.post('Teacher_deletePrize', {
						id : row.prizeid
					}, function(result) {
						if (result = "true") {
							if(typeval == 'teach'){
								$('#teachPrizedg').datagrid('reload'); // reload the user data
							}else if(typeval == 'keyan'){
								$('#keyanPrizedg').datagrid('reload'); // reload the user data
							}else if(typeval == 'speaker'){
								$('#speakerPrizedg').datagrid('reload'); // reload the user data
							}
						} else {
							jAlert('系统错误，请联系管理员', '错误提示');
						}
					}, 'json');
// 					$('#teachResearchdg').datagrid('reload'); // reload the user data
				}
			});
		}
	}
	
	function savePartJob() {
		var teachername = $('#teacherNameForSave').val();
		var teacherId = $('#teacherIdForSave').val();
		$('#partJobfm').form('submit', {
			url : 'Teacher_savePartJob?id=' + teacherId+'&name='+encodeURI(encodeURI(teachername)),
			onSubmit : function() {
				return $(this).form('validate');
			},
			success : function(result) {
				if (result != "true") {
					jAlert('系统错误，请联系管理员', '错误提示');
				} else {
						$('#partJobdg').datagrid('reload'); // reload the user data
				}
			}
		});
	}
	
	//删除
	function deletePartJob() {
		var row = $('#partJobdg').datagrid('getSelected');
		if (row) {
			$.messager.confirm('确认', '是否要删除?', function(r) {
				if (r) {
					$.post('Teacher_deletePartJob', {
						id : row.partid
					}, function(result) {
						if (result = "true") {
							$('#partJobdg').datagrid('reload'); // reload the user data
						} else {
							jAlert('系统错误，请联系管理员', '错误提示');
						}
					}, 'json');
// 					$('#teachResearchdg').datagrid('reload'); // reload the user data
				}
			});
		}
	}
	
	function saveHonor() {
		var teachername = $('#teacherNameForSave').val();
		var teacherId = $('#teacherIdForSave').val();
		$('#honorfm').form('submit', {
			url : 'Teacher_saveHonor?id=' + teacherId+'&name='+encodeURI(encodeURI(teachername)),
			onSubmit : function() {
				return $(this).form('validate');
			},
			success : function(result) {
				if (result != "true") {
					jAlert('系统错误，请联系管理员', '错误提示');
				} else {
						$('#honordg').datagrid('reload'); // reload the user data
				}
			}
		});
	}
	
	//删除
	function deleteHonor() {
		var row = $('#honordg').datagrid('getSelected');
		if (row) {
			$.messager.confirm('确认', '是否要删除?', function(r) {
				if (r) {
					$.post('Teacher_deleteHonor', {
						id : row.honorid
					}, function(result) {
						if (result = "true") {
							$('#honordg').datagrid('reload'); // reload the user data
						} else {
							jAlert('系统错误，请联系管理员', '错误提示');
						}
					}, 'json');
// 					$('#teachResearchdg').datagrid('reload'); // reload the user data
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