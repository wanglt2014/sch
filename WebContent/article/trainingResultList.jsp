<%@ page contentType="text/html; charset=utf-8" language="java"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>
<%
	// 当前导航栏位置
	request.setAttribute("cur_nav", 6);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="人才培养成果" />
<title>人才培养成果_${sitename}</title>

<link rel="shortcut icon" href="favicon.ico" />
<jsp:include page="../pre.jsp"></jsp:include>

<script language="JavaScript" type="text/javascript">
$(document).ready(function() {
	showTrainingContent("teacher");
});
function showTrainingContent(excType) {
	var targetPage = '1';
	var url = "doQueryhonoraward";
	if(excType=="honoraward"){
		url = "doQueryhonoraward";
	}else if(excType=="studentaward"){
		url = "doQuerystudentaward";
	}else if(excType=="learnact"){
		url = "doQuerylearnact";
	}else if(excType=="bookclub"){
		url = "doQuerybookclub";
	}else if(excType=="socialevent"){
		url = "doQuerysocialevent";
	}
	$.ajax({
		type : 'post',
		url : 'StuTrain_'+url,
		data : {
			currentPage : targetPage
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
</head>

<body>
	<div id="fade" class="black_overlay"></div>
	<jsp:include page="../top.jsp"></jsp:include>
	<div class="container" style="position: relative;">
		<jsp:include page="../nav.jsp"></jsp:include>
		<div style="position: relative; margin: 5px 0px 10px 0px;">
			<div id="index_top">
				<div id="news_left_content">
<%-- 					<c:if test="${!empty(notifylist)}"> --%>
						<div id="right_content_top">
							<ul>
								<li class="normal_title_content">
									人才培养成果&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</li>
							</ul>
							<div class="normal_content_top">
							<div class="first_center_td" style="margin-left:0px;margin-right: 0px;">
								<div class="first_line_info" >
								<table class="news_main_content" width="100%" >
								<tr>
								<td  style="width: 100%;">
								<a href="javascript:void(0);"  onclick="showTrainingContent('honoraward');" title="荣誉获奖">
								荣誉获奖</a>
								</td>
								</tr>
								</table>
								</div>
								<div class='separatorLine'></div>
								<div class="first_line_info" >
								<table class="news_main_content" width="100%" >
								<tr>
								<td  style="width: 100%;">
								<a href="javascript:void(0);"  onclick="showTrainingContent('studentaward');" title="学生获奖">
								学生获奖</a>
								</td>
								</tr>
								</table>
								</div>
								<div class='separatorLine'></div>
								<div class="first_line_info" >
								<table class="news_main_content" width="100%" >
								<tr>
								<td  style="width: 100%;">
								<a href="javascript:void(0);"  onclick="showTrainingContent('learnact');" title="学术活动">
								学术活动</a>
								</td>
								</tr>
								</table>
								</div>
								<div class='separatorLine'></div>
								<div class="first_line_info" >
								<table class="news_main_content" width="100%" >
								<tr>
								<td  style="width: 100%;">
								<a href="javascript:void(0);"  onclick="showTrainingContent('bookclub');" title="读书会">
								读书会</a>
								</td>
								</tr>
								</table>
								</div>
								<div class='separatorLine'></div>
								<div class="first_line_info" >
								<table class="news_main_content" width="100%" >
								<tr>
								<td  style="width: 100%;">
								<a href="javascript:void(0);"  onclick="showTrainingContent('socialevent');" title="社会事件">
								社会事件</a>
								</td>
								</tr>
								</table>
								</div>
								<div class='separatorLine'></div>
								</div>
							</div>
						</div>
<%-- 					</c:if> --%>
				</div>
				<div id="news_right_content"></div>
			</div>
		</div>
		<jsp:include page="../bottom.jsp"></jsp:include>
	</div>
</body>
</html>