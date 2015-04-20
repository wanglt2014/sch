<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt' %>

<%
	String url = request.getRequestURL().toString();
	String uri = request.getRequestURI();
	String website =url.substring(0, url.indexOf(uri));
	String request_path = website+request.getContextPath();
	String image_path = request_path + "/images/blue-themes";
	String css_path = request_path + "/css/blue-themes";
	String js_path = request_path + "/js";
	request.setAttribute("request_path", request_path);
	request.setAttribute("image_path", image_path);
	request.setAttribute("css_path", css_path);
	request.setAttribute("js_path", js_path);
	// 当前导航栏位置
	request.setAttribute("cur_nav", 0);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" charset="UTF-8" content="感谢您使用${sitename}" />
<title>${sitename}</title>
<link rel="stylesheet" type="text/css" href="${css_path}/common.css" />
<link rel="stylesheet" type="text/css" href="${css_path}/index.css" />
<link rel="stylesheet" type="text/css" href="${css_path}/flash.css" />
<script language="JavaScript" type="text/javascript" src="${js_path}/jquery.js" ></script>
<script language="JavaScript" type="text/javascript" src="${js_path}/jquery.blockUI.js" ></script>
<script language="JavaScript" type="text/javascript" src="${js_path}/jquery.cookie.js" ></script>
<script language="JavaScript" type="text/javascript" src="${js_path}/etUtil.js" ></script>
<script language="JavaScript" type="text/javascript" src="${js_path}/flash.js" ></script>
<%-- <script language="JavaScript" type="text/javascript" src="${js_path}/jquery.min.js" ></script> --%>
<script language="JavaScript" type="text/javascript" src="${js_path}/jquery.jScroll.js" ></script>
<script language="JavaScript" type="text/javascript" src="${js_path}/jquery.cycle.js" ></script>

<script type="text/javascript">
$(function(){
	$(".scroll_three").jScroll({speed: 2000, scroll: 2});//底部logo滚动
	$('#banner').cycle({fx:'scrollLeft',pager:'#btn'});//顶部图片滚动
// 	$('#banner').cycle('fade'); 
});
</script>

</head>
<body>
<!-- <body onload="slideDown('#hudong',4000)"> -->
<%-- <div id="hudong" style="display: none;width: 100%;height:300px;background-image: url('${image_path}/huodong.jpg');background-size:cover;" > --%>
<%--  <a href="#" onclick="slideUp('#hudong',0)"> <img src="${image_path}/close.png" width="30" height="30" style="float: right" /> </a> --%>
<!-- </div> -->

<!-- <div id="fade" class="black_overlay"></div> -->
<jsp:include page="top.jsp"></jsp:include>
<div class="container" style="position: relative;">
<jsp:include page="nav.jsp"></jsp:include>
<div style="position:relative;margin:5px 0px 0px 0px;height:570px;">
   		<div  id="index_top">
   			<div id="left_left_content" >
   			<div id="introduce_div">
   			<div class="normal_title_content">学院简介</div>
   			<div id="introduce_div_img"><img  src="${request_path}/images/img/school2.jpg" width="185" height="133"/></div>
   			<div id="introduce_div_word">&nbsp;&nbsp;
   			人文社会科学学院是在“哈军工”时期马列教研室基础上发展而来的，
   			经历了上世纪80年代的社科部和90年代的社科系发展时期，
   			2001年成立人文社会科学学院。2010年，根据学校党委关于成立思政教研部的文件精神，
   			新人文学院正式组建。人文学院现有法学系、社会学系和应用心理学系，
   			设有船舶与海洋法律研究所、应用心理学研究所、黑龙江省心理咨询师培训基地和信息资料中心。</div>
   			</div>
   			</div>
			<div id="left_content">
				<div id="flash_div">
					<div class="flash_left"></div>
					<div class="flash_content">
						<div id="banner">
						    	<img  src="${image_path}/indexpic1.jpg" width="600" height="252"/>
						        <img  src="${image_path}/indexpic2.jpg" width="600" height="252"/>
						        <img  src="${image_path}/indexpic3.jpg" width="600" height="252"/>
						        <img  src="${image_path}/indexpic4.jpg" width="600" height="252"/>
						</div>
						<div id="btn"></div>
					</div>
					<div class="flash_right"></div>
				</div>
				
				<div id="service_div">
					<div class="service_title" style="vertical-align: bottom;">
						<span style="display: block;float: left;">教学教务通知</span>
						<span style="display: block;margin-right:10px;float: right;">
						<a href="Article_toNoticePage.shtm" style="font-size: 11px;">更多>></a></span>
					</div>
					<div class="split_1px"></div>
					<div class="first_center_td" style="margin-left: 20px;margin-right: 20px;">
<!-- 						<ul > -->
							<s:iterator var="notify" value="notifylist" status="st">
							<div class="first_line_info" >
							<table class="news_main_content" width="100%" >
							<tr>
							<td  style="width: 100%;">
							<a style="width: 100%;display: block;" target="_blank" href="Article_regulationDetail_${notify.articleid}.shtm" title="<s:property value="#notify.articletitle" />">
							<s:property value="#notify.articletitle" />
							</a>
							</td>
							<td style="width: 65px;">
							<a style="width: 100%;display: block;" target="_blank" href="Article_regulationDetail_${notify.articleid}.shtm" title="<s:property value="#notify.articletitle" />">
							<s:property value="#notify.createdate" />
							</a></td>
							</tr>
							</table>
							</div>		
					<div class='separatorLine'></div>
							</s:iterator>
					
<!-- 						</ul> -->
<!-- 						<tr> -->
<%-- 							<td><div class="small_service"><div class="left_img"> <img  src="${image_path}/1_26.png" width="68px;" height="68px;"/></div><div class="right_text"><table class="tableheigt"><tr><td class="fontstrong">云主机</td></tr><tr><td>销售和代购云主机</td></tr><tr><td><table><tr><td><a href="#" class="linkindex">查看详情</a></td><td><img  src="${image_path}/jiantou.png"/></td></tr></table> </td></tr></table></div></div></td> --%>
<%-- 							<td><div class="small_service"><div class="left_img"> <img  src="${image_path}/1_28.png" width="68px;" height="68px;"/></div><div class="right_text"><table class="tableheigt"><tr><td class="fontstrong">云运维</td></tr><tr><td>搭建系统运行环境</td></tr><tr><td><table><tr><td><a href="#" class="linkindex">查看详情</a></td><td><img  src="${image_path}/jiantou.png"/></td></tr></table></td></tr></table></div></div></td> --%>
<%-- 							<td><div class="small_service"><div class="left_img"> <img  src="${image_path}/1_30.png" width="68px;" height="68px;"/></div><div class="right_text"><table class="tableheigt"><tr><td class="fontstrong">软件服务</td></tr><tr><td>根据需求定制软件开发</td></tr><tr><td><table><tr><td><a href="#" class="linkindex">查看详情</a></td><td><img  src="${image_path}/jiantou.png"/></td></tr></table></td></tr></table></div></div></td> --%>
<!-- 						</tr> -->
<!-- 						<tr> -->
<%-- 							<td><div class="small_service"><div class="left_img"> <img  src="${image_path}/1_39.png" width="68px;" height="68px;"/></div><div class="right_text"><table class="tableheigt"><tr><td class="fontstrong">TinyERP</td></tr><tr><td>进销存管理系统</td></tr><tr><td><table><tr><td><a href="#" class="linkindex">查看详情</a></td><td><img  src="${image_path}/jiantou.png"/></td></tr></table></td></tr></table></div></div></td> --%>
<%-- 							<td><div class="small_service"><div class="left_img"> <img  src="${image_path}/1_40.png" width="68px;" height="68px;"/></div><div class="right_text"><table class="tableheigt"><tr><td class="fontstrong">TinyOA</td></tr><tr><td>自动化办公系统</td></tr><tr><td><table><tr><td><a href="#" class="linkindex">查看详情</a></td><td><img  src="${image_path}/jiantou.png"/></td></tr></table></td></tr></table></div></div></td> --%>
<%-- 							<td><div class="small_service"><div class="left_img"> <img  src="${image_path}/1_41.png" width="68px;" height="68px;"/></div><div class="right_text"><table class="tableheigt"><tr><td class="fontstrong">sch</td></tr><tr><td>企业建站系统</td></tr><tr><td><table><tr><td><a href="#" class="linkindex">查看详情</a></td><td><img  src="${image_path}/jiantou.png"/></td></tr></table></td></tr></table></div></div></td> --%>
<!-- 						</tr> -->
					
					</div>
				</div>
			</div>
			<div id="right_content_top" >
				<ul>
					<li class="normal_title_content">
						<span style="display: block;float: left;">资料下载</span>
						<span style="display: block;margin-right:10px;float: right;">
						<a href="Download_toDownloadPage.shtm" style="font-size: 11px;">更多>></a></span>
					</li>
				</ul>
				<div class="normal_content_top" >
				<div class="first_center_td" style="margin-left:0px;margin-right: 0px;">
<!-- 				<ul class="news_content"> -->
					<s:iterator var="download" value="downloadlist" status="st">
<!-- 						<li> -->
						<div class="first_line_info" >
							<table class="news_main_content" width="100%" >
							<tr>
							<td  style="width: 100%;">
							<a  target="_blank" href="Download_downloaddetail_${download.downloadid}.shtm" title="<s:property value="#download.filename" />"/>
							<s:property value="#download.filename" />
							</a>
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
<!-- 						</li> -->
					</s:iterator>
<!-- 				</ul> -->
				</div>
				</div>
				</div>
				<div id="right_content_bottom" >
				<ul>
					<li class="normal_title_content">
						<span style="display: block;float: left;">教务教学制度</span>
						<span style="display: block;margin-right:10px;float: right;">
						<a href="Article_toRegulationPage.shtm" style="font-size: 11px;">更多>></a></span>
					</li>
				</ul>
				<div class="normal_content_bottom">
<!-- 					<ul class="news_content"> -->
					<div class="first_center_td" style="margin-left:0px;margin-right: 0px;">
					<s:iterator var="regulation" value="regulationList" status="st">
					<div class="first_line_info" >
							<table class="news_main_content" width="100%" >
							<tr>
							<td  style="width: 100%;">
						<a target="_blank" href="Article_regulationDetail_${regulation.articleid}.shtm" title="<s:property value="#regulation.articletitle" />">
						<s:property value="#regulation.articletitle" />
						</a>
						</td>
						<td style="width: 65px;">
						<a target="_blank" href="Article_regulationDetail_${regulation.articleid}.shtm" title="<s:property value="#regulation.articletitle" />">
						<s:property value="#regulation.createdate" />
						</a>
						</td>
						</tr>
						</table>
						</div>		
						<div class='separatorLine'></div>
					</s:iterator>
					</div>
<!-- 				</ul> -->
				</div>
			</div>
		</div>
		<div  class="user_show">
		<div class="user_show_title">友情链接</div>
		<div class="split_spx"></div>
			<div id="bank_icon"  class="box scroll_three" style="vertical-align: middle;line-height: 40px;" align="center">
			<span><a href="#">哈尔滨工程大学</a></span>
			<span><a href="#">实验平台</a></span>
			<span><a href="#">调查平台</a></span>
			<span><a href="#">图书馆</a></span>
			<span><a href="#">船舶工程学院</a></span>
			<span><a href="#">自动化学院</a></span>
			<span><a href="#">水声工程学院</a></span>
			<span><a href="#">理学院</a></span>
			
<!-- 				<ul>   -->
<!-- 					<li><a href="#">哈尔滨工程大学</a></li> -->
<%-- 					<li><a href="#"><img src="${image_path}/normal_bg.gif" width="1" height="40" alt="" /></a></li> --%>
<!-- 					<li><a href="#">船舶工程学院</a></li> -->
<%-- 					<li><a href="#"><img src="${image_path}/normal_bg.gif" width="1" height="40" alt="" /></a></li> --%>
<!-- 					<li><a href="#">自动化学院</a></li> -->
<%-- 					<li><a href="#"><img src="${image_path}/normal_bg.gif" width="1" height="40" alt="" /></a></li> --%>
<!-- 					<li><a href="#">水声工程学院</a></li> -->
<%-- 					<li><a href="#"><img src="${image_path}/normal_bg.gif" width="1" height="40" alt="" /></a></li> --%>
<%-- 					<li><a href="#"><img src="${image_path}/logo01.jpg" width="135" height="40" alt="" /></a></li> --%>
<%-- 					<li><a href="#"><img src="${image_path}/normal_bg.gif" width="1" height="40" alt="" /></a></li> --%>
<!-- 					<li><a href="#"></a></li> -->
<%-- 					<li><a href="#"><img src="${image_path}/normal_bg.gif" width="1" height="40" alt="" /></a></li> --%>
<!-- 					<li><a href="#"></a></li> -->
<%-- 					<li><a href="#"><img src="${image_path}/normal_bg.gif" width="1" height="40" alt="" /></a></li> --%>
<!-- 					<li><a href="#"></a></li> -->
<%-- 					<li><a href="#"><img src="${image_path}/normal_bg.gif" width="1" height="40" alt="" /></a></li> --%>
<!-- 					<li><a href="#"></a></li> -->
<%-- 					<li><a href="#"><img src="${image_path}/normal_bg.gif" width="1" height="40" alt="" /></a></li> --%>
<%-- 					<li><a href="#"><img src="${image_path}/logo0.png" width="135" height="40" alt="" /></a></li> --%>
<%-- 					<li><a href="#"><img src="${image_path}/normal_bg.gif" width="1" height="40" alt="" /></a></li> --%>
<%-- 					<li><a href="#"><img src="${image_path}/logo1.png" width="135" height="40" alt="" /></a></li> --%>
<%-- 					<li><a href="#"><img src="${image_path}/normal_bg.gif" width="1" height="40" alt="" /></a></li> --%>
<%-- 					<li><a href="#"><img src="${image_path}/logo2.png" width="135" height="40" alt="" /></a></li> --%>
<%-- 					<li><a href="#"><img src="${image_path}/normal_bg.gif" width="1" height="40" alt="" /></a></li> --%>
<%-- 					<li><a href="#"><img src="${image_path}/logo3.png" width="135" height="40" alt="" /></a></li> --%>
<%-- 					<li><a href="#"><img src="${image_path}/normal_bg.gif" width="1" height="40" alt="" /></a></li> --%>
<%-- 					<li><a href="#"><img src="${image_path}/logo4.png" width="135" height="40" alt="" /></a></li> --%>
<%-- 					<li><a href="#"><img src="${image_path}/normal_bg.gif" width="1" height="40" alt="" /></a></li> --%>
<%-- 					<li><a href="#"><img src="${image_path}/logo5.png" width="135" height="40" alt="" /></a></li> --%>
<%-- 					<li><a href="#"><img src="${image_path}/normal_bg.gif" width="1" height="40" alt="" /></a></li> --%>
<!-- 				</ul> -->
			</div>
		</div>
</div>

<!-- footer -->
<jsp:include page="bottom.jsp"></jsp:include>

<!-- footer -->

</div>

</body>
</html>