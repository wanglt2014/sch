<%@ page contentType="text/html; charset=utf-8" language="java"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
String request_path = request.getContextPath();
	// 当前导航栏位置
	request.setAttribute("cur_nav", 5);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>人才培养方案_${tDepartmentWithBLOBs.departmentname}</title>
<meta http-equiv="Content-Type" name="description"
	content="${tDepartmentWithBLOBs.departmentname}" />
<link rel="shortcut icon" href="favicon.ico" />
<jsp:include page="../pre.jsp"></jsp:include>
<%-- <script language="JavaScript" type="text/javascript" --%>
<%-- 	src="${js_path}/fileUploadHandle.js"></script> --%>
</head>

<body>
	<div id="fade" class="black_overlay"></div>
		<jsp:include page="../top.jsp"></jsp:include>
	<div class="container" style="position: relative;">
		<jsp:include page="../nav.jsp"></jsp:include>
		<div style="position: relative; margin: 5px 0px 10px 0px;">
		<div id="index_top">
			<div id="news_left_content">
					<div id="right_content_top">
						<ul>
							<li class="normal_title_content">
								人才培养方案&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</li>
						</ul>
						<div class="normal_content_top">
						<div class="first_center_td" style="margin-left:0px;margin-right: 0px;">
							<s:iterator var="department" value="tdepartmentList" status="st">
							<div class="first_line_info" >
									<table class="news_main_content" width="100%" >
									<tr>
									<td  style="width: 100%;">
									<a target="_self" href="TrainingPlan_toPlanPage_${department.departmentid}.shtm" title="<s:property value="#department.departmentname" />">
<%-- 									<a href="javascript:void(0);"  onclick="showContent(${department.departmentid});" title="<s:property value="#department.departmentname" />"> --%>
									<s:property value="#department.departmentname" /> </a>
									</td>
									</tr>
									</table>
								</div>		
								<div class='separatorLine'></div>
							</s:iterator>
						</div>
						</div>
					</div>
				</div>
			<div id="news_right_content_detail" >
				<c:if test="${empty(teacherList)}">
				<tr>
					<td colspan="5" style="text-align: center"><a href="">没有检索到相关记录。</a>
					</td>
				</tr>
				</c:if>
				<c:if test="${!empty(teacherList)}">
				<br><br>
					<s:iterator var="dictionary" value="dictionaryList" status="s" >
					<div align="center" style="width: 100%;">
					<h3 class="span_title"><s:property value="#dictionary.dictionaryvalue" /></h3>
					<hr color="#bbbbbb" width="80%" />
					<table class="teacher_list">
						<s:iterator var="teacher" value="teacherList" status="st">
				<%-- 		<s:property value="#dictionary.dictionarycode" />@@@<s:property value="#teacher.department" />#### --%>
				<%-- 		<s:property value="#st.index" /> --%>
						<s:if test="#dictionary.dictionarycode==#teacher.department">
						  <s:if test="#st.index % 4 == 0">
						<tr>
						  </s:if>
						  <td>                
						  	<a href="Teacher_teacherDetail_${teacher.id}.shtm"><img class="img_thunmb" alt="' + teacher.teachername + '" src="file://<s:property value="#teacher.iimageurll"/>" /></a>
						  	<br>
						  	<a href="Teacher_teacherDetail_${teacher.id}.shtm"><i class="point">•</i>&nbsp;<s:property value="#teacher.teachername" /></a>
						  </td>            
						  <s:if test="#st.index % 4 == 3">                
						  </tr>
						  </s:if>
				<!-- 		<div class="artic_content"> -->
						
				<!-- 		</div> -->
				<!-- 			<div class="one_artic"> -->
				<!-- 				<div class="artic_content"> -->
				<%-- 				<s:property value="#dictionary.dictionaryvalue" /> --%>
				<%-- 					<s:property value="#teacher.teachername" /> --%>
				<%-- 					<a href="Teacher_teacherDetail_${teacher.id}.shtm"><img alt="' + teacher.teachername + '" src="<s:property value="#teacher.iimageurll"/>" /></a> --%>
				<%-- 					<a style="color: #524EA3; text-decoration: underline;" href="Article_teachDetail_<s:property value="#teachInfo.articleid"/>.shtm" target="_blank">[阅读全文]</a> --%>
				<!-- 				</div> -->
				<!-- 				<div class="split_spx"></div> -->
				<!-- 			</div> -->
						</s:if>
						</s:iterator>
						</table>
						</div>
						<br><br><br><br>
					</s:iterator>
				</c:if>
								</div>
		</div>
		</div>
		<jsp:include page="../bottom.jsp"></jsp:include>
				
		</div>
</body>
</html>