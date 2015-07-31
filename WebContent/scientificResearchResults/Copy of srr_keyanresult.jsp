<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>
<jsp:include page="../pre.jsp"></jsp:include>
<script>
$(document).ready(function() {
	hiddenAllDiv();
	var srrType = $("#srrType").val();
	$("#"+srrType).show();
//      $("#srrType").change(
//         function()
//         {
        	
        	
//         }
//       )
});
function queryInfo() {
	var yearType = $("#yearType").val();
	var srrType = $("#srrType").val();
	$.ajax({
		type : 'post',
		url : 'Teacher_doQuerySRRJson',
		data : {
			currentPage : '1',
			srrTypePara : 'jx',
			yearType : yearType,
			srrType : srrType
		},
		beforeSend : function(html) {
			$.blockUI({
				showOverlay : false,
				message : '数据加载中...',
				css : {
					border : 'none',
					padding : '5px',
					backgroundColor : '#000',
					'-webkit-border-radius' : '10px',
					'-moz-border-radius' : '10px',
					opacity : .5,
					color : '#fff',
					top : '170px',
					left : $(window).width() / 2 + 'px',
					width : '150px',
					height : '20px'
				}
			});
		},
		success : function(html) {
			$.unblockUI();
			 var obj = $.parseJSON(html);  
//  			alert(JSON.stringify(obj.tPrizeList));
			$.each(obj.researchList, function(i, item){
// 				$("#researchTb").append('<tr>');
// 				$("#researchTb").append('<td>'+item.researchteachername+'</td>');
// 				$("#researchTb").append('<td>'+item.researchrank+'</td>');
// 				$("#researchTb").append('<td>'+item.researchtype+'</td>');
// 				$("#researchTb").append('<td>'+item.researchlevel+'</td>');
// 				$("#researchTb").append('<td>'+item.researchname+'</td>');
// 				$("#researchTb").append('<td>'+item.researchno+'</td>');
// 				$("#researchTb").append('<td>'+item.researchbegindate+'</td>');
// 				$("#researchTb").append('<td>'+item.researchenddate+'</td>');
// 				$("#researchTb").append('<td>'+item.isresearch+'</td>');
// 				$("#researchTb").append('<td>'+item.researchknot+'</td>');
// 				$("#researchTb").append('</tr>');
				$("#researchTb").append('<tr><td>'+item.researchteachername+'</td>'
				+'<td>'+item.researchrank+'</td>'
				+'<td>'+item.researchtype+'</td>'
				+'<td>'+item.researchlevel+'</td>'
				+'<td>'+item.researchname+'</td>'
				+'<td>'+item.researchno+'</td>'
				+'<td>'+item.researchbegindate+'</td>'
				+'<td>'+item.researchenddate+'</td>'+
				'<td>'+item.isresearch+'</td>'+
				'<td>'+item.researchknot+'</td></tr>');
			});
			hiddenAllDiv();
        	$("#"+srrType).show();
		},
		error : function() {
			$.unblockUI();
		}
	});
}

function hiddenAllDiv() {
	 $("#researchDiv").hide();
	 $("#paperDiv").hide();
	 $("#workDiv").hide();
	 $("#prizeDiv").hide();
}
</script>

<select id="srrType">
	<option value="researchDiv" selected="selected">立项</option>
	<option value="paperDiv">论文</option>
	<option value="workDiv">著作</option>
	<option value="prizeDiv">获奖</option>
</select>

<select id="yearType">
	<option value="6" selected="selected">半年</option>
	<option value="12">1年</option>
	<option value="60">5年</option>
</select>
<button onclick="queryInfo();">查询</button>
<%-- <c:if test="${empty(researchList) && empty(paperList) && empty(tWorkList) && empty(tPrizeList)}"> --%>
<!-- 没有检索到相关记录。 -->
<%-- </c:if> --%>
<%-- <c:if test="${!empty(researchList) || !empty(paperList) || !empty(tWorkList) || !empty(tPrizeList)}"> --%>
<div id="researchDiv" >
	<h1 align="center">立项</h1>
	<div style="width: 90%;text-align: right;"><a href="javascript:void(0)" style="color: #524EA3;" onclick="exportResearch()">【导出立项Excel】</a></div>
	<hr class="line_keyanchenguo" /><br>
	<table class="plan_table_list_new" align="center" >
		<tr>
		<th>姓名</th>
		<th>教师排名</th>
		<th>项目种类</th>
		<th>项目类别</th>
		<th>项目名称</th>
		<th>项目编号</th>
		<th>开始时间</th>
		<th>结束时间</th>
		<th>是否在研</th>
		<th>结束等级</th>
		</tr>
		<tbody id="researchTb">
<%-- 	<s:iterator var="tResearch" value="researchList" status="st"> --%>
<!-- 	<tr> -->
<%-- 	<td><s:property value="#tResearch.researchteachername" /></td> --%>
<%-- 	<td><s:property value="#tResearch.researchrank" /></td> --%>
<%-- 	<td><s:property value="#tResearch.researchtype" /></td> --%>
<%-- 	<td><s:property value="#tResearch.researchlevel" /></td> --%>
<%-- 	<td><s:property value="#tResearch.researchname" /></td> --%>
<%-- 	<td><s:property value="#tResearch.researchno" /></td> --%>
<%-- 	<td><s:property value="#tResearch.researchbegindate" /></td> --%>
<%-- 	<td><s:property value="#tResearch.researchenddate" /></td> --%>
<%-- 	<td><s:property value="#tResearch.isresearch" /></td> --%>
<%-- 	<td><s:property value="#tResearch.researchknot" /></td> --%>
<!-- 	</tr> -->
<%-- 	</s:iterator> --%>
	</tbody>
	</table>
</div>
<div id="paperDiv" >
	<h1 align="center">论文</h1>
	<div style="width: 90%;text-align: right;"><a href="javascript:void(0)" style="color: #524EA3;" onclick="exportPaper()">【导出立项Excel】</a></div>
	<hr class="line_keyanchenguo" /><br>
	<table class="plan_table_list_new" align="center">
		<tbody>
		<tr>
		<th>姓名</th>
		<th>教师排名</th>
		<th>论文题目</th>
		<th>发表刊物/论文集名称</th>
		<th>刊物国别</th>
		<th>发表/出版时间</th>
		<th>期号（卷号）</th>
		<th>页码</th>
		<th>论文收录</th>
		<th>影响因子</th>
		<th>论文转载</th>
		<th>一级学科</th>
		<th>资助项目编号</th>
		</tr>
	<s:iterator var="paper" value="paperList" status="st">
	<tr>
	<td><s:property value="#paper.paperteachername" /></td>
	<td><s:property value="#paper.paperauthor" /></td>
	<td><s:property value="#paper.papername" /></td>
	<td><s:property value="#paper.papernotename" /></td>
	<td><s:property value="#paper.papernotecountry" /></td>
	<td><s:property value="#paper.papernotedate" /></td>
	<td><s:property value="#paper.papernoteno" /></td>
	<td><s:property value="#paper.papernotepage" /></td>
	<td><s:property value="#paper.paperincluded" /></td>
	<td><s:property value="#paper.paperfactors" /></td>
	<td><s:property value="#paper.paperreprint" /></td>
	<td><s:property value="#paper.paperclassa" /></td>
	<td><s:property value="#paper.paperprojectno" /></td>
	</tr>
	</s:iterator>
	</tbody>
	</table>
</div>
<div id="workDiv" >
	<h1 align="center">著作</h1>
	<div style="width: 90%;text-align: right;"><a href="javascript:void(0)" style="color: #524EA3;" onclick="exportWork()">【导出立项Excel】</a></div>
	<hr class="line_keyanchenguo" /><br>
	<table class="plan_table_list_new" align="center">
		<tbody>
		<tr>
		<th>姓名</th>
		<th>作者排名</th>
		<th>著作题目</th>
		<th>出版单位</th>
		<th>出版地</th>
		<th>出版时间</th>
		<th>著作类别</th>
		<th>原作者</th>
		<th>自己承担字数/全书总字数（千）</th>
		<th>已出几版</th>
		<th>是否译成外文</th>
		<th>ISBN号</th>
		<th>一级学科</th>
		<th>资助项目编号</th>
		</tr>
	<s:iterator var="work" value="tWorkList" status="st">
	<tr>
	<td><s:property value="#work.workteachername" /></td>
	<td><s:property value="#work.workauthorrank" /></td>
	<td><s:property value="#work.worktitle" /></td>
	<td><s:property value="#work.workpublishunit" /></td>
	<td><s:property value="#work.workpublisharea" /></td>
	<td><s:property value="#work.workpublishtime" /></td>
	<td><s:property value="#work.worktype" /></td>
	<td><s:property value="#work.oriauthor" /></td>
	<td><s:property value="#work.totalword" /></td>
	<td><s:property value="#work.alreadypublish" /></td>
	<td><s:property value="#work.translateforeign" /></td>
	<td><s:property value="#work.isbnno" /></td>
	<td><s:property value="#work.classa" /></td>
	<td><s:property value="#work.projectno" /></td>
	</tr>
	</s:iterator>
	</tbody>
	</table>
</div>
<div id="prizeDiv" >
	<h1 align="center">获奖</h1>
	<div style="width: 90%;text-align: right;"><a href="javascript:void(0)" style="color: #524EA3;" onclick="exportPrize()">【导出立项Excel】</a></div>
	<hr class="line_keyanchenguo" /><br>
	<table class="plan_table_list_new" align="center">
		<tbody>
		<tr>
		<th>姓名</th>
		<th>获奖排名</th>
		<th>奖项名称</th>
		<th>成果名称</th>
		<th>奖励等级</th>
		<th>成果类别</th>
		<th>授奖部门</th>
		<th>获奖时间</th>
		<th>证书编号</th>
		</tr>
	<s:iterator var="prize" value="tPrizeList" status="st">
	<tr>
	<td><s:property value="#prize.prizeteachername" /></td>
	<td><s:property value="#prize.prizerank" /></td>
	<td><s:property value="#prize.prizetitle" />
	</td>
	<td><s:property value="#prize.prizeresultname" />
	</td>
	<td><s:property value="#prize.prizelevel" /></td>
	<td><s:property value="#prize.prizetype" /></td>
	<td><s:property value="#prize.prizedep" /></td>
	<td><s:property value="#prize.prizedate" /></td>
	<td><s:property value="#prize.prizeno" /></td>
	</tr>
	</s:iterator>
	</tbody>
	</table>
	</div>
<%-- </c:if> --%>
<div class="news_page">
	<s:if test="totalPageCount > 0">
		<jsp:include page="../common/common_page.jsp" />
	</s:if>


</div>
<script type="text/javascript">
function exportResearch() {
    var url = 'Teacher_ExportExcel?type=research';
    window.location.href = url;   
}

function exportPaper() {
    var url = 'Teacher_ExportExcel?type=paper';
    window.location.href = url;   
}

function exportWork() {
    var url = 'Teacher_ExportExcel?type=work';
    window.location.href = url;   
}

function exportPrize() {
    var url = 'Teacher_ExportExcel?type=prize';
    window.location.href = url;   
}

</script>
