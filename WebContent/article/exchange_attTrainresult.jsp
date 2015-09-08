<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>
<jsp:include page="../pre.jsp"></jsp:include>
<div id="researchDiv" >
	<h1 align="center">教师参加培训</h1>
	<div style="width: 90%;text-align: right;"></div>
	<hr class="line_keyanchenguo" /><br>
	<table class="plan_table_list_new" align="center" >
		<tr>
		<th>教师姓名</th>
		<th>培训名称</th>
		<th width="7%">类别</th>
		<th>主办方</th>
		<th width="20%">培训时间</th>
		<th>培训地点</th>
		<th>培训成果</th>
		</tr>
		<tbody id="researchTb">
		<s:iterator var="at" value="atttrainList" status="st">
			<tr>
			<td><s:property value="#at.attteachername" /></td>
			<td><s:property value="#at.attname" /></td>
			<td><s:property value="#at.atttype" /></td>
			<td><s:property value="#at.atthost" /></td>
			<td><s:property value="#at.atttrainbegintime" /> - <s:property value="#at.atttrainendtime" /></td>
			<td><s:property value="#at.atttrainplace" /></td>
			<td><s:property value="#at.atttrainresult" /></td>
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
