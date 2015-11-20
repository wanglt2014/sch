<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>
<%-- <jsp:include page="../pre.jsp"></jsp:include> --%>
<div id="researchDiv" >
	<h1 align="center">学院举办国际/国内会议</h1>
	<div style="width: 90%;text-align: right;"></div>
	<hr class="line_keyanchenguo" /><br>
	<table class="plan_table_list_new" align="center" >
		<tr>
		<th width="25%">会议名称</th>
		<th width="10%">类别</th>
		<th width="25%">会议时间</th>
		<th>会议地点</th>
		<th width="10%">参会人数</th>
		<th>会议成果</th>
		</tr>
		<tbody id="researchTb">
		<s:iterator var="hl" value="holdmeetingList" status="st">
			<tr>
			<td ><s:property value="#hl.meetingname" /></td>
			<td ><s:property value="#hl.meetingtype" /></td>
			<td ><s:property value="#hl.meetingbegintime" /> - <s:property value="#hl.meetingendtime" /></td>
			<td><s:property value="#hl.meetingplace" /></td>
			<td><s:property value="#hl.meetingpeoplenum" /></td>
			<td><s:property value="#hl.meetingresult" /></td>
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
