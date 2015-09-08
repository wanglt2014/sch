<%@ page contentType="text/html; charset=utf-8" language="java"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
String request_path = request.getContextPath();
	// 当前导航栏位置
	request.setAttribute("cur_nav", 4);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>教务教学通知_${tTeacherdetail.teachername}</title>
<link rel="shortcut icon" href="favicon.ico" />
<jsp:include page="../pre.jsp"></jsp:include>
<%-- <script language="JavaScript" type="text/javascript" --%>
<%-- 	src="${js_path}/fileUploadHandle.js"></script> --%>
  <script type="text/javascript">
//   $(document).ready(function(){
//     $("#dialog").dialog();
//   });
  </script>
<style type="text/css">
.container {width: 100%;}
.photo { width: 40%;position:absolute; text-align: right;height: 300px;height:auto;}
.content_left {float: left;text-align: center; margin-left: 45%; width: 45%;}
.content_all {width: 80%;text-align: center; margin-left: 10%;}
.base_info{margin-top: 10px;text-align: center;}
.ul_teacher{list-style:disc; !important;}
td.p20{width: 20%;height: 30px;}
td.p15{width: 15%;height: 30px;}
td.p80{width: 80%;height: 30px;}

.yj{
    padding:10px; width:200px; height:15px;
    border: 0px solid #000000;
    -moz-border-radius: 20px 20px 0px 0px;     
    -webkit-border-radius: 20px 20px 0px 0px;  
    border-radius:20px 20px 0px 0px;
    background-color: #C2E1FF;
    text-align: center;
}

</style>
</head>

<body >
	<div id="fade" class="black_overlay"></div>
		<jsp:include page="../top.jsp"></jsp:include>
	<div class="container" style="position: relative;">
		<jsp:include page="../nav.jsp"></jsp:include>
		<div style="position: relative; margin: 5px 0px 10px 0px; height: auto;height:100%;" >
			<div id="index_top">
				<div id="news_right_content_detail" style="width: 100%;margin-left: 0px;" >
					<div class="one_artic_detail" style="width: 100%;">
<!-- 						<div class="title_detail_nolist" align="center"> -->
<%-- 							<b style="font-size: 15px; font-family: sans-serif;"><c:out --%>
<%-- 									value="${tTeacherdetail.teachername}" /> </b> --%>
<!-- 						</div> -->
<!-- 						<div class="artic_author_detail" align="center"> -->
<!-- 							作者: -->
<%-- 							<c:out value="${tTeacherdetail.author}" /> --%>
<!-- 							时间: -->
<%-- 							<c:out value="${tTeacherdetail.createdate}" /> --%>
<!-- 							<div class="bdsharebuttonbox" style="text-align: right;"> -->
<%-- 								<label for="fontsize">字体大小:</label> <select id="fontsize"> --%>
<!-- 									<option value="12px">小号</option> -->
<!-- 									<option value="14px">较小</option> -->
<!-- 									<option value="15px" selected="selected">中号</option> -->
<!-- 									<option value="18px">较大</option> -->
<!-- 									<option value="24px">大号</option> -->
<%-- 								</select> --%>
<!-- 							</div> -->
<!-- 						</div> -->

<!-- 						<div class="normal_summary"> -->
<!-- 							描述： -->
<%-- 							<c:out value="${bsArticledetail.articlesummary}" escapeXml="false" /> --%>
<!-- 						</div>  -->
				<div class="div_baseinfo"><br /><br />
				<div style="text-align: center;width: 90%;margin-left: auto;margin-right: auto;"> 
					<div class="title_teacher yj">基本信息</div>
					<hr class="line_teacher" />
				</div>
<%-- 							<c:out value="${bsArticledetail.content}" escapeXml="false" /> --%>
<%-- 							<s:property value="tTeacherdetail.iimageurll"/> --%>
<%-- 							<div align="center" style="width: 100%"><img src="<s:property value="tTeacherdetail.iimageurll"/>" WIDTH="200" HEIGHT="200" BORDER="0" alt=""/></div> --%>
					<div class="baseInfo">
						<div class="content_left">
						<div style="margin-top: 20px;" >
<!-- 							<label>姓名:</label>  -->
						<h1><s:property value="tTeacherdetail.teachername"/></h1>
						<div class="base_info">
						<s:property value="tTeacherdetail.titlename"/>
						<s:if test="tTeacherdetail.tutorType==1">硕导</s:if>
						<s:else>博导</s:else>
						</div>
						<div class="base_info">
						<s:property value="tTeacherdetail.departmentname"/> 专业
						</div>
						<div class="base_info">
						<s:property value="tTeacherdetail.introduction"/>
						</div>
<%-- 							<div><s:property value="tTeacherdetail.birthday"/></div> --%>
						</div>
						</div>
						<div id="photo" class="photo">
						<img class="img_photo" src="<s:property value="tTeacherdetail.iimageurll"/>" alt=""/>
						</div>
					</div>
<!-- 							<div id="dialog" title="Dialog Title">I'm in a dialog</div> -->
<!-- 						<div style="height:1px; margin-top:-1px;clear: both;overflow:hidden;"></div> -->
				</div>
				<s:if test="tSubjectDtoList!=null">
				<div class="div_baseinfo">
				<div style="text-align: center;width: 90%;margin-left: auto;margin-right: auto;"> 
					<div class="title_teacher yj">讲授课程资料</div>
					<hr class="line_teacher" />
				</div>
					<div  class="baseInfo">
						<div class="content_all">
						<div style="margin-top: 20px;" >
						<table style="width: 100%;" class="teacher_table">
						<tr><th>课程名称</th><th>课程性质</th><th>教学大纲</th><th>教学进度表</th><th>课程资料</th></tr>
						<s:iterator var="subjectDTO" value="tSubjectDtoList" status="tps">
						<tr>
						<td class="p20">
						<s:property value="#subjectDTO.subjectname"/></td>
						<td class="p20"><s:property value="#subjectDTO.subjecttypename"/></td>
						<td class="p20">
						<s:if test="#subjectDTO.subjectoutlinePath!=null">
						<a href="<%=request_path %>/${subjectDTO.subjectoutlinePath}">[教学大纲]</a>
						</s:if>
						<s:else></s:else>
						</td>
						<td class="p20">
						<s:if test="#subjectDTO.subjectschedulePath!=null">
						<a href="<%=request_path %>/${subjectDTO.subjectschedulePath}">[教学进度表]</a>
						</s:if>
						<s:else></s:else>
						</td>
						<td class="p20">
						<s:if test="#subjectDTO.subjectinfoPath!=null">
						<a href="<%=request_path %>/${subjectDTO.subjectinfoPath}">[课程资料]</a>
						</s:if>
						<s:else></s:else>
						</td>
						</tr>
						</s:iterator>
						</table>
<!-- 								<ul class="ul_teacher"> -->
<%-- 								<li><i class="point">•</i>&nbsp;<s:property value="tSubject.subjectname"/>&nbsp;<s:property value="tSubject.subjecttypename"/>&nbsp;<a href="">[教学大纲]</a><a href="">[教学进度表]</a><a href="">[课程资料]</a></li> --%>
<!-- 								</ul> -->
						</div>
						</div>
					</div>
<!-- 							<div id="dialog" title="Dialog Title">I'm in a dialog</div> -->
<!-- 						<div style="height:1px; margin-top:-1px;clear: both;overflow:hidden;"></div> -->
				</div>
				</s:if>
				<s:if test="tResearchList!=null">
				<div class="div_baseinfo" >
				<div style="text-align: center;width: 90%;margin-left: auto;margin-right: auto;"> 
					<div class="title_teacher yj">立项信息</div>
					<hr class="line_teacher" />
				</div>
					<div  class="baseInfo">
						<div class="content_all">
						<div style="margin-top: 20px;" >
						<table style="width: 100%;" class="teacher_table">
						<tr><th>教师排名</th><th>项目种类</th><th>项目类别</th><th>项目名称</th><th>项目编号</th><th>开始时间</th><th>结束时间</th><th>是否在研</th><th>结题等级</th></tr>
						<s:iterator var="tResearchDetail" value="tResearchList" status="trl">
						<tr>
						<td class="p15">
						<s:property value="#tResearchDetail.researchrank"/></td>
						<td class="p15"><s:property value="#tResearchDetail.researchtype"/></td>
						<td class="p15"><s:property value="#tResearchDetail.researchlevel"/></td>
						<td class="p15"><s:property value="#tResearchDetail.researchname"/></td>
						<td class="p15"><s:property value="#tResearchDetail.researchno"/></td>
						<td class="p15"><s:property value="#tResearchDetail.researchbegindate"/></td>
						<td class="p15"><s:property value="#tResearchDetail.researchenddate"/></td>
						<td class="p15"><s:property value="#tResearchDetail.isresearch"/></td>
						<td class="p15"><s:property value="#tResearchDetail.researchknot"/></td>
						</tr>
						</s:iterator>
						</table>
						</div>
						</div>
					</div>
				</div>
				</s:if>
				<s:if test="tPaperList!=null">
				<div class="div_baseinfo" >
				<div style="text-align: center;width: 90%;margin-left: auto;margin-right: auto;"> 
					<div class="title_teacher yj">论文信息</div>
					<hr class="line_teacher" />
				</div>
					<div  class="baseInfo">
						<div class="content_all">
						<div style="margin-top: 20px;" >
						<table style="width: 100%;" class="teacher_table">
						<tr><th>作者排名</th><th>论文题目</th><th>发表刊物/论文集名称</th>
						<th>刊物国别</th><th>发表/出版时间</th><th>期号（卷号）</th><th>页码</th>
						<th>论文收录</th><th>影响因子</th><th>论文转载</th><th>一级学科</th><th>资助项目编号</th></tr>
						<s:iterator var="tPaperDetail" value="tPaperList" status="tpa">
						<tr>
						<td class="p15">
						<s:property value="#tPaperDetail.paperauthor"/></td>
						<td class="p15">
						<s:property value="#tPaperDetail.papername"/></td>
						<td class="p15"><s:property value="#tPaperDetail.papernotename"/></td>
						<td class="p15"><s:property value="#tPaperDetail.papernotecountry"/></td>
						<td class="p15"><s:property value="#tPaperDetail.papernotedate"/></td>
						<td class="p15"><s:property value="#tPaperDetail.papernoteno"/></td>
						<td class="p15"><s:property value="#tPaperDetail.papernotepage"/></td>
						<td class="p15"><s:property value="#tPaperDetail.paperincluded"/></td>
						<td class="p15"><s:property value="#tPaperDetail.paperfactors"/></td>
						<td class="p15"><s:property value="#tPaperDetail.paperreprint"/></td>
						<td class="p15"><s:property value="#tPaperDetail.paperclassa"/></td>
						<td class="p15"><s:property value="#tPaperDetail.paperprojectno"/></td>
<!-- 						<td class="p15"> -->
<%-- 						<s:if test="#tPaperDetail.paperdownloadPath!=null"> --%>
<%-- 						<a href="<%=request_path %>/${tPaperDetail.paperdownloadPath}">[论文电子版]</a> --%>
<%-- 						</s:if> --%>
<%-- 						<s:else></s:else> --%>
<!-- 						</td> -->
						</tr>
						</s:iterator>
						</table>
						</div>
						</div>
					</div>
				</div>
				</s:if>
				<s:if test="tWorkList!=null">
				<div class="div_baseinfo" >
				<div style="text-align: center;width: 90%;margin-left: auto;margin-right: auto;"> 
					<div class="title_teacher yj">著作信息</div>
					<hr class="line_teacher" />
				</div>
					<div  class="baseInfo">
						<div class="content_all">
						<div style="margin-top: 20px;" >
						<table style="width: 100%;" class="teacher_table">
						<tr><th class="p15">作者排名</th><th class="p15">著作题目</th>
						<th class="p15">出版单位</th><th class="p15">出版地</th>
						<th class="p15">出版时间</th><th class="p15">著作类别</th>
						<th class="p15">原作者</th><th class="p15">自己承担字数/全书总字数（千）</th>
						<th class="p15">已出几版</th><th class="p15">是否译成外文</th>
						<th class="p15">ISBN号</th><th class="p15">一级学科</th><th class="p15">资助项目编号</th></tr>
						<s:iterator var="tWork" value="tWorkList" status="tpr">
						<tr>
						<td style="width: 100px;">
						<s:property value="#tWork.workauthorrank"/>
						</td>
						<td class="p15"><s:property value="#tWork.worktitle"/></td>
						<td class="p15"><s:property value="#tWork.workpublishunit"/></td>
						<td class="p15"><s:property value="#tWork.workpublisharea"/></td>
						<td class="p15"><s:property value="#tWork.workpublishtime"/></td>
						<td class="p15"><s:property value="#tWork.worktype"/></td>
						<td class="p15"><s:property value="#tWork.oriauthor"/></td>
						<td class="p15"><s:property value="#tWork.totalword"/></td>
						<td class="p15"><s:property value="#tWork.alreadypublish"/></td>
						<td class="p15"><s:property value="#tWork.translateforeign"/></td>
						<td class="p15"><s:property value="#tWork.isbnno"/></td>
						<td class="p15"><s:property value="#tWork.classa"/></td>
						<td class="p15"><s:property value="#tWork.projectno"/></td>
						</tr>
						</s:iterator>
						</table>
						</div>
						</div>
					</div>
				</div>
				</s:if>
				<s:if test="tPrizeList!=null">
				<div class="div_baseinfo" >
				<div style="text-align: center;width: 90%;margin-left: auto;margin-right: auto;"> 
					<div class="title_teacher yj">获奖信息</div>
					<hr class="line_teacher" />
				</div>
					<div  class="baseInfo">
						<div class="content_all">
						<div style="margin-top: 20px;" >
						<table style="width: 100%;" class="teacher_table">
						<tr><th class="p15">获奖排名</th><th class="p15">奖项名称</th>
						<th class="p15">成果名称</th><th class="p15">奖励等级</th>
						<th class="p15">成果类别</th><th class="p15">授奖部门</th>
						<th class="p15">获奖时间</th><th class="p15">证书编号</th></tr>
						<s:iterator var="tprize" value="tPrizeList" status="tpr">
						<tr>
						<td style="width: 100px;">
						<s:property value="#tprize.prizerank"/>
						</td>
						<td class="p15"><s:property value="#tprize.prizetitle"/></td>
						<td class="p15"><s:property value="#tprize.prizeresultname"/></td>
						<td class="p15"><s:property value="#tprize.prizelevel"/></td>
						<td class="p15"><s:property value="#tprize.prizetype"/></td>
						<td class="p15"><s:property value="#tprize.prizedep"/></td>
						<td class="p15"><s:property value="#tprize.prizedate"/></td>
						<td class="p15"><s:property value="#tprize.prizeno"/></td>
						</tr>
						</s:iterator>
						</table>
						</div>
						</div>
					</div>
				</div>
				</s:if>
				<s:if test="tPartjobList!=null">
				<div class="div_baseinfo" >
				<div style="text-align: center;width: 90%;margin-left: auto;margin-right: auto;"> 
					<div class="title_teacher yj">学术兼职</div>
					<hr class="line_teacher" />
				</div>
					<div  class="baseInfo">
						<div class="content_all">
						<div style="margin-top: 20px;" >
						<table style="width: 100%;" class="teacher_table">
						<tr><th class="p15">学会/协会/期刊名称</th><th class="p15">在学会/协会/期刊中职务</th>
						<th class="p15">任职开始时间</th><th class="p15">任职结束时间</th>
						<th class="p15">学会/协会/期刊级别</th></tr>
						<s:iterator var="tPartjob" value="tPartjobList" status="tpr">
						<tr>
						<td style="width: 100px;">
						<s:property value="#tPartjob.partplace"/></td>
						<td class="p15"><s:property value="#tPartjob.partjob"/></td>
						<td class="p15"><s:property value="#tPartjob.partbegintime"/></td>
						<td class="p15"><s:property value="#tPartjob.partendtime"/></td>
						<td class="p15"><s:property value="#tPartjob.partlevel"/></td>
						</tr>
						</s:iterator>
						</table>
						</div>
						</div>
					</div>
				</div>
				</s:if>
				<s:if test="honorandotherList!=null">
				<div class="div_baseinfo" >
				<div style="text-align: center;width: 90%;margin-left: auto;margin-right: auto;"> 
					<div class="title_teacher yj">荣誉及其他</div>
					<hr class="line_teacher" />
				</div>
					<div  class="baseInfo">
						<div class="content_all">
						<div style="margin-top: 20px;" >
						<table style="width: 100%;" class="teacher_table">
						<tr><th class="p15">荣誉名称</th><th class="p15">荣誉级别</th>
						<th class="p15">授予部门</th><th class="p15">备注</th></tr>
						<s:iterator var="honorandother" value="honorandotherList" status="tpr">
						<tr>
						<td style="width: 100px;">
						<s:property value="#honorandother.honortitle"/></td>
						<td class="p15"><s:property value="#honorandother.honorleave"/></td>
						<td class="p15"><s:property value="#honorandother.honordep"/></td>
						<td class="p15"><s:property value="#honorandother.honorremark"/></td>
						</tr>
						</s:iterator>
						</table>
						</div>
						</div>
					</div>
				</div>
				</s:if>
				<s:if test="teachresearchList!=null">
				<div class="div_baseinfo" >
				<div style="text-align: center;width: 90%;margin-left: auto;margin-right: auto;"> 
					<div class="title_teacher yj">教改立项</div>
					<hr class="line_teacher" />
				</div>
					<div  class="baseInfo">
						<div class="content_all">
						<div style="margin-top: 20px;" >
						<table style="width: 100%;" class="teacher_table">
						<tr><th>教师排名</th><th>项目类别</th><th>项目名称</th><th>项目编号</th><th>开始时间</th><th>结束时间</th><th>是否在研</th><th>结题等级</th></tr>
						<s:iterator var="tResearchDetail" value="teachresearchList" status="trl">
						<tr>
						<td class="p15">
						<s:property value="#tResearchDetail.researchrank"/></td>
						<td class="p15"><s:property value="#tResearchDetail.researchlevel"/></td>
						<td class="p15"><s:property value="#tResearchDetail.researchname"/></td>
						<td class="p15"><s:property value="#tResearchDetail.researchno"/></td>
						<td class="p15"><s:property value="#tResearchDetail.researchbegindate"/></td>
						<td class="p15"><s:property value="#tResearchDetail.researchenddate"/></td>
						<td class="p15"><s:property value="#tResearchDetail.isresearch"/></td>
						<td class="p15"><s:property value="#tResearchDetail.researchknot"/></td>
						</tr>
						</s:iterator>
						</table>
						</div>
						</div>
					</div>
				</div>
				</s:if>
				<s:if test="teachpaperList!=null">
				<div class="div_baseinfo" >
				<div style="text-align: center;width: 90%;margin-left: auto;margin-right: auto;"> 
					<div class="title_teacher yj">教改论文</div>
					<hr class="line_teacher" />
				</div>
					<div  class="baseInfo">
						<div class="content_all">
						<div style="margin-top: 20px;" >
						<table style="width: 100%;" class="teacher_table">
						<tr><th>作者排名</th><th>论文题目</th><th>发表刊物/论文集名称</th>
						<th>刊物国别</th><th>发表/出版时间</th><th>期号（卷号）</th><th>页码</th>
						<th>论文收录</th><th>影响因子</th><th>论文转载</th><th>资助项目编号</th></tr>
						<s:iterator var="tPaperDetail" value="teachpaperList" status="tpa">
						<tr>
						<td class="p15">
						<s:property value="#tPaperDetail.paperauthor"/></td>
						<td class="p15">
						<s:property value="#tPaperDetail.papername"/></td>
						<td class="p15"><s:property value="#tPaperDetail.papernotename"/></td>
						<td class="p15"><s:property value="#tPaperDetail.papernotecountry"/></td>
						<td class="p15"><s:property value="#tPaperDetail.papernotedate"/></td>
						<td class="p15"><s:property value="#tPaperDetail.papernoteno"/></td>
						<td class="p15"><s:property value="#tPaperDetail.papernotepage"/></td>
						<td class="p15"><s:property value="#tPaperDetail.paperincluded"/></td>
						<td class="p15"><s:property value="#tPaperDetail.paperfactors"/></td>
						<td class="p15"><s:property value="#tPaperDetail.paperreprint"/></td>
						<td class="p15"><s:property value="#tPaperDetail.paperprojectno"/></td>
						<td class="p15">
						<s:if test="#tPaperDetail.paperdownloadPath!=null">
						<a href="<%=request_path %>/${tPaperDetail.paperdownloadPath}">[论文电子版]</a>
						</s:if>
						<s:else></s:else>
						</td>
						</tr>
						</s:iterator>
						</table>
						</div>
						</div>
					</div>
				</div>
				</s:if>
				<s:if test="teachWorkList!=null">
				<div class="div_baseinfo" >
				<div style="text-align: center;width: 90%;margin-left: auto;margin-right: auto;"> 
					<div class="title_teacher yj">教改著作</div>
					<hr class="line_teacher" />
				</div>
					<div  class="baseInfo">
						<div class="content_all">
						<div style="margin-top: 20px;" >
						<table style="width: 100%;" class="teacher_table">
						<tr><th class="p15">作者排名</th><th class="p15">教材名称</th>
						<th class="p15">出版单位</th><th class="p15">出版地</th>
						<th class="p15">出版时间</th><th class="p15">自己承担字数/全书总字数（千）</th>
						<th class="p15">已出几版</th>
						<th class="p15">ISBN号</th><th class="p15">资助项目编号</th></tr>
						<s:iterator var="tWork" value="teachWorkList" status="tpr">
						<tr>
						<td style="width: 100px;">
						<s:property value="#tWork.workauthorrank"/>
						</td>
						<td class="p15"><s:property value="#tWork.worktitle"/></td>
						<td class="p15"><s:property value="#tWork.workpublishunit"/></td>
						<td class="p15"><s:property value="#tWork.workpublisharea"/></td>
						<td class="p15"><s:property value="#tWork.workpublishtime"/></td>
						<td class="p15"><s:property value="#tWork.totalword"/></td>
						<td class="p15"><s:property value="#tWork.alreadypublish"/></td>
						<td class="p15"><s:property value="#tWork.isbnno"/></td>
						<td class="p15"><s:property value="#tWork.projectno"/></td>
						</tr>
						</s:iterator>
						</table>
						</div>
						</div>
					</div>
				</div>
				</s:if>
				<s:if test="speakerprizeList!=null">
				<div class="div_baseinfo" >
				<div style="text-align: center;width: 90%;margin-left: auto;margin-right: auto;"> 
					<div class="title_teacher yj">优秀主讲教师</div>
					<hr class="line_teacher" />
				</div>
					<div  class="baseInfo">
						<div class="content_all">
						<div style="margin-top: 20px;" >
						<table style="width: 100%;" class="teacher_table">
						<tr><th class="p15">奖项名称</th><th class="p15">奖励等级</th>
						<th class="p15">授奖部门</th>
						<th class="p15">获奖时间</th><th class="p15">证书编号</th></tr>
						<s:iterator var="tprize" value="speakerprizeList" status="tpr">
						<tr>
						<td style="width: 100px;">
						<s:property value="#tprize.prizetitle"/></td>
						<td class="p15"><s:property value="#tprize.prizelevel"/></td>
						<td class="p15"><s:property value="#tprize.prizedep"/></td>
						<td class="p15"><s:property value="#tprize.prizedate"/></td>
						<td class="p15"><s:property value="#tprize.prizeno"/></td>
						</tr>
						</s:iterator>
						</table>
						</div>
						</div>
					</div>
				</div>
				</s:if>
				<s:if test="teachprizeList!=null">
				<div class="div_baseinfo" >
				<div style="text-align: center;width: 90%;margin-left: auto;margin-right: auto;"> 
					<div class="title_teacher yj">教学成果奖</div>
					<hr class="line_teacher" />
				</div>
					<div  class="baseInfo">
						<div class="content_all">
						<div style="margin-top: 20px;" >
						<table style="width: 100%;" class="teacher_table">
						<tr><th class="p15">作者排名</th><th class="p15">奖项名称</th>
						<th class="p15">成果名称</th><th class="p15">奖励等级</th>
						<th class="p15">成果类别</th><th class="p15">授奖部门</th>
						<th class="p15">获奖时间</th><th class="p15">证书编号</th></tr>
						<s:iterator var="tprize" value="teachprizeList" status="tpr">
						<tr>
						<td style="width: 100px;">
						<s:property value="#tprize.prizerank"/>
						</td>
						<td class="p15"><s:property value="#tprize.prizetitle"/></td>
						<td class="p15"><s:property value="#tprize.prizeresultname"/></td>
						<td class="p15"><s:property value="#tprize.prizelevel"/></td>
						<td class="p15"><s:property value="#tprize.prizetype"/></td>
						<td class="p15"><s:property value="#tprize.prizedep"/></td>
						<td class="p15"><s:property value="#tprize.prizedate"/></td>
						<td class="p15"><s:property value="#tprize.prizeno"/></td>
						</tr>
						</s:iterator>
						</table>
						</div>
						</div>
					</div>
				</div>
				</s:if>
				<div>
<%-- 						<s:if test="bsArticledetail.download.fileshowpath!='' and bsArticledetail.download.fileshowpath!=null"> --%>
<%-- 						<a href="<%=request_path %>/${bsArticledetail.download.fileshowpath}" id="filePath" title="" ><c:out value="${bsArticledetail.download.filename}" /></a> --%>
<%-- 						</s:if> --%>
						</div>
					</div>
				</div>
			</div>
		</div>
			<%-- <input type="text" id="wordName" name="wordName"  style="display:none">
			 <input type="text" id="documentType" name="documentType" style="display:none">
			 <input type="text" id="serverName" name="serverName" style="display:none">
			 <input type="text" id="serverIp" name="serverIp" style="display:none">
			 <input type="text" id="restorePath" name="restorePath" value="${bsArticledetail.download.filepath}" style="display:none">
			 <input type="text" id="pwd" name="pwd" style="display:none">
			 <input type="text" id="account" name="account" style="display:none"> --%>
		<jsp:include page="../bottom.jsp"></jsp:include>

	</div>
</body>
</html>