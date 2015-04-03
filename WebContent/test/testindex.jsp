<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>
<jsp:include page="../pre.jsp"></jsp:include>

<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!-- 	<title>Complex DataGrid - jQuery EasyUI Demo</title> -->
<!-- 	<link rel="stylesheet" type="text/css" href="../themes/default/easyui.css"> -->
<!-- 	<link rel="stylesheet" type="text/css" href="../themes/icon.css"> -->
<!-- 	<link rel="stylesheet" type="text/css" href="demo.css"> -->
<%-- 	<script type="text/javascript" src="../jquery-1.8.0.min.js"></script> --%>
<%-- 	<script type="text/javascript" src="../jquery.easyui.min.js"></script> --%>
<%-- 	<script type="text/javascript" src="../plugins/datagrid-detailview.js"></script> --%>
	<script>
		$(function(){
			$('#test2').datagrid({
				toolbar:[{
					id:'btnadd',
					text:'Add',
					iconCls:'icon-add',
					handler:function(){
						$('#btnsave').linkbutton('enable');
						alert('add')
					}
				}],
				frozenColumns:[[
	                {field:'ck',checkbox:true},
	                {title:'Code',field:'code',width:80,sortable:true}
				]],
				columns:[[
					{field:'name',title:'Name',width:120},
					{field:'addr',title:'Address',width:220,rowspan:2,sortable:true,
						sorter:function(a,b){
							return (a>b?1:-1);
						}
					},
					{field:'col4',title:'Col41',width:150,rowspan:2}
				]],
				view: detailview,  
        detailFormatter:function(index,row){  
            return '<div style="padding:2px"><table id="ddv-' + index + '"></table></div>';  
        },
				onExpandRow: function(index,row){
					$('#ddv-'+index).datagrid({
						url:'subdatagrid_data.json',
						idField:'code',
						frozenColumns:[[
			                {field:'ck',checkbox:true},
			                {title:'Code',field:'code',width:80,sortable:true}
						]],
						columns:[[
					        {title:'Base Information',colspan:3},
							{field:'opt',title:'Operation',width:100,align:'center', rowspan:2,
								formatter:function(value,rec){
									return '<span style="color:red">Edit Delete</span>';
								}
							}
						],[
							{field:'name',title:'Name',width:120},
							{field:'addr',title:'Address',width:220,rowspan:2,sortable:true,
								sorter:function(a,b){
									return (a>b?1:-1);
								}
							},
							{field:'col4',title:'Col41',width:150,rowspan:2}
						]],  
            onResize:function(){  
                $('#test').datagrid('fixDetailRowHeight',index);  
            },  
            onLoadSuccess:function(){  
                setTimeout(function(){  
                    $('#test').datagrid('fixDetailRowHeight',index);  
                },0);  
            }
					});
					$('#test').datagrid('fixDetailRowHeight',index);
				}
			});
			$('#test').datagrid({
				title:'My DataGrid',
				iconCls:'icon-save',
				width:700,
				height:350,
				nowrap: true,
				autoRowHeight: false,
				striped: true,
				collapsible:true,
				url:'datagrid_data.json',
				sortName: 'code',
				sortOrder: 'desc',
				remoteSort: false,
				idField:'code',
				frozenColumns:[[
	                {field:'ck',checkbox:true},
	                {title:'Code',field:'code',width:80,sortable:true}
				]],
				columns:[[
					{field:'name',title:'Name',width:120},
					{field:'addr',title:'Address',width:220,rowspan:2,sortable:true,
						sorter:function(a,b){
							return (a>b?1:-1);
						}
					},
					{field:'col4',title:'Col41',width:150,rowspan:2}
				]],
				pagination:true,
				rownumbers:true,
				toolbar:[{
					id:'btnadd',
					text:'Add',
					iconCls:'icon-add',
					handler:function(){
						$('#btnsave').linkbutton('enable');
						//alert('add');
						var rows = $('#test').datagrid('getSelections');
						for(var i = 0; i < rows.length; i++){
							$('#test2').datagrid('appendRow',rows[i]);//这里循环添加在另一个datagrid选择的行						
							}
						//detailview.addExpandColumn($('#test2').datagrid().target,1);
					}
				}]
			});
			
			var p = $('#test').datagrid('getPager');
			$(p).pagination({
				onBeforeRefresh:function(){
					alert('before refresh');
				}
			});
		});
		
	</script>
</head>
<body>
	<h2>Complex DataGrid</h2>
	<table id="test"></table>
	
	<table id="test2" class="easyui-datagrid" style="width:400px;height:250px" data-options="title:'My DataGrid',fitColumns:true,singleSelect:true">  
    <thead>  
        <tr>  
            <th data-options="field:'Code',width:100">Code</th>  
            <th data-options="field:'name',width:100">Name</th>  
            <th data-options="field:'price',width:100,align:'right'">Price</th>  
        </tr>  
    </thead>  
</table>
					<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="addPrize()">新增获奖信息</a><br><br>

<div id="prizeDiv">
					<div class="fitem">
						<label>奖项性质:</label>
						<select id="prizetype0" name="prizetype0" class="easyui-combobox" panelHeight="auto" editable="false"
							style="width: 100px" >
							<option value="teach">教学获奖</option>
							<option value="science">科研获奖</option>
							<option value="social" >社会服务获奖</option>
						</select>
   					</div>
					<div class="fitem">
					<label>获奖说明:</label>
   					<textarea id="prizeinfo0" rows=3 style="width: 400px;" name="prizeinfo0"  class="textarea easyui-validatebox" maxlength="1000"></textarea>
					</div>
<%-- 					<span id="deletePrizeDiv"><a id="deleteA" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" style="display: none" onclick="removePrize('+addIndex+')">删除获奖信息</a></span> --%>
					</div>
    <script type="text/javascript">
    var addIndex = 1;
	 var temp = $("#prizeDiv").html();//保存渲染前的模板
	function addPrize() {
//		alert("#prize"+(parseInt(addIndex)-1));
//		  $("#prize0").clone(true).attr("id",'prize'+addIndex).insertAfter("#prize"+(parseInt(addIndex)-1));
		  
		  $("#deletePrizeDiv").remove();
		  $(temp).html().replace(new RegExp("prizetype0","gm"),'prizetype'+addIndex).replace(new RegExp("prizeinfo0","gm"),'prizeinfo'+addIndex);

// 		  $(temp).html().replace(new RegExp(/(prizetype0)/g),'prizetype'+addIndex).replace(new RegExp(/(prizeinfo0)/g),'prizeinfo'+addIndex)
//		  $('').appendTo($("#prizeDiv"));
		  $(temp).appendTo($("#prizeDiv"));
		  $("#prizeDiv select").combobox({panelHeight:"auto"});//渲染
		  $('#prizetype0').last().attr("id",'prizetype'+addIndex);
		  $('#prizeinfo0').last().attr("id",'prizeinfo'+addIndex);
// 		  alert($("select[id='prizetype0']").attr("id"));
		 
//		  $("#prize"+addIndex+" input[name='prizetype0']").attr("name",'prizetype'+addIndex);
		  // 		  alert($("#prize"+addIndex+" select").attr("id"));
//		  $("#prize"+addIndex+ " div[id='prizeSelect0']").attr("id",'prizeSelect'+addIndex);
//		  $("#prize"+addIndex+ " select").combobox({panelHeight:"auto"});//渲染
//		  $("#prize"+addIndex+" select[id='prizetype0']").remove();
//		  $("#prizeSelect"+addIndex).append('<select id="prizetype'+addIndex+'" name="prizetype'+addIndex+'" class="easyui-combobox" panelHeight="auto" editable="false"style="width: 100px" ><option value="teach">教学获奖</option><option value="science">科研获奖</option><option value="social" >社会服务获奖</option></select>');
		  
//		   $("#prize"+addIndex+" select[id='prizetype0']").attr("id",'prizetype'+addIndex).attr("name",'prizetype'+addIndex);
//		  $("#prize"+addIndex+ " textarea[id='prizeinfo0']").attr("id",'prizeinfo'+addIndex).attr("name",'prizeinfo'+addIndex);
//		  $("#deletePrizeDiv").remove();
		  $("#prizeDiv").append('<span id="deletePrizeDiv"><a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="removePrize('+addIndex+')">删除获奖信息</a></span>');
		  addIndex++;
	}
</script>
</body>
</html>
