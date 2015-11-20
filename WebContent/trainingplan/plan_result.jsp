<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>
<%-- <jsp:include page="../pre.jsp"></jsp:include> --%>
		<div class="one_artic">
		<c:if test="${!empty(tDepartmentWithBLOBs.departmentname)}">
		<h2 class="title_plan" align="center">${tDepartmentWithBLOBs.departmentname}</h2>
		<hr class="line_teacher" />
		<div class="plan_content_detail">
		<c:out value="${tDepartmentWithBLOBs.departmentintroduction}" escapeXml="false" />
		</div><br>
		<hr class="line_teacher" /><br>
		<div style="width: 100%;" align="center">
		<button class="green_btn" onclick="window.location.href('TrainingPlan_trainingPlanDetail_${tDepartmentWithBLOBs.departmentid}.shtm')">学科方向</button>
		<button class="green_btn" onclick="window.location.href('TrainingPlan_toTablePage_${tDepartmentWithBLOBs.departmentid}.shtm')">培养方案</button>
		<button class="green_btn" onclick="window.location.href('TrainingPlan_doQueryTeacher_${tDepartmentWithBLOBs.departmentid}_${tDepartmentWithBLOBs.departmenttype}.shtm')">教师简介</button>
		</div>
		</c:if>
		</div>
<div class="news_page">
	<s:if test="totalPageCount > 0">
		<jsp:include page="../common/common_page.jsp" />
	</s:if>


</div>
