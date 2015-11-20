<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>
<%-- <jsp:include page="../pre.jsp"></jsp:include> --%>
<div id="researchDiv" >
	<h1 align="center">学术活动</h1>
	<div style="width: 90%;text-align: right;"></div>
	<hr class="line_keyanchenguo" /><br>
	<table class="plan_table_list_new" align="center" >
		<tr>
		<th width="15%">学术活动名称</th>
		<th>邀请专家名字</th>
		<th >参加老师</th>
		<th width="7%">参加学生人数</th>
		<th width="10%">举办地点</th>
		<th>举办时间</th>
		<th>活动涉及学科</th>
		<th>备注</th>
		</tr>
		<tbody id="researchTb">
		<s:iterator var="hl" value="learnactList" status="st">
			<tr>
			<td ><s:property value="#hl.actname" /></td>
			<td ><s:property value="#hl.expertnames" /></td>
			<td ><s:property value="#hl.teachernames" /></td>
			<td><s:property value="#hl.studentnames" /></td>
			<td><s:property value="#hl.actplace" /></td>
			<td><s:property value="#hl.acttime" /></td>
			<td><s:property value="#hl.subjects" /></td>
			<td><s:property value="#hl.remark" /></td>
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
