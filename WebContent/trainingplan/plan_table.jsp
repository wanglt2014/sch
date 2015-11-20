<%@ page contentType="text/html; charset=utf-8" language="java"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>
<%
	String request_path = request.getContextPath();
	String image_path = request_path + "/images/blue-themes";
	String css_path = request_path + "/css/blue-themes";
	String js_path = request_path + "/js";
	request.setAttribute("request_path", request_path);
	request.setAttribute("image_path", image_path);
	request.setAttribute("css_path", css_path);
	request.setAttribute("js_path", js_path);
	// 当前导航栏位置
	request.setAttribute("cur_nav", 3);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="人才培养方案" />
<title>人才培养方案_${sitename}</title>
<link rel="shortcut icon" href="favicon.ico" />
<script language="JavaScript" type="text/javascript" src="${js_path}/jquery.js"></script>
<jsp:include page="../top.jsp"></jsp:include>
<%-- <jsp:include page="../pre.jsp"></jsp:include> --%>
<%-- <script language="JavaScript" type="text/javascript" src="${js_path}/jquery-ui.js"></script> --%>
<%-- <script language="JavaScript" type="text/javascript" src="${js_path}/jquery.blockUI.js"></script> --%>
<script language="JavaScript" type="text/javascript">
	$(document).ready(function() {
		var defultId = "${defultId}";
		showTable(defultId,1);
	});
	function showTable(tempId,planType) {
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
</head>
<body>
	<div id="fade" class="black_overlay"></div>
	<div class="container" style="position: relative;">
		<jsp:include page="../nav.jsp"></jsp:include>
		<div style="position: relative; margin: 5px 0px 10px 0px;">
			<div id="index_top">
				<div id="news_left_content">
						<div id="right_content_top">
							<ul>
								<li class="normal_title_left"></li>
								<li class="normal_title_right"></li>
								<li class="normal_title_content">
									人才培养方案&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</li>
							</ul>
							<div class="normal_content_top">
								<div class="first_center_td" style="margin-left:0px;margin-right: 0px;">
								<div class="first_line_info" >
									<table class="news_main_content" width="100%" >
									<tr>
									<td  style="width: 100%;">
									<a href="javascript:void(0);"  onclick="showTable(${defultId},1);">本科生</a>
									</td>
									</tr>
									</table>
								</div>		
								<div class='separatorLine'></div>
								<div class="first_line_info" >
									<table class="news_main_content" width="100%" >
									<tr>
									<td  style="width: 100%;">
									<a href="javascript:void(0);"  onclick="showTable(${defultId},2);">硕士研究生</a>
									</td>
									</tr>
									</table>
								</div>	
								<div class='separatorLine'></div>
								<div class="first_line_info" >
									<table class="news_main_content" width="100%" >
									<tr>
									<td  style="width: 100%;">
									<a href="javascript:void(0);"  onclick="showTable(${defultId},3);">博士研究生</a>
									</td>
									</tr>
									</table>
								</div>	
								<div class='separatorLine'></div>
								<div class="first_line_info" >
									<table class="news_main_content" width="100%" >
									<tr>
									<td  style="width: 100%;">
									<a href="javascript:void(0);"  onclick="showTable(${defultId},4);">专业硕士</a>
									</td>
									</tr>
									</table>
								</div>	
								<div class='separatorLine'></div>
							</div>
							</div>
						</div>
				</div>
				<div id="news_right_content"></div>
			</div>
		</div>
		<jsp:include page="../bottom.jsp"></jsp:include>
	</div>
</body>
</html>