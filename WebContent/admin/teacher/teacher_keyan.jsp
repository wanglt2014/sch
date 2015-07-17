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
	<table id="teacherdg3" title="列表" class="easyui-datagrid"
		style="width: auto; height: 616px" url="Teacher_query"
		toolbar="#teachertoolbar3" pagination="true" rownumbers="true"
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
	<div id="teachertoolbar3">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editForkeyan()">科研信息</a>
	</div>
	<div id="keyandlg" class="easyui-dialog"
		style="width: 800px; height: 620px; padding: 20px 20px;overflow: visible;" closed="true"
		buttons="#keyandlg-buttons">
		<div id="keyan_tab" class="easyui-tabs" style="height: 616px"
			data-options="fit:true,border:false,plain:true" >
			<div title="立项" style="padding:20px;" id="Tab1"> 
				<div class="ftitle">立项</div>
				<div id="keyanprojectRow" class="fitem">
				<form id="keyanResearchfm" method="post" novalidate>
				<span class="span_column" >
					<label style="width: 85px;text-align: right;">项目种类:</label>
					<select id="researchtype" name="researchtype" class="easyui-combobox" panelHeight="auto" editable="false"
						style="width: 110px">
						<option value="国家社会科学基金">国家社会科学基金</option>
						<option value="国家自然科学基金">国家自然科学基金</option>
						<option value="教育部人文社科基金">教育部人文社科基金</option>
						<option value="省哲学社会科学研究规划项目">省哲学社会科学研究规划项目</option>
						<option value="省自然科学基金项目">省自然科学基金项目</option>
						<option value="其他省部级以上项目">其他省部级以上项目</option>
					</select>
				</span>
				<span class="span_column" >
					<label style="width: 85px;text-align: right;">项目类别:</label>
					<select id="researchlevel" name="researchlevel" class="easyui-combobox" panelHeight="auto" editable="false"
						style="width: 110px">
						<option value="重大">重大</option>
						<option value="重点">重点</option>
						<option value="一般">一般</option>
						<option value="面上">面上</option>
						<option value="青年">青年</option>
						<option value="其他">其他</option>
					</select>
				</span>
				<span class="span_column" >
					<label style="width: 85px;text-align: right;">是否在研:</label> 
					<select id="isresearch" name="isresearch" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 140px" >
							<option value="是">是</option>
							<option value="否">否</option>
					</select>
				</span>
				<br><br>
				<span class="span_column" >
					<label style="width: 85px;text-align: right;">教师排名:</label>
					<select id="researchrank" name="researchrank" class="easyui-combobox" panelHeight="auto" editable="false"
						style="width: 110px" >
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
					</select>
				</span>
				<span class="span_column_sm" >
					<label style="width: 85px;text-align: right;">项目名称:</label>
					<input id="researchname" name="researchname" style="width: 110px"
						class="easyui-validatebox"  maxlength="20">
				</span>
				<span class="span_column_sm" >
					<label style="width: 85px;text-align: right;">项目编号:</label>
					<input id="researchno" name="researchno" maxlength="20" style="width: 110px"
						class="easyui-validatebox" >
				</span>
				<br><br>
				<span class="span_column_sm">
					<label style="width: 85px;text-align: right;">项目开始时间:</label> 
					<input id="researchbegindate" name="researchbegindate" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
				</span>
				<span class="span_column_sm" >
					<label style="width: 90px;text-align: right;">项目结束时间:</label> 
					<input id="researchenddate" name="researchenddate" type="date" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
				</span>
				<span class="span_column_sm" >
					<label style="width: 90px;text-align: right;">结题等级:</label> 
					<select id="researchknot" name="researchknot" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 100px" >
							<option value="优秀">优秀</option>
							<option value="良好">良好</option>
							<option value="合格">合格</option>
							<option value="其他">其他</option>
					</select>
				</span>
				<br><br>
				<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveRearch('keyan')">保存</a>
				</form>
				<hr  style="border-bottom:1px dashed;"><br>
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
				<form id="keyanPaperfm" method="post" novalidate>
					<span class="span_column_sm" >
					<label style="width: 85px;text-align: right;">论文题目:</label>
						<input id="papername" name="papername" style="width: 110px" class="easyui-validatebox"  maxlength="60">
					</span>
					<span class="span_column_sm">
					<label style="width: 85px;text-align: right;">作者排名:</label>
						<select id="paperauthor" name="paperauthor" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 110px" >
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select>
					</span>
					<span class="span_column_sm" >
					<label style="width: 85px;text-align: right;">发表刊物/论文集名称:</label>
						<input id="papernotename" name="papernotename" maxlength="50"
							class="easyui-validatebox"  style="width: 110px" ></span>
					<br><br>	
					<span class="span_column_sm" >
					<label style="width: 85px;text-align: right;">刊物国别:</label>
						<input id="papernotecountry" name="papernotecountry"
							class="easyui-numberbox"  maxlength="20" style="width: 110px" ></span>
					<span class="span_column_sm">
						<label style="width: 85px;text-align: right;">发表/出版时间:</label> 
						<input id="papernotedate" name="papernotedate" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
					</span>
					<span class="span_column_sm" >
					<label style="width: 85px;text-align: right;">期号（卷号）:</label>
						<input id="papernoteno" name="papernoteno"
							class="easyui-numberbox"  style="width: 110px"  maxlength="20"></span>
					<br><br>
					<span class="span_column_sm" >
					<label style="width: 85px;text-align: right;">页码:</label>
						<input id="papernotepage" name="papernotepage" maxlength="5"
							class="easyui-validatebox"  style="width: 110px" ></span>
					<span class="span_column_sm" >
						<label style="width: 85px;text-align: right;">论文收录:</label> 
						<select id="paperincluded" name="paperincluded" class="easyui-combobox" panelHeight="auto" editable="false"
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
						<input id="paperfactors" name="paperfactors" maxlength="50"
							class="easyui-validatebox"  style="width: 110px" ></span>
					<br><br>
					<span class="span_column_sm" >
						<label style="width: 85px;text-align: right;">论文转载:</label> 
						<select id="paperreprint" name="paperreprint" class="easyui-combobox" panelHeight="auto" editable="false"
								style="width: 110px" >
								<option value="是">是</option>
								<option value="否">否</option>
						</select>
					</span>
					<span class="span_column_sm" >
						<label style="width: 85px;text-align: right;">一级学科:</label>
						<select id="paperclassa" name="paperclassa" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 110px" >
							<option value="840">840</option>
							<option value="820">820</option>
							<option value="180">180</option>
						</select>
					</span>
					<span class="span_column_sm" >
					<label style="width: 85px;text-align: right;">资助项目编号:</label>
						<input id="paperprojectno" name="paperprojectno" maxlength="20"
							class="easyui-validatebox"  style="width: 110px" ></span>
					<br><br>
					<span class="span_column_sm" style="width:100%;" id="paperObj"> <label>论文电子版:</label> 
						<input type="button" value="选择文件..." id="browsePaper" />
						<input type="button" value="清空" id="paper-clear-btn" />&nbsp;&nbsp;<span class="tip2">(注意：只能上传20M以内的文件)</span>
					</span>
					<span id="file-list-paper"></span>
					<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="savePaper('keyan')">保存</a>
					</form>
					<hr  style="border-bottom:1px dashed;"><br>
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
			</div>
			<div title="著作" style="overflow:auto;padding:20px;" id="Tab3"> 
				<div class="ftitle">著作</div>
				<div id="workRow" class="fitem">
				<form id="keyanWorkfm" method="post" novalidate>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">作者排名:</label>
						<select id="workAuthorRank" name="workAuthorRank" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 110px" >
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select>
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">著作题目:</label>
						<input id="workTitle" name="workTitle" maxlength="50" class="easyui-validatebox" style="width: 110px;">
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">出版单位:</label>
						<input id="workPublishUnit" name="workPublishUnit" maxlength="50" class="easyui-validatebox" style="width: 110px;">
					</span>
					<br><br>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">著作类别:</label>
						<select id="workType" name="workType" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 110px">
							<option value="专著">专著</option>
							<option value="编著">编著</option>
							<option value="译著">译著</option>
						</select>
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">出版地:</label>
						<input id="workPublishArea" name="workPublishArea" maxlength="50" style="width: 110px;" class="easyui-validatebox" >
					</span>
					<span class="span_column_sm">
						<label  style="width: 85px;text-align: right;">出版时间:</label> 
						<input id="workPublishTime" name="workPublishTime" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
					</span>
					<br><br>
					<span class="span_column" style="display: none;" id="oriAuthorSpan0">
						<label style="width: 85px;text-align: right;">原作者:</label>
						<input id="oriAuthor" name="oriAuthor" maxlength="30" style="width: 110px;" class="easyui-validatebox" >
					</span>
					<span class="span_column" id="translateForeignSpan0">
						<label style="width: 85px;text-align: right;">是否译成外文:</label>
						<select id="translateForeign" name="translateForeign" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 110px;" >
							<option value="是">是</option>
							<option value="否">否</option>
						</select>
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">已出几版:</label>
						<input id="alreadyPublish" name="alreadyPublish" maxlength="2" style="width: 110px;" class="easyui-validatebox" >
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">ISBN号:</label>
						<input id="isbnNO" name="isbnNO" maxlength="20" style="width: 110px;" class="easyui-validatebox" >
					</span>
					<br><br>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">一级学科:</label>
						<select id="classA" name="classA" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 110px" >
							<option value="840">840</option>
							<option value="820">820</option>
							<option value="180">180</option>
						</select>
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">资助项目编号:</label>
						<input id="projectno" name="projectno" maxlength="20" style="width: 110px;" class="easyui-validatebox" >
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">自己承担字数/全书总字数:</label>
						<input id="totalWord" name="totalWord" maxlength="10" style="width: 110px;" class="easyui-validatebox" >（千）
					</span>
					<br><br>
					<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveWork('keyan')">保存</a>
					</form>
				<hr  style="border-bottom:1px dashed;"><br>
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
				</div></div>
			</div>
			<div title="获奖" style="padding:20px;" id="Tab4"> 
				<div id="prizeRow" class="fitem">
				<form id="keyanPrizefm" method="post" novalidate>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">获奖排名:</label>
						<select id="prizerank" name="prizerank" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 110px" >
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select>
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">奖项名称:</label>
						<select id="prizetitle" name="prizetitle" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 110px" >
							<option value="高等学校科学研究优秀成果奖">高等学校科学研究优秀成果奖</option>
							<option value="黑龙江省社会科学优秀成果奖">黑龙江省社会科学优秀成果奖</option>
							<option value="黑龙江省高校人文社会科学研究优秀成果奖">黑龙江省高校人文社会科学研究优秀成果奖</option>
							<option value="其他省部级以上获奖">其他省部级以上获奖</option>
						</select>
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">成果名称:</label>
						<input id="prizeresultname" name="prizeresultname" maxlength="20" style="width: 110px;" class="easyui-validatebox" >
					</span>
					<br><br>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">奖励等级:</label>
						<select id="prizelevel" name="prizelevel" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 110px" >
							<option value="特等奖">特等奖</option>
							<option value="一等奖">一等奖</option>
							<option value="二等奖">二等奖</option>
							<option value="三等奖">三等奖</option>
							<option value="佳作奖">佳作奖</option>
						</select>
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">成果类别 :</label>
						<select id="prizetype" name="prizetype" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 110px" >
							<option value="学术论文">学术论文</option>
							<option value="著作">著作</option>
							<option value="研究报告">研究报告</option>
							<option value="普及读物">普及读物</option>
						</select>
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">授奖部门:</label>
						<input id="prizedep" name="prizedep" maxlength="20" style="width: 110px;" class="easyui-validatebox" >
					</span>
					<br><br>
					<span class="span_column">
						<label  style="width: 85px;text-align: right;">获奖时间:</label> 
						<input id="prizedate" name="prizedate" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
					</span>
					<span class="span_column" >
						<label style="width: 85px;text-align: right;">证书编号:</label>
						<input id="prizeno" name="prizeno" maxlength="20" style="width: 110px;" class="easyui-validatebox" >
					</span>
  					<br><br>
				<hr  style="border-bottom:1px dashed;"><br>
				<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="savePrize('keyan')">保存</a>
				</form>
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
		</div>
		<div title="学术兼职" style="padding:20px;" id="Tab5"> 
			<div class="ftitle">学术兼职</div>
			<div id="partJobRow" class="fitem">
				<form id="partJobfm" method="post" novalidate>
					<span class="span_column" >
						<label style="width: 145px;text-align: right;">学会/协会/期刊名称:</label>
						<input id="partplace" name="partplace" maxlength="50" style="width: 110px;" class="easyui-validatebox" >
					</span>
					<span class="span_column" >
						<label style="width: 145px;text-align: right;">在学会/协会/期刊中职务:</label>
						<input id="partjob" name="partjob" maxlength="30" style="width: 110px;" class="easyui-validatebox" >
					</span>
					<br><br>
					<span class="span_column" >
						<label style="width: 145px;text-align: right;">任职开始时间:</label>
						<input id="partbegintime" name="partbegintime" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
					</span>
					<span class="span_column" >
						<label style="width: 145px;text-align: right;">任职截止时间:</label>
						<input id="partendtime" name="partendtime" type="text" style="width: 110px" data-options="formatter:ww4,parser:w4" class="easyui-datebox"  />
					</span>
					<br><br>
					<span class="span_column" >
						<label style="width: 145px;text-align: right;">学会/协会/期刊级别:</label>
						<select id="partlevel" name="partlevel" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 110px" >
							<option value="国家">国家</option>
							<option value="国家一级">国家一级</option>
							<option value="国家二级">国家二级</option>
							<option value="省内">省内</option>
							<option value="省级一级">省级一级</option>
							<option value="省级二级">省级二级</option>
							<option value="市级一级">市级一级</option>
							<option value="其他">其他</option>
						</select>
					</span>
					<span class="span_column" >
						<label style="width: 145px;text-align: right;">是否需要交纳会费 :</label>
						<select id="parttopay" name="parttopay" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 110px" >
							<option value="是">是</option>
							<option value="否">否</option>
						</select>
					</span>
					<br><br>
					<span class="span_column" >
						<label style="width: 145px;text-align: right;">交纳金额:</label>
						<input id="partofmoney" name="partofmoney" maxlength="20" style="width: 110px;" class="easyui-validatebox" >
					</span>
					<br><br>
				<hr  style="border-bottom:1px dashed;"><br>
				<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="savePartJob()">保存</a>
				</form>
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
			</div></div>
		</div>
		<div title="荣誉及其他" style="padding:20px;" id="Tab5"> 
			<div class="ftitle">荣誉及其他</div>
			<div id="honorRow" class="fitem">
				<form id="honorfm" method="post" novalidate>
					<span class="span_column" >
						<label style="width: 145px;text-align: right;">荣誉名称:</label>
						<input id="honortitle" name="honortitle" maxlength="50" style="width: 110px;" class="easyui-validatebox" >
					</span>
					<span class="span_column" >
						<label style="width: 145px;text-align: right;">荣誉级别:</label>
						<select id="honorleave" name="honorleave" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 110px" >
							<option value="国家">国家</option>
							<option value="省内">省内</option>
							<option value="其他">其他</option>
						</select>
					</span>
					<br><br>
					<span class="span_column" >
						<label style="width: 145px;text-align: right;">授予部门:</label>
						<input id="honordep" name="honordep" maxlength="20" style="width: 110px;" class="easyui-validatebox" >
					</span>
					<br><br>
					<span class="span_column" >
						<label style="width: 145px;text-align: right;">备注:</label>
						<input id="honorremark" name="honorremark" maxlength="100" style="width: 410px;" class="easyui-validatebox" >
					</span>
				<hr  style="border-bottom:1px dashed;"><br>
				<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveHonor()">保存</a>
				</form>
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
	</div>
	<div id="keyandlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-cancel"
			onclick="javascript:$('#keyandlg').dialog('close')">取消</a>
	</div>
	<script>
	var url;
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
	
	function editForkeyan() {
		var row = $('#teacherdg3').datagrid('getSelected');
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