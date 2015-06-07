<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>
<jsp:include page="../pre.jsp"></jsp:include>
	<div align="center" style="width: 100%;">
	<h3 class="span_title" style="text-align: center;">课程配置流程图</h3>
	<div align="center" style="width: 90%;text-align: right;">
	年级：<select id="trainingplangrade" name="trainingplangrade"  editable="false"
		style="width: 100px;text-align: right;" onChange="querySubject();">
		<s:iterator var="grade" id="grade" value="gradeList" status="g">
		<option value="<s:property value="#grade.dictionarycode" />"><s:property value="#grade.dictionaryvalue" /></option>
		</s:iterator>
	</select></div>
	<hr color="#bbbbbb" width="95%" />
	<div id="subject_content"></div>
	</div>
	<br><br><br><br>
<script>
function querySubject(){
	var trainingplangrade= $('#trainingplangrade').val();
	var departmentid = "${departmentid}";
	var planType = "${planType}";
		$.ajax({
			type : 'post',
			url : 'TrainingPlan_trainingPlanTableResult',
			data : {
				trainingplangrade : trainingplangrade,
				departmentid:departmentid,
				planType:planType
			},
			success : function(html) {
				$.unblockUI();
				$('#subject_content').html(html);
				$('#trainingplangrade').val(trainingplangrade);
			},
			error : function() {
				jAlert('系统错误，请联系管理员','提示');
			}
		});
}
querySubject();
</script>