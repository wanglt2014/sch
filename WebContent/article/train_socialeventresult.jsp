<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>
<%-- <jsp:include page="../pre.jsp"></jsp:include> --%>
<div id="researchDiv" >
	<h1 align="center">社会事件</h1>
	<div style="width: 90%;text-align: right;"></div>
	<hr class="line_keyanchenguo" /><br>
	<table class="plan_table_list_new" align="center" >
		<tr>
		<th width="15%">时间</th>
		<th width="7%">地点</th>
		<th width="10%">社会事件名称</th>
		<th>事件类别</th>
		<th width="10%">参与学生</th>
		<th>是否有共建（合作）单位</th>
		<th>共建（合作）单位名称</th>
		<th>指导老师</th>
		<th>传媒报道网址</th>
		<th>备注</th>
		</tr>
		<tbody id="researchTb">
		<s:iterator var="hl" value="socilList" status="st">
			<tr>
			<td ><s:property value="#hl.eventtime" /></td>
			<td ><s:property value="#hl.eventplace" /></td>
			<td ><s:property value="#hl.eventname" /></td>
			<td><s:property value="#hl.eventtype" /></td>
			<td><s:property value="#hl.students" /></td>
			<td><s:property value="#hl.istogether" /></td>
			<td><s:property value="#hl.unitname" /></td>
			<td><s:property value="#hl.teachernames" /></td>
			<td><s:property value="#hl.website" /></td>
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
