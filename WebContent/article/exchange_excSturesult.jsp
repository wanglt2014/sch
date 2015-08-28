<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>
<jsp:include page="../pre.jsp"></jsp:include>
<div id="researchDiv" >
	<h1 align="center">学生国际交流</h1>
	<div style="width: 90%;text-align: right;"></div>
	<hr class="line_keyanchenguo" /><br>
	<table class="plan_table_list_new" align="center" >
		<tr>
		<th>姓名</th>
		<th width="7%">学生在读情况</th>
		<th width="25%">交流时间</th>
		<th>时间长度（月）</th>
		<th>地点（国家/地区及高校）</th>
		<th>国际交流项目名称或主要交流目的</th>
		</tr>
		<tbody id="researchTb">
		<s:iterator var="es" value="excStuList" status="st">
			<tr>
			<td><s:property value="#es.stuname" /></td>
			<td><s:property value="#es.stutype" /></td>
			<td><s:property value="#es.exchangebegintime" />-<s:property value="#es.exchangeendtime" /></td>
			<td><s:property value="#es.timelength" /></td>
			<td><s:property value="#es.exchangeplace" /></td>
			<td><s:property value="#es.projectname" /></td>
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
