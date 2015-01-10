<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<link rel="shortcut icon" href="favicon.ico" />
<!-- nav导航  etUtil.js-->
<div id="nav">
	<ul>
		<li class="nav_title ${cur_nav eq 0 ? 'nav_focus' : ''}" id="nav_link_index">首页</li><li class="nav_split"></li>
		<li class="nav_title ${cur_nav eq 1 ? 'nav_focus' : ''}" id="nav_link_jianjie">学院简介</li><li class="nav_split"></li>
		<li class="nav_title ${cur_nav eq 2 ? 'nav_focus' : ''}" id="nav_link_jieshao">院系介绍</li><li class="nav_split"></li>
		<li class="nav_title ${cur_nav eq 3 ? 'nav_focus' : ''}" id="nav_link_teach">教学动态</li><li class="nav_split"></li>
		<li class="nav_title ${cur_nav eq 4 ? 'nav_focus' : ''}" id="nav_link_subject">课程列表</li><li class="nav_split"></li>
		<li class="nav_title ${cur_nav eq 5 ? 'nav_focus' : ''}" id="nav_link_zixun">咨询</li><li class="nav_split"></li>
		<li class="nav_title ${cur_nav eq 6 ? 'nav_focus' : ''}" id="nav_link_teacher">教师展示</li><li class="nav_split"></li>
		<li class="nav_title ${cur_nav eq 7 ? 'nav_focus' : ''}" id="nav_link_student">学生风采</li><li class="nav_split"></li>
		<li class="nav_title ${cur_nav eq 8 ? 'nav_focus' : ''}" id="nav_link_bbs">论坛</li><li class="nav_split"></li>
		<li class="nav_title ${cur_nav eq 9 ? 'nav_focus' : ''}" id="nav_link_downloadinfo">资料下载</li>
	</ul>
</div>
<!-- nav导航 -->
<jsp:include page="common/customer.jsp"></jsp:include>
