<%@ page contentType="text/html; charset=utf-8" language="java"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>
<%
	// 当前导航栏位置
	request.setAttribute("cur_nav", 8);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="规章制度" />
<title>规章制度_${sitename}</title>

<link rel="shortcut icon" href="favicon.ico" />
<jsp:include page="../pre.jsp"></jsp:include>

<script language="JavaScript" type="text/javascript">
	$(document).ready(function() {
		showSRRContent("jx");
	});
	function showSRRContent(excType) {
		var yearType = $("#yearType").val();
		var srrType = $("#srrType").val();
		var targetPage = '';
// 		if (!page || (page == '')) {
// 			targetPage = 1;
// 		} else {
// 			targetPage = page;
// 		}
		$.ajax({
			type : 'post',
			url : 'Teacher_doQuerySRR',
			data : {
				currentPage : targetPage,
				srrTypePara : excType,
				yearType : yearType,
				srrType : srrType
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
// 				$('#news_main_content').html(html);
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
					<div id="right_content_top">
						<ul>
							<li class="normal_title_content">
								教学科研成果&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</li>
						</ul>
						<div class="normal_content_top">
							<div class="first_center_td" style="margin-left:0px;margin-right: 0px;">
								<div class="first_line_info" >
								<table class="news_main_content" width="100%" >
								<tr>
								<td  style="width: 100%;">
								<a href="javascript:void(0);"  onclick="showSRRContent('jx');" title="教学部分">
								教学部分</a>
								</td>
								</tr>
								</table>
								</div>
								<div class='separatorLine'></div>
								<div class="first_line_info" >
								<table class="news_main_content" width="100%" >
								<tr>
								<td  style="width: 100%;">
								<a href="javascript:void(0);"  onclick="showSRRContent('ky');" title="科研部分">
								科研部分</a>
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
<!-- <div style="float: left;clear: both;margin-left: 30px;"> -->
<%-- <select id="srrType" style="width:80px;"> --%>
<!-- 	<option value="researchDiv" selected="selected">立项</option> -->
<!-- 	<option value="paperDiv">论文</option> -->
<!-- 	<option value="workDiv">著作</option> -->
<!-- 	<option value="prizeDiv">获奖</option> -->
<%-- </select> --%>
<%-- <select id="yearType" style="width:80px;"> --%>
<!-- 	<option value="6" selected="selected">半年</option> -->
<!-- 	<option value="12">一年</option> -->
<!-- 	<option value="60">五年</option> -->
<%-- </select> --%>
<!-- <button onclick="showSRRContent('jx');">查询</button> -->
<!-- </div> -->
			</div>
		</div>
		<jsp:include page="../bottom.jsp"></jsp:include>
	</div>
</body>
</html>