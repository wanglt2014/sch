<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>
<jsp:include page="../pre.jsp"></jsp:include>
<div id="researchDiv" >
	<h1 align="center">读书会</h1>
	<div style="width: 90%;text-align: right;"></div>
	<hr class="line_keyanchenguo" /><br>
	<table class="plan_table_list_new" align="center" >
		<tr>
		<th width="15%">读书会名称</th>
		<th >召集人</th>
		<th >主讲人</th>
		<th>主评论人</th>
		<th >副评论人</th>
		<th>举办地点</th>
		<th>举办时间</th>
		<th>参加人</th>
		<th>活动涉及学科</th>
		<th>备注</th>
		</tr>
		<tbody id="researchTb">
		<s:iterator var="hl" value="bookClubList" status="st">
			<tr>
			<td ><s:property value="#hl.bookclubname" /></td>
			<td ><s:property value="#hl.convener" /></td>
			<td ><s:property value="#hl.speaker" /></td>
			<td><s:property value="#hl.maincomment" /></td>
			<td><s:property value="#hl.comments" /></td>
			<td><s:property value="#hl.place" /></td>
			<td><s:property value="#hl.time" /></td>
			<td><s:property value="#hl.participants" /></td>
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
