<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>
<%-- <jsp:include page="../pre.jsp"></jsp:include> --%>
<div id="researchDiv" >
	<h1 align="center">国外专家来访</h1>
	<div style="width: 90%;text-align: right;"></div>
	<hr class="line_keyanchenguo" /><br>
	<table class="plan_table_list_new" align="center" >
		<tr>
		<th>项目负责人</th>
		<th width="8%">项目类别</th>
		<th>专家姓名</th>
		<th>专家国籍</th>
		<th>工作单位</th>
		<th>来校时间</th>
		<th>来访目的</th>
		<th>来访活动</th>
		<th>其他</th>
		</tr>
		<tbody id="researchTb">
		<s:iterator var="fo" value="foreignList" status="st">
			<tr>
			<td><s:property value="#fo.fprojectmanager" /></td>
			<td><s:property value="#fo.fprojecttype" /></td>
			<td><s:property value="#fo.expertname" /></td>
			<td><s:property value="#fo.expertnationality" /></td>
			<td><s:property value="#fo.workunit" /></td>
			<td><s:property value="#fo.visittime" /></td>
			<td><s:property value="#fo.visitgoal" /></td>
			<td><s:property value="#fo.visitactivity" /></td>
			<td><s:property value="#fo.other" /></td>
			</tr>
		</s:iterator>
	</tbody>
	</table>
</div>
<div class="news_page">
	<s:if test="totalPageCount > 0">
		<jsp:include page="../common/common_page.jsp" />
	</s:if>
</div>
<script type="text/javascript">
function exportResearch() {
	var yearType = $("#yearType").val();
    var url = 'Teacher_ExportExcel?type=research&time='+yearType;
    window.location.href = url;   
}
</script>
