<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>
<%
String url = request.getRequestURL().toString();
String uri = request.getRequestURI();
String website =url.substring(0, url.indexOf(uri));
String request_path = request.getContextPath();
String image_path = website+request.getContextPath() + "/images/blue-themes";
%>
<%=image_path %>
<%-- <jsp:include page="../pre.jsp"></jsp:include> --%>
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
		<s:if test="#dictionary.dictionarycode==#teacher.department">
		  <s:if test="#st.index % 4 == 0">
		<tr>
		  </s:if>
		  <td>
		  	<a href="Teacher_teacherDetail_${teacher.id}.shtm"><img class="img_thunmb" alt="' + teacher.teachername + '" onerror="this.src='<%=image_path %>/nopic.jpg'" src="file:///<s:property value="#teacher.iimageurll"/>" /></a>
		  	<br>
		  	<a href="Teacher_teacherDetail_${teacher.id}.shtm"><i class="point">•</i>&nbsp;<s:property value="#teacher.teachername" /></a>
		  </td>
		  <s:if test="#st.index % 4 == 3">
		  </tr>
		  </s:if>
		</s:if>
		</s:iterator>
		</table>
		</div>
		<br><br><br><br>
	</s:iterator>
</c:if>
<div class="news_page">
</div>
