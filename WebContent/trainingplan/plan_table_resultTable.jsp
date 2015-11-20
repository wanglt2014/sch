<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>
<%-- <jsp:include page="../pre.jsp"></jsp:include> --%>
<script language="JavaScript" type="text/javascript">
	function showTeacher(tempId,planType) {
		var targetPage = 1;
		$.ajax({
			type : 'post',
			url : 'TrainingPlan_trainingPlanTable',
			data : {
				currentPage : targetPage,
				departmentid : tempId,
				planType : planType,
			},
			beforeSend : function(html) {
				$.blockUI({
					showOverlay : false,
					message : '数据加载中...',
					css : {
						border : 'none',
						padding : '5px',
						backgroundColor : '#000',
						'-webkit-border-radius' : '10px',
						'-moz-border-radius' : '10px',
						opacity : .5,
						color : '#fff',
						top : '170px',
						left : $(window).width() / 2 + 'px',
						width : '150px',
						height : '20px'
					}
				});
			},
			success : function(html) {
				$.unblockUI();
				$('#news_right_content').html(html);
			},
			error : function() {
				$.unblockUI();
			}
		});
	}
</script>
<c:if test="${empty(subjectList)}">
	<tr>
		<td colspan="5" style="text-align: center"><a href="">没有检索到相关记录。</a>
		</td>
	</tr>
</c:if>
<c:if test="${!empty(subjectList)}">
<br><br>
	<table class="plan_table_list_new">
		<tbody>
		<tr>
		<th rowspan="3" style="width: 30px;">课程<br>性质</th>
		<th rowspan="3" style="width: 20px;">序号</th>
		<th rowspan="3" style="width: 60px;">课程编号</th>
		<th rowspan="3" style="width: 160px;">课程名称</th>
		<th rowspan="3" style="width: 20px;">学分</th>
		<th rowspan="1" colspan="4"  style="width: 80px;">学时分配</th>
		<th colspan="8"  style="width: 160px;">学期学时数分配</th>
		<th rowspan="3" style="width: 60px;">备注</th>
		</tr>
		<tr>
		<th rowspan="2" style="width: 20px;">理论</th>
		<th colspan="3"  style="width: 60px;">实践</th>
		<th colspan="2">第一<br>学年</th>
		<th colspan="2">第二<br>学年</th>
		<th colspan="2">第三<br>学年</th>
		<th colspan="2">第四<br>学年</th>
		</tr>
		<tr>
		<th rowspan="1" style="width: 20px;">实验</th>
		<th rowspan="1" style="width: 20px;">上机</th>
		<th rowspan="1" style="width: 20px;">其它</th>
		<th style="width: 20px;">1</th>
		<th style="width: 20px;">2</th>
		<th style="width: 20px;">3</th>
		<th style="width: 20px;">4</th>
		<th style="width: 20px;">5</th>
		<th style="width: 20px;">6</th>
		<th style="width: 20px;">7</th>
		<th style="width: 20px;">8</th>
		</tr>
		<s:iterator var="dictionary" id="dictionary" value="dictionaryList" status="d">
		<%int i=0; int j=0;%>
		<s:iterator var="subject" id="subject" value="subjectList" status="s">
		<s:if test="#dictionary.dictionarycode==#subject.subjecttype">
		<tr>
		<%i++; System.out.println(i);%>
		<td ><s:property value="#subject.subjecttypename" /></td>
		<td><s:property value="#s.count" /></td>
		<td><s:property value="#subject.subjectno" /></td>
		<td><a href="javascript:void(0);" onclick="window.open('Teacher_teacherDetail_${subject.subjectteacherid}.shtm')">
		<s:property value="#subject.subjectname" /></a></td>
		<td><s:property value="#subject.subjectcredit" /></td>
		<td><s:property value="#subject.classhourfortheory" /></td>
		<td><s:property value="#subject.classhourfortest" /></td>
		<td><s:property value="#subject.classhourformachine" /></td>
		<td><s:property value="#subject.classhourforother" /></td>
		<td><s:property value="#subject.termclasshourforone" /></td>
		<td><s:property value="#subject.termclasshourfortwo" /></td>
		<td><s:property value="#subject.termclasshourforthree" /></td>
		<td><s:property value="#subject.termclasshourforfour" /></td>
		<td><s:property value="#subject.termclasshourforfive" /></td>
		<td><s:property value="#subject.termclasshourforsix" /></td>
		<td><s:property value="#subject.termclasshourforseven" /></td>
		<td><s:property value="#subject.termclasshourforeight" /></td>
		<td><s:property value="#subject.subjectremark" /></td>
		</tr></s:if>
		</s:iterator></s:iterator>
		</tbody>
	</table><br><br><br><br>
</c:if>
