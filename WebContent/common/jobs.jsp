<%@ page contentType="text/html; charset=utf-8" language="java" %>
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
	
	// 本页左侧菜单位置
	request.setAttribute("cur_menu","menu_index");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type"  name="description"  content="招聘信息，近期工作室相关的招聘" />
<title>人才招聘_${sitename}</title>

<link rel="stylesheet" type="text/css" href="${css_path}/common.css"/>
<link rel="stylesheet" type="text/css" href="${css_path}/question.css"/>
<script language="JavaScript" type="text/javascript" src="${js_path}/jquery.js"></script>
<script language="JavaScript" type="text/javascript" src="${js_path}/etUtil.js"></script>
<script language="JavaScript" type="text/javascript">

</script>

</head>

<body>
<div id="fade" class="black_overlay"></div>
<div class="container">
<jsp:include page="../top.jsp"></jsp:include>
<jsp:include page="../nav.jsp"></jsp:include>

<div id="content">
	<div class="porductIntro" style="padding: 0 10px;font-size: 14px;" >
	<h2>人才招聘(简历请发送到<font color="red"><i>liuhaihua@59et.com</i></font>,将第一时间给你回复)</h2>
	<p/>
	<div class="split_spx"></div>
	


<h3 style="margin-top: 10px;">1、渠道经理</h3>  <br/>

岗位职责：  <br/>

1、负责辖区内渠道的建设及发展的规划；  <br/>
2、对重要客户进行开拓、沟通与管理，制定合作方案；  <br/>
3、制定渠道策略，提供渠道服务支持；  <br/>
4、依据营销计划，执行销售和市场推广方案；   <br/>

任职条件：  <br/>

1、专科及以上学历，市场营销等相关专业；  <br/>
2、3年以上互联网渠道销售工作经验；  <br/>
3、有大区市场渠道开拓及管理工作经验，有团队管理工作经验，业绩优秀；  <br/>
4、具有独立的分析和解决问题的能力，市场感觉敏锐，有良好的沟通技巧和组织能力；  <br/>
5、能承担较大压力，适应长期出差。  <br/>

 
<h3 style="margin-top: 10px;">2、客服专员</h3>  <br/>

岗位职责：  <br/>

1、受理客户咨询、投诉、建议及意见等，并做好记录；  <br/>
2、收集客户及相关市场资料，建立和管理客户档案和信息数据库；  <br/>
3、维护良好的客户关系，掌握客户需求；  <br/>
4、负责与相关部门的业务协调，及时解决客户提出的问题。    <br/>

任职条件：  <br/>

1、中专以上学历，有客户接待和服务经验者优先；  <br/>
2、普通话标准，口齿清楚，声音甜美，优秀的语言表达能力和沟通能力；  <br/>
3、较强的应变能力、协调能力，能独立处理紧急问题；  <br/>
4、良好的服务意识、耐心和责任心，工作积极主动。  <br/>

 

<h3 style="margin-top: 10px;">3、招聘销售代表 </h3> <br/>

岗位职责：  <br/>

1、通过各种媒介，寻找潜在客户及维护长期客户；  <br/>
2、电话营销的销售方式，为客户定制人力资源服务产品，建立长期合作关系；  <br/>
3、策划、跟踪销售的整个流程，努力实现优秀的业绩。  <br/>

任职条件：  <br/>

1、大学专科或以上学历，形象气质较好；  <br/>
2、有一年以上电话营销经验或互联网人力资源服务产品销售工作经验；  <br/>
3、主动性强，工作态度积极，热爱销售工作，有较强的事业心，勇于面对挑战；  <br/>
4、良好的沟通和表达能力、应变能力和解决问题能力；  <br/>
5、良好的团队合作精神和客户服务意识；  <br/>
6、心理素质佳，能适应高度压力的工作。  <br/>

 
<h3 style="margin-top: 10px;">4、销售助理</h3>  <br/>

岗位职责：  <br/>

1、协助销售完成售前及售后的辅助工作；  <br/>
2、协助销售人员与各业务部门的沟通；  <br/>
3、整理分析各类销售数据，制作相应报  <br/>
4、接听/接待客户来电/来访,解答客户咨询/询问；  <br/>
5、对客户信息进行收集整理并定期和客户保持良好沟通  <br/>

任职条件：  <br/>

1、大专以上学历，一年以上销售助理相关工作经验；  <br/>
2、条理清晰、踏实、细心、有团队精神及主动服务意识；  <br/>
3、良好的沟通协调能力，能承受一定的工作压力；  <br/>
4、熟练操作Microsoft. Office办公软件  <br/>

<h3 style="margin-top: 10px;">5、Android开发工程师</h3>  <br/>

岗位职责：  <br/>

1、负责Android平台的应用开发 <br/>

任职条件：  <br/>

1、计算机及相关专业大专以上学历；   <br/>
2、熟练掌握java语言，熟悉面向对象编程设计；   <br/>
3、熟悉Android框架原理及Activity生命周期，熟练进行Android UI布局，熟练使用 SQLite数据库；  <br/>
4、理解Android的体系结构，掌握Android中界面绘制、后台运行、数据存储等的原理，熟悉http、TCP/IP协议，熟练使用Eclipse、Android SDK等开发工具；熟悉Application Framework及API接口  <br/>
5、熟悉Android下网络通信机制，Socket通信、蓝牙通信、串口通信、TCP/IP和http  <br/>
6、从事andorid软件开发3年以上；  <br/>
7、思维敏捷，学习能力强，上进意识强，责任感强及具有一定的承压能力  <br/>
8、有良好的沟通及表达能力，团队合作意识强  <br/>

<h3 style="margin-top: 10px;">6、负责Android平台的应用开发 </h3>  <br/>

岗位职责：  <br/>

1、负责Android平台的应用开发 <br/>

任职条件：  <br/>

1、计算机或相关专业，本科以上学历，良好的英语读写能力。<br/>
2、具有2年以上iPhone（或者Mac）、iPad开发经验，精通iOS平台下的GUI设计和实现；<br/>
3、具有丰富的Objective-C编程经验；熟练使用iOS SDK和XCode；<br/>
4、对数据结构、基本算法熟练掌握，并具备基本的算法设计能力；<br/>
5、具备良好的沟通能力和优秀的团队协作能力；<br/>
6、对新技术持有敏感性以及愿意致力于新技术的探索和研究<br/>
7、如有成功案例者优先。<br/>
<h3 style="margin-top: 10px;">7、Java架构师 </h3>  <br/>

岗位职责：  <br/>

1、负责系统及相关产品需求分析及架构设计<br/>； 
2、对产品的整体系统架构负责，对产品的系统安全性设计负责，开发及相关设计文档编写； <br/>
3、负责相关请求的技术分析，负责制订相关的技术解决方案； <br/>
4、参与制定设计及实现规范，指导设计、实现及部署工作； <br/>
5、配合项目经理进行技术决策，进行技术风险评估； <br/>
6、从事核心架构部分代码的编写. 指导和培训工程师<br/>

任职条件：  <br/>

1. 本科或以上学历，计算机软件或相关专业； <br/>
2. 五年以上J2EE项目开发经验；熟悉J2EE设计模式，精通Java及Web应用的开发；具有独立承担超过2年以上的软件项目系统分析和架构设计经验，有成功案例、大型系统软件架构设计经验优先<br/> 
3. 熟悉分布式. 多线程及高性能的设计与编码及性能调优； <br/>
4  掌握软件工程理论，精通至少一种软件工程方法，有较强的系统分析能力； <br/>
5、熟悉JAVA体系架构，精通主流的开源框架；<br/>
6. 有很强的分析问题和解决问题的能力，有强烈的责任心。 <br/>
7. 大规模高并发访问的Web应用架构设计和开发经验者优先。<br/>
8. 有海量数据处理能力，有阿里巴巴、腾讯等工作经验优先。<br/>
<h3 style="margin-top: 10px;">8、产品经理 </h3>  <br/>

岗位职责：  <br/>

1.从事新产品的策划；定义；设计开发工作<br/>
2.根据公司和产品发展策略，负责管理来自用户和公司内部的业务需求，<br/>
进行相关用户研究，市场调研及需求分析，并形成最终产品设计；<br/>
3.产品策划文档的编写，包括功能需求文档撰写及部分交互设计文档。<br/>
4.负责所属产品线的产品构架，交互设计，UE把控，视觉评估等工作；<br/>

任职条件：  <br/>


1.热爱互联网及熟悉B2B商城；<br/>
2.熟悉Axure或同类软件，会做原型图<br/>
3.三年以上互联网产品设计开发或产品市场经验，有丰富的与设计/技术人员<br/>
合作的经验，能独进行产品生命周期的把控；<br/>
4.擅长用户行为分析，具备优秀的产品设计能力，在掌握交互设计原则的<br/>
基础上，能够进行大胆的产品设计创新；<br/>
5.有高度的责任心，具备良好合作态度及团队精神；<br/>
<h3 style="margin-top: 10px;">8、测试工程师 </h3>  <br/>

岗位职责：  <br/>

 1、负责公司网站开发的质量保证工作负责网站功能测试、性能测试、安全性测试、易用性测试等等；  <br/>
 2、根据项目需求规格说明书，编写测试计划，制订测试用例并实施，保证项目质量和进度；  <br/>
 3、与产品经理和项目经理和开发工程师就项目需求、进度和bug进行沟通；   <br/>
 4、对互联网产品进行黑盒测试、兼容性测试、容错性测试、系统运维测试等；  <br/>
 5、负责bug生命周期的管理。  <br/>

任职条件：  <br/>

1、2年以上网站测试工作经验，大专学历以上，计算机相关专业。  <br/>
2、可根据需求独立制定测试计划、测试方案。  <br/>
3、了解如何进行产品功能，性能及其他方面的测试方法，能够使用基本的测试工具，并编写测试用例及测试报告。  <br/>
4、工作耐心、认真负责，具有团队合作精神，有较强的学习理解能力。   <br/>
5、熟悉HTML/XHTML/XML规范、熟悉DIV&CSS规范；  <br/>
6、熟悉PHP及MySQL数据库，有一定编程基础，有大型项目工作经验优先。  <br/>
		
	</div>
<div class="back" style="margin-top: 20px;"><a href="javascript:window.close()">关闭本窗口</a></div>	
</div>
	

<jsp:include page="../bottom.jsp"></jsp:include>

</div>
</body>
</html>