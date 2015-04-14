<%@ page contentType="text/html; charset=utf-8" language="java"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>

<%
	// 当前导航栏位置
	request.setAttribute("cur_nav", 3);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="资料下载" />
<title>资料下载_${sitename}</title>

<link rel="shortcut icon" href="favicon.ico" />
<%-- <link rel="stylesheet" type="text/css" href="${css_path}/subindex.css" />
<link rel="stylesheet" type="text/css" href="${css_path}/common.css" />
<link rel="stylesheet" type="text/css" href="${css_path}/news.css" />
<link rel="stylesheet" type="text/css"
	href="${css_path}/jqueryUi/jquery-ui.css" />
<script language="JavaScript" type="text/javascript"
	src="${js_path}/jquery.js"></script>
<script language="JavaScript" type="text/javascript"
	src="${js_path}/jquery-ui.js"></script>
<script language="JavaScript" type="text/javascript"
	src="${js_path}/jquery.blockUI.js"></script>
<script language="JavaScript" type="text/javascript"
	src="${js_path}/jquery.cookie.js"></script>
<script language="JavaScript" type="text/javascript"
	src="${js_path}/etUtil.js"></script> --%>
<jsp:include page="../pre.jsp"></jsp:include>
<script language="JavaScript" type="text/javascript">
	$(document).ready(function() {
		search();
	});
	function search(page) {
		var targetPage = '';
		if (!page || (page == '')) {
			targetPage = 1;
		} else {
			targetPage = page;
		}
		$.ajax({
			type : 'post',
			url : 'Download_doqueryDownload',
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
					<c:if test="${!empty(downloadlist)}">
						<div id="right_content_top">
							<ul>
								<li class="normal_title_content">
									资料下载&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</li>
							</ul>
							<div class="normal_content_top">
								<div class="first_center_td" style="margin-left:0px;margin-right: 0px;">
									<s:iterator var="download" value="downloadlist" status="st">
									<div class="first_line_info" >
										<table class="news_main_content" width="100%" >
										<tr>
										<td  style="width: 100%;">
										<a target="_blank" href="Download_downloaddetail_${download.downloadid}.shtm" title="<s:property value="#download.filename" />">
										<s:property value="#download.filename" /> </a>
										</td>
										<td style="width: 65px;">
										<a  target="_blank" href="Download_downloaddetail_${download.downloadid}.shtm" title="<s:property value="#download.filename" />"/>
										<s:property value="#download.createdate" />
										</a>
										</td>
										</tr>
										</table>
									</div>		
									<div class='separatorLine'></div>
									</s:iterator>
								</div>
							</div>
						</div>
					</c:if>
				</div>
				<div id="news_right_content"></div>
			</div>

		</div>

		<jsp:include page="../bottom.jsp"></jsp:include>

	</div>
</body>
</html>