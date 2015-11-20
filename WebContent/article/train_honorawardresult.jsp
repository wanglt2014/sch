<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>
<%-- <jsp:include page="../pre.jsp"></jsp:include> --%>
<div id="researchDiv" >
	<h1 align="center">荣誉获奖</h1>
	<div style="width: 90%;text-align: right;"></div>
	<hr class="line_keyanchenguo" /><br>
	<table class="plan_table_list_new" align="center" >
		<tr>
		<th width="25%">荣誉名称</th>
		<th width="20%">团队成员</th>
		<th width="10%">荣誉类别</th>
		<th>授予单位</th>
		<th width="10%">授予时间</th>
		<th>指导老师</th>
		<th>备注</th>
		</tr>
		<tbody id="researchTb">
		<s:iterator var="hl" value="honorawardList" status="st">
			<tr>
			<td ><s:property value="#hl.honorname" /></td>
			<td ><s:property value="#hl.teammember" /></td>
			<td ><s:property value="#hl.honortype" /></td>
			<td><s:property value="#hl.grantorg" /></td>
			<td><s:property value="#hl.granttime" /></td>
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
