<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>
<jsp:include page="../pre.jsp"></jsp:include>
<c:if test="${empty(subjectList)}">
	<tr>
		<td colspan="5" style="text-align: center"><a href="">没有检索到相关记录。</a>
		</td>
	</tr>
</c:if>
<c:if test="${!empty(subjectList)}">
<br><br>
	<div align="center" style="width: 100%;">
	<h3 class="span_title">课程配置流程图</h3>
	<hr color="#bbbbbb" width="80%" />
	<table class="teacher_list">
		<tbody>
		<tr>
		<th>第一学期</th>
		<th>第二学期</th>
		<th>第三学期</th>
		<th>第四学期</th>
		<th>第五学期</th>
		<th>第六学期</th>
		<th>第七学期</th>
		<th>第八学期</th>
		</tr>
		<tr>
			<td valign="top"><br>
			<s:iterator var="one" id="one" value="oneList" status="o">
			<a href="TrainingPlan_subjectDetail_${one.subjectid}.shtm" title="<s:property value="#one.subjecttext" />"><s:property value="#one.subjectname" /></a><br><br>
			</s:iterator>
			</td>
			<td valign="top"><br>
			<s:iterator var="two" id="two" value="twoList" status="tw">
			<a href="TrainingPlan_subjectDetail_${one.subjectid}.shtm" title="<s:property value="#two.subjecttext" />"><s:property value="#two.subjectname" /><br><br>
			</s:iterator>
			</td>
			<td><br>
			<s:iterator var="three" id="three" value="threeList" status="th">
			<a href="TrainingPlan_subjectDetail_${one.subjectid}.shtm" title="<s:property value="#three.subjecttext" />"><s:property value="#three.subjectname" /><br><br>
			</s:iterator>
			</td>
			<td><br>
			<s:iterator var="four" id="four" value="fourList" status="fo">
			<a href="TrainingPlan_subjectDetail_${one.subjectid}.shtm" title="<s:property value="#four.subjecttext" />"><s:property value="#four.subjectname" /><br><br>
			</s:iterator>
			</td>
			<td><br>
			<s:iterator var="five" id="five" value="fiveList" status="fi">
			<a href="#" title="<s:property value="#five.subjecttext" />"><s:property value="#five.subjectname" /><br><br>
			</s:iterator>
			</td>
			<td><br>
			<s:iterator var="six" id="six" value="sixList" status="si">
			<a href="#" title="<s:property value="#six.subjecttext" />"><s:property value="#six.subjectname" /><br><br>
			</s:iterator>
			</td>
			<td><br>
			<s:iterator var="seven" id="seven" value="sevenList" status="se">
			<a href="#" title="<s:property value="#seven.subjecttext" />"><s:property value="#seven.subjectname" /><br><br>
			</s:iterator>
			</td>
			<td><br>
			<s:iterator var="eight" id="eight" value="eightList" status="ei">
			<a href="#" title="<s:property value="#eight.subjecttext" />"><s:property value="#eight.subjectname" /><br><br>
			</s:iterator>
			</td>
		</tr>
		</tbody>
	</table>
	</div>
	<br><br><br><br>
</c:if>
