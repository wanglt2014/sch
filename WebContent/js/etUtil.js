
var SMS_TIMEOUT = 60;

$(document).ready(function(){
	$('input:text').addClass('text_style');
	
	var $navTitle = $('.nav_title');
	$navTitle.hover(
		function(){
			if ( $(this).hasClass("nav_focus") ){
				return;
			}
			$(this).addClass("nav_hover");
		},
		function(){
			$(this).removeClass("nav_hover");
		}
	);
	$navTitle.click(function(){
		$this = $(this);
		var id = $this.attr('id');
		if (id == 'nav_link_trade'){
			location.href = 'RepeatOrder_doRepeatOrderQuery.shtm';
		}else if (id == 'nav_link_jianjie'){
			location.href = 'College_toCollegeSummaryPage.shtm';
		}else if (id == 'nav_link_jieshao'){
			location.href = 'College_toCollegePage.shtm';
		}else if (id == 'nav_link_teach') {
			location.href = 'Article_toTeachPage.shtm';
		}else if (id == 'nav_link_subject') {
			location.href = 'Subject_toSubjectPage.shtm';
		}else if (id == 'nav_link_zixun') {
			location.href = 'News_toNewsPage.shtm';
		}else if (id == 'nav_link_teacher') {
			location.href = 'http://bbs.59et.com';
		}else if (id == 'nav_link_student') {
			location.href = 'http://bbs.59et.com';
		}else if (id == 'nav_link_bbs') {
			location.href = 'http://bbs.59et.com';
		}else if (id == 'nav_link_downloadinfo') {
			location.href = 'Download_toDownloadPage.shtm';
		}
		
	});
	
	var $accountMenu = $('.menu_item');
	$accountMenu.hover(
		function(){
			$(this).addClass("menu_hover");
		},
		function(){
			$(this).removeClass("menu_hover");
		}
	);
	$accountMenu.click(function(){
		$this = $(this);
		var id = $this.attr('id');
		if (id == 'menu_index'){
			location.href = 'AccountManage_queryUnPay';
		}else if (id == 'menu_balance'){
			location.href = 'Trade_toTradeQuery';
		}else if(id == 'menu_setting'){
			location.href = 'UserCenter_toUserInfo';
		}else if(id == 'menu_updatepasswd'){
			location.href = 'UserCenter_toupdatepasswd';
		}
		
		
	});
	
});
