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
<title>课程信息</title>
<meta http-equiv="Content-Type" name="description"
	content="" />
<link rel="shortcut icon" href="favicon.ico" />
<jsp:include page="../pre.jsp"></jsp:include>

<style type="text/css">
.div_info{font-size: 14px;height: 100%;height: auto;min-height: 200px;margin-top: 20px;width: 90%;margin-left: 5%;}</style>

</head>

<body>
	<div id="fade" class="black_overlay"></div>
	<div class="container" style="position: relative;">
		<jsp:include page="../top.jsp"></jsp:include>
		<jsp:include page="../nav.jsp"></jsp:include>
		<div style="position: relative; margin: 5px 0px 10px 0px;">
			<div id="index_top">
				<div id="news_right_content_detail">
					<div class="one_artic_detail">
						<div class="title_detail" align="center">
							<b style="font-size: 15px; font-family: sans-serif;"><c:out
									value="${tSubjectDTO.subjectname}" /> </b>
						</div>
						<div class="artic_author_detail" align="center">
						<div class="bdsharebuttonbox" style="text-align: right;">
								<label for="fontsize">字体大小:</label> <select id="fontsize">
									<option value="12px">小号</option>
									<option value="14px">较小</option>
									<option value="15px" selected="selected">中号</option>
									<option value="18px">较大</option>
									<option value="24px">大号</option>
								</select>
						</div>
						</div>
<!-- 						<div class="normal_summary"> -->
<%-- 							<strong>课程简介：</strong><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --%>
<%-- 							<c:out value="${tSubjectDTO.subjecttext}" escapeXml="false" /> --%>
<!-- 						</div>  -->
<!-- 						<div class="artic_content_detail" id="articcontentdetail"> -->
						<div class="div_planInfo">
							<h3 class="title_teacher">课程简介：</h3>
							<hr class="line_teacher" />
							<div class="planInfo">
							<c:out value="${tSubjectDTO.subjecttext}" escapeXml="false" />
							</div>
						</div>
						<div class="div_planInfo">
							<h3 class="title_teacher">课程资料：</h3>
							<hr class="line_teacher" />
							<div class="planInfo" style="margin-left: 10%;">
							<s:if test="tSubjectDTO.subjectoutlinePath!=null">
							<strong>教学大纲：</strong>
							<a href="<%=request_path %>/${tSubjectDTO.subjectoutlinePath}" id="filePath1" title="" ><c:out value="${tSubjectDTO.subjectoutlineName}" /></a><br /><br />
							</s:if>
							<s:if test="tSubjectDTO.subjectschedulePath!=null">
							<strong>教学进度表：</strong>
							<a href="<%=request_path %>/${tSubjectDTO.subjectschedulePath}" id="filePath2" title="" ><c:out value="${tSubjectDTO.subjectscheduleName}" /></a><br /><br />
							</s:if>
							<s:if test="tSubjectDTO.subjectinfoPath!=null">
							<strong>课程资料：</strong>
							<a href="<%=request_path %>/${tSubjectDTO.subjectinfoPath}" id="filePath3" title="" ><c:out value="${tSubjectDTO.subjectinfoName}" /></a><br /><br />
							</s:if>
							</div>
						
						</div>
						<div class="div_planInfo">
						<hr class="line_teacher" />
							<div class="planInfo" style="margin-left: 10%;">
							<strong>任课教师：</strong><c:out value="${tSubjectDTO.subjectteachername}" escapeXml="false" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="../bottom.jsp"></jsp:include>
	</div>
</body>
</html>