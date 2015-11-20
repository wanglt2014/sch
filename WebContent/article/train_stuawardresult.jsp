<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>
<%-- <jsp:include page="../pre.jsp"></jsp:include> --%>
<div id="researchDiv" >
	<h1 align="center">学生获奖</h1>
	<div style="width: 90%;text-align: right;"></div>
	<hr class="line_keyanchenguo" /><br>
	<table class="plan_table_list_new" align="center" >
		<tr>
		<th width="15%">学生姓名</th>
		<th width="7%">学号</th>
		<th width="10%">学生专业</th>
		<th>奖项名称</th>
		<th width="10%">奖项类别</th>
		<th>授予时间</th>
		<th>授予机构</th>
		<th>指导老师</th>
		<th>备注</th>
		</tr>
		<tbody id="researchTb">
		<s:iterator var="hl" value="stuawardList" status="st">
			<tr>
			<td ><s:property value="#hl.stuname" /></td>
			<td ><s:property value="#hl.stuno" /></td>
			<td ><s:property value="#hl.stuprofession" /></td>
			<td><s:property value="#hl.awardname" /></td>
			<td><s:property value="#hl.awardtype" /></td>
			<td><s:property value="#hl.granttime" /></td>
			<td><s:property value="#hl.grantorg" /></td>
			<td><s:property value="#hl.teachernames" /></td>
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
