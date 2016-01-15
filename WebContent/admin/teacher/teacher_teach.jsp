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
<title>${sitename}--后台管理系统--师资队伍</title>
</head>
<body>

<div id="teachertb" style="padding: 5px; height: auto">
	</div>
	<input type="hidden" id="teacherIdForSave"> 
	<input type="hidden" id="teacherNameForSave"> 
	<table id="teacherdg2" title="列表" class="easyui-datagrid"
		style="width: auto; height: 616px" url="Teacher_query"
		toolbar="#teachertoolbar2" pagination="true" rownumbers="true"
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
	<div id="teachertoolbar2">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editForTeach()">教学信息</a>
	</div>
	<div id="teachdlg" class="easyui-dialog"
		style="width: 800px; height: 620px; padding: 20px 20px;overflow: visible;" closed="true"
		buttons="#teachdlg-buttons">
		<div id="teach_tab" class="easyui-tabs" style="height: 616px"
			data-options="fit:true,border:false,plain:true" >
			<div title="教改立项" style="padding:20px;" id="Tab1"> 
				<div class="ftitle">教改立项</div>
				<div id="projectRow" class="fitem">
				<form id="teachResearchfm" method="post" novalidate>
				<span class="span_column" >
					<label style="width: 85px;text-align: right;">项目类别:</label>
					<select id="teachresearchlevel" name="teachresearchlevel" class="easyui-combobox" panelHeight="auto" editable="false"
						style="width: 110px">
						<option value="省级">省级</option>
						<option value="校级">校级</option>
						<option value="省级研究生项目">省级研究生项目</option>
					</select>
				</span>
				<span class="span_column" >
					<label style="width: 85px;text-align: right;">是否在研:</label> 
					<select id="teachisresearch" name="teachisresearch" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 140px" >
							<option value="是">是</option>
							<option value="否">否</option>
					</select>
				</span>
				<span class="span_column" >
					<label style="width: 85px;text-align: right;">教师排名:</label>
					<select id="teachresearchrank" name="teachresearchrank" class="easyui-combobox" panelHeight="auto" editable="false"
						style="width: 110px" >
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
					</select>
				</span>
				<br><br>
				<span class="span_column_sm" >
					<label style="width: 85px;text-align: right;">项目名称:</label>
					<input id="teachresearchname" name="teachresearchname" style="width: 110px"
						class="easyui-validatebox"  maxlength="20">
				</span>
				<span class="span_column_sm" >
					<label style="width: 85px;text-align: right;">项目编号:</label>
					<input id="teachresearchno" name="teachresearchno" maxlength="20" style="width: 110px"
						class="easyui-validatebox" >
				</span>
				<span class="span_column_sm">
					<label style="width: 85px;text-align: right;">项目开始时间:</label> 
<!-- 					<input id="teachresearchbegindate" name="teachresearchbegindate" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  /> -->
					<div id="researchbegindate" name="researchbegindate" data-options="formatter:ww4,parser:w4"></div>
				</span>
				<br><br>
				<span class="span_column_sm" >
					<label style="width: 90px;text-align: right;">项目结束时间:</label> 
<!-- 					<input id="teachresearchenddate" name="teachresearchenddate" type="date" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  /> -->
					<div id="teachresearchenddate" name="teachresearchenddate" data-options="formatter:ww4,parser:w4"></div>
				</span>
				<span class="span_column_sm" >
					<label style="width: 90px;text-align: right;">结题等级:</label> 
					<select id="teachresearchknot" name="teachresearchknot" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 100px" >
							<option value="优秀">优秀</option>
							<option value="良好">良好</option>
							<option value="合格">合格</option>
							<option value="其他">其他</option>
					</select>
				</span>
				<br><br>
				<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveRearch('teach')">保存</a>
				</form>
				<hr  style="border-bottom:1px dashed;"><br>
				</div>
				<table id="teachResearchdg"></table>
<!-- 				<table id="teachResearchdg" title="列表" class="easyui-datagrid" -->
<!-- 					style="width: auto; height: 250px" url="Teacher_queryTeachResearch" -->
<!-- 					toolbar="#teachResearchtoolbar" pagination="true" rownumbers="true" -->
<!-- 					fitColumns="true" pageList="[5,10]" singleSelect="true" pageSize="5" > -->
<!-- 					<thead> -->
<!-- 						<tr> -->
<!-- 							<th field="researchlevel" width="50">项目类别</th> -->
<!-- 							<th field="researchrank" width="30" >教师排名</th> -->
<!-- 							<th field="isresearch" width="30">是否在研</th> -->
<!-- 							<th field="researchname" width="20">项目名称</th> -->
<!-- 							<th field="researchno" width="20">项目编号</th> -->
<!-- 							<th field="researchbegindate" width="20">项目开始时间</th> -->
<!-- 							<th field="researchenddate" width="20">项目结束时间</th> -->
<!-- 							<th field="researchknot" width="20">结题等级</th> -->
<!-- 						</tr> -->
<!-- 					</thead> -->
<!-- 				</table> -->
				<div id="teachResearchtoolbar">
					<a href="javascript:void(0)" class="easyui-linkbutton"
						iconCls="icon-remove" plain="true" onclick="destroyResearch('teach')">删除</a>
				</div>
			</div>
			<div title="教改论文" style="padding:20px;" id="Tab2"> 
				<div class="ftitle">教改论文</div>
				<div id="teachpaperRow" class="fitem">
				<form id="teachPaperfm" method="post" novalidate>
					<span class="span_column_sm" >
					<label style="width: 85px;text-align: right;">论文题目:</label>
						<input id="teachpapername" name="teachpapername" style="width: 110px" class="easyui-validatebox"  maxlength="60">
					</span>
					<span class="span_column_sm">
					<label style="width: 85px;text-align: right;">作者排名:</label>
						<select id="teachpaperauthor" name="teachpaperauthor" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 110px" >
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select>
					</span>
					<span class="span_column_sm" >
					<label style="width: 85px;text-align: right;">发表刊物/论文集名称:</label>
						<input id="teachpapernotename" name="teachpapernotename" maxlength="50"
							class="easyui-validatebox"  style="width: 110px" ></span>
					<br><br>	
					<span class="span_column_sm" >
					<label style="width: 85px;text-align: right;">刊物国别:</label>
						<input id="teachpapernotecountry" name="teachpapernotecountry"
							class="easyui-validatebox"  maxlength="20" style="width: 110px" ></span>
					<span class="span_column_sm">
						<label style="width: 85px;text-align: right;">发表/出版时间:</label> 
<!-- 						<input id="teachpapernotedate" name="teachpapernotedate" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  /> -->
						<div id="teachpapernotedate" name="teachpapernotedate" data-options="formatter:ww4,parser:w4"></div>
					</span>
					<span class="span_column_sm" >
					<label style="width: 85px;text-align: right;">期号（卷号）:</label>
						<input id="teachpapernoteno" name="teachpapernoteno"
							class="easyui-numberbox"  style="width: 110px"  maxlength="20"></span>
					<br><br>
					<span class="span_column_sm" >
					<label style="width: 85px;text-align: right;">页码:</label>
						<input id="teachpapernotepage" name="teachpapernotepage" maxlength="5"
							class="easyui-validatebox"  style="width: 110px" ></span>
					<span class="span_column_sm" >
						<label style="width: 85px;text-align: right;">论文收录:</label> 
						<select id="teachpaperincluded" name="teachpaperincluded" class="easyui-combobox" panelHeight="auto" editable="false"
								style="width: 110px" >
								<option value="SCI">SCI</option>
								<option value="SSCI">SSCI</option>
								<option value="EI">EI</option>
								<option value="A&HCI">A&HCI</option>
								<option value="CSSCI">CSSCI</option>
								<option value="CSSCI扩展">CSSCI扩展</option>
								<option value="中文核心">中文核心</option>
						</select>
					</span>
					<span class="span_column_sm" >
					<label style="width: 85px;text-align: right;">影响因子:</label>
						<input id="teachpaperfactors" name="teachpaperfactors" maxlength="50"
							class="easyui-validatebox"  style="width: 110px" ></span>
					<br><br>
					<span class="span_column_sm" >
						<label style="width: 85px;text-align: right;">论文转载:</label> 
						<select id="teachpaperreprint" name="teachpaperreprint" class="easyui-combobox" panelHeight="auto" editable="false"
								style="width: 110px" >
								<option value="是">是</option>
								<option value="否">否</option>
						</select>
					</span>
					<span class="span_column_sm" >
					<label style="width: 85px;text-align: right;">资助项目编号:</label>
						<input id="teachpaperprojectno" name="teachpaperprojectno" maxlength="20"
							class="easyui-validatebox"  style="width: 110px" ></span>
					<br><br>
<%-- 					<span class="span_column_sm" style="width:100%;" id="teachpaperObj"> <label>论文电子版:</label>  --%>
<!-- 						<input type="button" value="选择文件..." id="teachbrowsePaper" /> -->
<%-- 						<input type="button" value="清空" id="teachpaper-clear-btn" />&nbsp;&nbsp;<span class="tip2">(注意：只能上传20M以内的文件)</span> --%>
<%-- 					</span> --%>
<%-- 					<span id="file-list-paper"></span> --%>
					<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="savePaper('teach')">保存</a>
					</form>
					<hr  style="border-bottom:1px dashed;"><br>
					<table id="teachPaperdg"></table>
<!-- 					<table id="teachPaperdg" title="列表" class="easyui-datagrid" -->
<!-- 					style="width: 950px; height: 250px" url="Teacher_queryTeachPaper" -->
<!-- 					toolbar="#teachPapertoolbar" pagination="true" rownumbers="true" -->
<!-- 					fitColumns="false" pageList="[5,10]" singleSelect="true" pageSize="5" > -->
<!-- 					<thead> -->
<!-- 						<tr> -->
<!-- 							<th field="papername" width="100">论文题目</th> -->
<!-- 							<th field="paperauthor" width="60">作者排名</th> -->
<!-- 							<th field="papernotename" width="120" >发表刊物/论文集名称</th> -->
<!-- 							<th field="papernotecountry" width="60">刊物国别</th> -->
<!-- 							<th field="papernotedate" width="100">发表/出版时间</th> -->
<!-- 							<th field="papernoteno" width="80">期号（卷号）</th> -->
<!-- 							<th field="papernotepage" width="50">页码</th> -->
<!-- 							<th field="paperincluded" width="100">论文收录</th> -->
<!-- 							<th field="paperfactors" width="60">影响因子</th> -->
<!-- 							<th field="paperreprint" width="60">论文转载</th> -->
<!-- 							<th field="paperprojectno" width="100">资助项目编号</th> -->
<!-- 						</tr> -->
<!-- 					</thead> -->
<!-- 				</table> -->
				<div id="teachPapertoolbar">
					<a href="javascript:void(0)" class="easyui-linkbutton"
						iconCls="icon-remove" plain="true" onclick="deletePaper('teach')">删除</a>
				</div></div>
			</div>
			<div title="教材出版" style="padding:20px;" id="Tab3"> 
				<div class="ftitle">教材出版</div>
				<div id="teachworkRow" class="fitem">
				<form id="teachWorkfm" method="post" novalidate>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">作者排名:</label>
						<select id="teachworkAuthorRank" name="teachworkAuthorRank" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 110px" >
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select>
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">教材名称:</label>
						<input id="teachworkTitle" name="teachworkTitle" maxlength="50" class="easyui-validatebox" style="width: 110px;">
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">出版单位:</label>
						<input id="teachworkPublishUnit" name="teachworkPublishUnit" maxlength="50" class="easyui-validatebox" style="width: 110px;">
					</span>
					<br><br>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">出版地:</label>
						<input id="teachworkPublishArea" name="teachworkPublishArea" maxlength="50" style="width: 110px;" class="easyui-validatebox" >
					</span>
					<span class="span_column_sm">
						<label  style="width: 85px;text-align: right;">出版时间:</label> 
<!-- 						<input id="teachworkPublishTime" name="teachworkPublishTime" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  /> -->
						<div id="teachworkPublishTime" name="teachworkPublishTime" data-options="formatter:ww4,parser:w4"></div>
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">已出几版:</label>
						<input id="teachalreadyPublish" name="teachalreadyPublish" maxlength="2" style="width: 110px;" class="easyui-validatebox" >
					</span>
					<br><br>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">ISBN号:</label>
						<input id="teachisbnNO" name="teachisbnNO" maxlength="20" style="width: 110px;" class="easyui-validatebox" >
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">资助项目编号:</label>
						<input id="teachprojectno" name="teachprojectno" maxlength="20" style="width: 110px;" class="easyui-validatebox" >
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">自己承担字数/全书总字数:</label>
						<input id="teachtotalWord" name="teachtotalWord" maxlength="10" style="width: 110px;" class="easyui-validatebox" >（千）
					</span>
					<br><br>
					<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveWork('teach')">保存</a>
					</form>
				<hr  style="border-bottom:1px dashed;"><br>
				<table id="teachWorkdg"></table>
<!-- 				<table id="teachWorkdg" title="列表" class="easyui-datagrid" -->
<!-- 					style="width: 1100px; height: 250px" url="Teacher_queryTeachWork" -->
<!-- 					toolbar="#teachWorktoolbar" pagination="true" rownumbers="true" -->
<!-- 					fitColumns="false" pageList="[5,10]" singleSelect="true" pageSize="5" > -->
<!-- 					<thead> -->
<!-- 						<tr> -->
<!-- 							<th field="workauthorrank" width="100">作者排名</th> -->
<!-- 							<th field="worktitle" width="100">教材名称</th> -->
<!-- 							<th field="workpublishunit" width="120" >出版单位</th> -->
<!-- 							<th field="workpublisharea" width="100">出版地</th> -->
<!-- 							<th field="workpublishtime" width="100">出版时间</th> -->
<!-- 							<th field="alreadypublish" width="100">已出几版</th> -->
<!-- 							<th field="isbnno" width="100">ISBN号</th> -->
<!-- 							<th field="projectno" width="150">资助项目编号</th> -->
<!-- 							<th field="totalword" width="150">自己承担字数/全书总字数</th> -->
<!-- 						</tr> -->
<!-- 					</thead> -->
<!-- 				</table> -->
				<div id="teachWorktoolbar">
					<a href="javascript:void(0)" class="easyui-linkbutton"
						iconCls="icon-remove" plain="true" onclick="deleteWork('teach')">删除</a>
				</div>
				</div>
			</div>
			<div title="优秀主讲师" style="padding:20px;" id="Tab4"> 
				<div class="ftitle">优秀主讲师</div>
				<div id="speakerprizeRow" class="fitem">
				<form id="speakerPrizefm" method="post" novalidate>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">奖项名称:</label>
						<select id="speakerprizetitle" name="speakerprizetitle" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 110px" >
							<option value="本科生优秀主讲教师">本科生优秀主讲教师</option>
							<option value="研究生优秀主讲教师">研究生优秀主讲教师</option>
							<option value="通识课优秀主讲教师">通识课优秀主讲教师</option>
							<option value="优秀硕士生指导教师">优秀硕士生指导教师</option>
						</select>
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">奖励等级:</label>
						<select id="speakerprizelevel" name="speakerprizelevel" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 110px" >
							<option value="一等奖">一等奖</option>
							<option value="二等奖">二等奖</option>
							<option value="三等奖">三等奖</option>
							<option value="优秀青年授课教师">优秀青年授课教师</option>
						</select>
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">授奖部门:</label>
						<input id="speakerprizedep" name="speakerprizedep" maxlength="20" style="width: 110px;" class="easyui-validatebox" >
					</span>
					<br><br>
					<span class="span_column">
						<label  style="width: 85px;text-align: right;">获奖时间:</label> 
<!-- 						<input id="speakerrizedate" name="speakerprizedate" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  /> -->
						<div id="speakerrizedate" name="speakerrizedate" data-options="formatter:ww4,parser:w4"></div>
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">证书编号:</label>
						<input id="speakerprizeno" name="speakerprizeno" maxlength="20" style="width: 110px;" class="easyui-validatebox" >
					</span>
  					<br><br>
				<hr  style="border-bottom:1px dashed;"><br>
				<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="savePrize('speaker')">保存</a>
				</form>
				<table id="speakerPrizedg"></table>
<!-- 				<table id="speakerPrizedg" title="列表" class="easyui-datagrid" -->
<!-- 				style="width: 1300px; height: 250px" url="Teacher_querySpeakerPrize" -->
<!-- 				toolbar="#speakerPrizetoolbar" pagination="true" rownumbers="true" -->
<!-- 				fitColumns="false" pageList="[5,10]" singleSelect="true" pageSize="5" > -->
<!-- 				<thead><tr> -->
<!-- 						<th field="prizetitle" width="100">奖项名称</th> -->
<!-- 						<th field="prizelevel" width="100">奖励等级</th> -->
<!-- 						<th field="prizedep" width="100">授奖部门</th> -->
<!-- 						<th field="prizedate" width="80">获奖时间</th> -->
<!-- 						<th field="prizeno" width="100">证书编号</th> -->
<!-- 					</tr></thead> -->
<!-- 			</table> -->
			<div id="speakerPrizetoolbar">
				<a href="javascript:void(0)" class="easyui-linkbutton"
					iconCls="icon-remove" plain="true" onclick="deletePrize('speaker')">删除</a>
			</div></div></div>
			<div title="教学成果奖" style="padding:20px;" id="Tab5"> 
				<div class="ftitle">教学成果奖</div>
				<div id="teachprizeRow" class="fitem">
				<form id="teachPrizefm" method="post" novalidate>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">作者排名:</label>
						<select id="teachprizerank" name="teachprizerank" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 110px" >
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select>
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">奖项名称:</label>
						<input id="teachprizetitle" name="teachprizetitle" maxlength="50" style="width: 110px;" class="easyui-validatebox" >
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">成果名称:</label>
						<input id="teachprizeresultname" name="teachprizeresultname" maxlength="20" style="width: 110px;" class="easyui-validatebox" >
					</span>
					<br><br>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">奖励等级:</label>
						<select id="teachprizelevel" name="teachprizelevel" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 110px" >
							<option value="特等奖">特等奖</option>
							<option value="一等奖">一等奖</option>
							<option value="二等奖">二等奖</option>
							<option value="三等奖">三等奖</option>
							<option value="其它">其它</option>
						</select>
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">成果类别 :</label>
						<select id="teachprizetype" name="teachprizetype" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 110px" >
							<option value="教改论文">教改论文</option>
							<option value="教材">教材</option>
							<option value="研究报告">研究报告</option>
							<option value="其它">其它</option>
						</select>
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">授奖部门:</label>
						<input id="teachprizedep" name="teachprizedep" maxlength="20" style="width: 110px;" class="easyui-validatebox" >
					</span>
					<br><br>
					<span class="span_column">
						<label  style="width: 85px;text-align: right;">获奖时间:</label> 
<!-- 						<input id="teachprizedate" name="teachprizedate" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  /> -->
						<div id="teachprizedate" name="teachprizedate" data-options="formatter:ww4,parser:w4"></div>
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">证书编号:</label>
						<input id="teachprizeno" name="teachprizeno" maxlength="20" style="width: 110px;" class="easyui-validatebox" >
					</span>
  					<br><br>
				<hr  style="border-bottom:1px dashed;"><br>
				<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="savePrize('teach')">保存</a>
				</form>
				<table id="teachPrizedg"></table>
<!-- 				<table id="teachPrizedg" title="列表" class="easyui-datagrid" -->
<!-- 				style="width: 1300px; height: 250px" url="Teacher_queryTeachPrize" -->
<!-- 				toolbar="#teachPrizetoolbar" pagination="true" rownumbers="true" -->
<!-- 				fitColumns="false" pageList="[5,10]" singleSelect="true" pageSize="5" > -->
<!-- 				<thead> -->
<!-- 					<tr> -->
<!-- 						<th field="prizerank" width="100">获奖排名</th> -->
<!-- 						<th field="prizetitle" width="100">奖项名称</th> -->
<!-- 						<th field="prizeresultname" width="120" >成果名称</th> -->
<!-- 						<th field="prizelevel" width="100">奖励等级</th> -->
<!-- 						<th field="prizetype" width="100">成果类别</th> -->
<!-- 						<th field="prizedep" width="100">授奖部门</th> -->
<!-- 						<th field="prizedate" width="80">获奖时间</th> -->
<!-- 						<th field="prizeno" width="100">证书编号</th> -->
<!-- 					</tr> -->
<!-- 				</thead> -->
<!-- 			</table> -->
			<div id="teachPrizetoolbar">
				<a href="javascript:void(0)" class="easyui-linkbutton"
					iconCls="icon-remove" plain="true" onclick="deletePrize('teach')">删除</a>
			</div></div></div>
		</div>
	</div>
	<div id="teachdlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-cancel"
			onclick="javascript:$('#teachdlg').dialog('close')">取消</a>
	</div>
	
	<script>
	var url;
	function loadTeachResearchdg(teacherId){
		using('datagrid', function(){
			$('#teachResearchdg').datagrid({
				title:'列表',
				width:900,
				height:250,
				fitColumns:false,
				url:'Teacher_queryTeachResearch?teacherId='+teacherId,
				toolbar:'#teachResearchtoolbar',
				pagination:true, 
				rownumbers:true,
				pageList:'[5,10]',
				singleSelect:true,
				pageSize:5,
				columns:[[
					{field:'researchlevel',title:'项目类别',width:60},
					{field:'researchrank',title:'教师排名',width:60},
					{field:'isresearch',title:'是否在研',width:60},
					{field:'researchname',title:'项目名称',width:120},
					{field:'researchno',title:'项目编号',width:130},
					{field:'researchbegindate',title:'项目开始时间',width:90},
					{field:'researchenddate',title:'项目结束时间',width:90},
					{field:'researchknot',title:'结题等级',width:90}
					]]
			});
		});
	}
	function loadTeachPaperdg(teacherId){
		using('datagrid', function(){
			$('#teachPaperdg').datagrid({
				title:'列表',
				width:1050,
				height:250,
				fitColumns:false,
				url:'Teacher_queryTeachPaper?teacherId='+teacherId,
				toolbar:'#teachPapertoolbar',
				pagination:true, 
				rownumbers:true,
				pageList:'[5,10]',
				singleSelect:true,
				pageSize:5,
				columns:[[
					{field:'papername',title:'论文题目',width:100},
					{field:'paperauthor',title:'作者排名',width:60},
					{field:'papernotename',title:'发表刊物/论文集名称',width:120},
					{field:'papernotecountry',title:'刊物国别',width:120},
					{field:'papernotedate',title:'发表/出版时间',width:100},
					{field:'papernoteno',title:'期号（卷号）',width:80},
					{field:'papernotepage',title:'页码',width:50},
					{field:'paperincluded',title:'论文收录',width:100},
					{field:'paperfactors',title:'影响因子',width:70},
					{field:'paperreprint',title:'论文转载',width:70},
					{field:'paperprojectno',title:'资助项目编号',width:100}
					]]
			});
		});
	}
	
	function loadTeachWorkdg(teacherId){
		using('datagrid', function(){
			$('#teachWorkdg').datagrid({
				title:'列表',
				width:1050,
				height:250,
				fitColumns:false,
				url:'Teacher_queryTeachWork?teacherId='+teacherId,
				toolbar:'#teachWorktoolbar',
				pagination:true, 
				rownumbers:true,
				pageList:'[5,10]',
				singleSelect:true,
				pageSize:5,
				columns:[[
					{field:'workauthorrank',title:'作者排名',width:60},
					{field:'worktitle',title:'教材名称',width:120},
					{field:'workpublishunit',title:'出版单位',width:120},
					{field:'workpublisharea',title:'出版地',width:100},
					{field:'workpublishtime',title:'出版时间',width:100},
					{field:'alreadypublish',title:'已出几版',width:100},
					{field:'isbnno',title:'ISBN号',width:100},
					{field:'projectno',title:'资助项目编号',width:150},
					{field:'totalword',title:'自己承担字数/全书总字数',width:150}
					]]
			});
		});
	}
	function loadSpeakerPrizedg(teacherId){
		using('datagrid', function(){
			$('#speakerPrizedg').datagrid({
				title:'列表',
				width:650,
				height:250,
				fitColumns:false,
				url:'Teacher_querySpeakerPrize?teacherId='+teacherId,
				toolbar:'#speakerPrizetoolbar',
				pagination:true, 
				rownumbers:true,
				pageList:'[5,10]',
				singleSelect:true,
				pageSize:5,
				columns:[[
					{field:'prizetitle',title:'奖项名称',width:130},
					{field:'prizelevel',title:'奖励等级',width:100},
					{field:'prizedep',title:'授奖部门',width:100},
					{field:'prizedate',title:'获奖时间',width:100},
					{field:'prizeno',title:'证书编号',width:120}
					]]
			});
		});
	}
	function loadTeachPrizedg(teacherId){
		using('datagrid', function(){
			$('#teachPrizedg').datagrid({
				title:'列表',
				width:850,
				height:250,
				fitColumns:false,
				url:'Teacher_queryTeachPrize?teacherId='+teacherId,
				toolbar:'#teachPrizetoolbar',
				pagination:true, 
				rownumbers:true,
				pageList:'[5,10]',
				singleSelect:true,
				pageSize:5,
				columns:[[
					{field:'prizerank',title:'获奖排名',width:100},
					{field:'prizetitle',title:'奖项名称',width:100},
					{field:'prizeresultname',title:'成果名称',width:100},
					{field:'prizelevel',title:'奖励等级',width:100},
					{field:'prizetype',title:'成果类别',width:100},
					{field:'prizedep',title:'授奖部门',width:100},
					{field:'prizedate',title:'获奖时间',width:100},
					{field:'prizeno',title:'证书编号',width:100}
					]]
			});
		});
	}
	function loadCalendarForTeach(){
		using('datebox', function(){
			$('#teachresearchbegindate').datebox({
				width:110
			});
			$('#teachresearchenddate').datebox({
				width:110
			});
			$('#teachpapernotedate').datebox({
				width:110
			});
			$('#teachworkPublishTime').datebox({
				width:110
			});
			$('#speakerrizedate').datebox({
				width:110
			});
			$('#teachprizedate').datebox({
				width:110
			});
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
		var row = $('#teacherdg2').datagrid('getSelected');
		if (row) {
			$('#teacherNameForSave').val(row.teachername);
			$('#teacherIdForSave').val(row.id);
			$('#teachdlg').dialog('open').dialog('setTitle',
					'编辑教学信息');
			$('#teachfm').form('clear');
			$('#teachfm').form('load', row);
// 			$('#teachResearchdg').datagrid('load', {
// 				teacherId : row.id
// 			});
// 			$('#teachPaperdg').datagrid('load', {
// 				teacherId : row.id
// 			});
// 			$('#teachWorkdg').datagrid('load', {
// 				teacherId : row.id
// 			});
// 			$('#teachPrizedg').datagrid('load', {
// 				teacherId : row.id
// 			});
// 			$('#speakerPrizedg').datagrid('load', {
// 				teacherId : row.id
// 			});
			loadCalendarForTeach();
			loadTeachPrizedg(row.id);
			loadTeachResearchdg(row.id);
			loadTeachPaperdg(row.id);
			loadTeachWorkdg(row.id);
			loadSpeakerPrizedg(row.id);
// 			if(uploaderForTp==null || uploaderForTp==undefined){
// 				createUploaderTP();
// //	 			createProject();
// 			}else{
// 				uploaderForTp.destroy();
// 				createUploaderTP();
// // 				deleteAllUploader();
// 			}
		}else{
			alert("请选择一条记录！");
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
				}
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
				}
			});
		}
	}
	
	var uploaderForTp;
	function createUploaderTP(){
		uploaderForTp = new plupload.Uploader({ //实例化一个plupload上传对象
			browse_button : 'teachbrowsePaper',
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
	        }
		});
		uploaderForTp.init(); //初始化
		//绑定文件上传删除事件
		uploaderForTp.bind('FilesRemoved',function(uploader,file){
			$('#file-list-paper').html("");
		});
		
		//清空按钮
		$('#clear-btn').click(function(){
			uploaderForTp.splice(0,10); 
		});
		
		//绑定文件添加进队列事件
		uploaderForTp.bind('FilesAdded',function(uploader,files){
			$.each(uploader.files, function (i, file) { 
				if (uploader.files.length <= 1) { 
			            return; 
			        } 
			        uploaderForTp.removeFile(file); 
			    });
			for(var i = 0, len = files.length; i<len; i++){
				var file_name = files[i].name; //文件名
				var file_id = files[i].id;//ID,临时文件名
				//构造html来更新UI
//	 			var html = '<li id="file-' + files[i].id +'"><p class="file-name">' + file_name + '</p><p class="progress"></p></li>';
//	 			var html = '<li id="file-' + file_id +'" style="text-align: left;">';
				var html = '<span id="file-' + file_id +'" style="text-align: left;"><p class="file-name">' + file_name + '</p><p class="progress"></p>';
					html += '<input type="hiddent" style="display: none;" name="uploader_paper_tmpname_'+para+'" value="' + file_id + '" />';
					html += '<input type="hiddent" style="display: none;" name="uploader_paper_name_'+para+'" value="' + file_name + '" /></span>';
				$(html).appendTo('#file-list');
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