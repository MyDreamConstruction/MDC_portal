<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@attribute name="title" fragment="true"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>MDC</title>

		<meta name="description" content="overview &amp; stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<link rel="stylesheet" href="${contextPath}/assets/css/bootstrap.css" />
		<link rel="stylesheet" href="${contextPath}/assets/css/font-awesome.css" />
		<link rel="stylesheet" href="${contextPath}/assets/css/ace-fonts.css" />
		<link rel="stylesheet" href="${contextPath}/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />

		<link rel="stylesheet" href="${contextPath}/assets/css/datepicker.css" />
		<link rel="stylesheet" href="${contextPath}/assets/css/bootstrap-timepicker.css" />
		<link rel="stylesheet" href="${contextPath}/assets/css/daterangepicker.css" />
		<link rel="stylesheet" href="${contextPath}/assets/css/bootstrap-datetimepicker.css" />
		<link rel="stylesheet" href="${contextPath}/assets/css/dropzone.css" />
		
		<script src="${contextPath}/assets/js/ace-extra.js"></script>
	</head>

	<body class="no-skin">
		<!-- #section:basics/navbar.layout -->
		<div id="navbar" class="navbar navbar-default">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<!-- #section:basics/sidebar.mobile.toggle -->
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
					<span class="sr-only">Toggle sidebar</span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>

				<!-- /section:basics/sidebar.mobile.toggle -->
				<div class="navbar-header pull-left">
				<sec:authorize access="!isAuthenticated()">
				  <a href="${contextPath}/" class="navbar-brand">
						<small>
							<i class="fa fa-leaf"></i>
							My Dream Constructions
						</small>
					</a>
				</sec:authorize>
					<sec:authorize access="hasAnyRole('ADMIN')">
					<a href="${contextPath}/admin/dashboard" class="navbar-brand">
						<small>
							<img class="nav-user-photo" src="${contextPath}/image/mdc_logo.png" alt="MDC Logo" style="width: 36px;" />
							My Dream Constructions
						</small>
					</a>
					</sec:authorize>
					<sec:authorize access="hasAnyRole('USER')">
					<a href="${contextPath}/user/dashboard" class="navbar-brand">
						<small>
							<i class="fa fa-leaf"></i>
							My Dream Constructions
						</small>
					</a>
					</sec:authorize>
				</div>

				<div class="navbar-buttons navbar-header pull-right" role="navigation">
					
				</div>

			</div>
		</div>

		<!-- /section:basics/navbar.layout -->
		<div class="main-container" id="main-container">
		
			<div id="sidebar" class="sidebar                  responsive" >
				<script type="text/javascript">
					try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
				</script>

				<ul class="nav nav-list">
				<sec:authorize access="hasRole('ADMIN')">
					<li class="">
						<a href="${contextPath}/admin/dashboard">
							<i class="menu-icon fa fa-home"></i>
							<span class="menu-text">Dashboard </span>
						</a>

						<b class="arrow"></b>
					</li>
					<li class="">
						<a href="${contextPath}/admin/manage_accounts">
							<i class="menu-icon fa fa-users"></i>
							<span class="menu-text">Manage Accounts </span>
						</a>

						<b class="arrow"></b>
					</li>
					<li class="">
						<a href="${contextPath}/admin/transactions_list">
							<i class="menu-icon fa fa-credit-card"></i>
							<span class="menu-text">Transaction Mgmt </span>
						</a>

						<b class="arrow"></b>
					</li>
					<li class="">
						<a href="${contextPath}/admin/reports?dt_type=cwk">
							<i class="menu-icon fa fa-file"></i>
							<span class="menu-text">Reports </span>
						</a>

						<b class="arrow"></b>
					</li>
					<%-- <li class="">
						<a href="${contextPath}/admin/expenses">
							<i class="menu-icon fa fa-credit-card"></i>
							<span class="menu-text">Admin Expenses </span>
						</a>

						<b class="arrow"></b>
					</li> --%>
					<%-- <li class="">
						<a href="${contextPath}/admin/scheduling_slots">
							<i class="menu-icon fa fa-credit-card"></i>
							<span class="menu-text">IV Scheduling Slots </span>
						</a>

						<b class="arrow"></b>
					</li> --%>
				 </sec:authorize>
				 <sec:authorize access="hasRole('USER')">
					<li class="">
						<a href="${contextPath}/user/dashboard">
							<i class="menu-icon fa fa-home"></i>
							<span class="menu-text"> Dashboard </span>
						</a>

						<b class="arrow"></b>
					</li>
					<li class="">
						<a href="${contextPath}/user/payments_list">
							<i class="menu-icon fa fa-users"></i>
							<span class="menu-text">Payment Mgmt </span>
						</a>

						<b class="arrow"></b>
					</li>
					<%-- <li class="">
						<a href="${contextPath}/user/scheduling_slots">
							<i class="menu-icon fa fa-credit-card"></i>
							<span class="menu-text">IV Scheduling Slots </span>
						</a>

						<b class="arrow"></b>
					</li> --%>
				 </sec:authorize>
				 <sec:authorize access="isAuthenticated()">	
					<li class="">
						<a href="<c:url value='/logout' />">
							<i class="menu-icon fa fa-sign-out"></i>
							<span class="menu-text"> Logout </span>
						</a>

						<b class="arrow"></b>
					</li>
				</sec:authorize>	
				</ul>
			</div>
					
							
			<div class="main-content">
				<jsp:doBody />
			</div>

			<div class="footer">
				<div class="footer-inner">
					<!-- #section:basics/footer -->
					<div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder">My Dream </span>
							Constructions &copy; 2023-2024
						</span>

						&nbsp; &nbsp;
						<span class="action-buttons">
							<a href="#">
								<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-rss-square orange bigger-150"></i>
							</a>
						</span>
					</div>

					<!-- /section:basics/footer -->
				</div>
			</div>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script type="text/javascript">
			window.jQuery || document.write("<script src='${contextPath}/assets/js/jquery.js'>"+"<"+"/script>");
		</script>

		
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='${contextPath}/assets/js/jquery.mobile.custom.js'>"+"<"+"/script>");
		</script>
		<script src="${contextPath}/assets/js/bootstrap.js"></script>

		
		<script src="${contextPath}/assets/js/jquery-ui.custom.js"></script>
		<script src="${contextPath}/assets/js/jquery.ui.touch-punch.js"></script>
		<script src="${contextPath}/assets/js/jquery.easypiechart.js"></script>
		<script src="${contextPath}/assets/js/jquery.sparkline.js"></script>
		<script src="${contextPath}/assets/js/flot/jquery.flot.js"></script>
		<script src="${contextPath}/assets/js/flot/jquery.flot.pie.js"></script>
		<script src="${contextPath}/assets/js/flot/jquery.flot.resize.js"></script>

		<!-- ace scripts -->
		<script src="${contextPath}/assets/js/ace/elements.scroller.js"></script>
		<script src="${contextPath}/assets/js/ace/elements.colorpicker.js"></script>
		<script src="${contextPath}/assets/js/ace/elements.fileinput.js"></script>
		<script src="${contextPath}/assets/js/ace/elements.typeahead.js"></script>
		<script src="${contextPath}/assets/js/ace/elements.wysiwyg.js"></script>
		<script src="${contextPath}/assets/js/ace/elements.spinner.js"></script>
		<script src="${contextPath}/assets/js/ace/elements.treeview.js"></script>
		<script src="${contextPath}/assets/js/ace/elements.wizard.js"></script>
		<script src="${contextPath}/assets/js/ace/elements.aside.js"></script>
		<script src="${contextPath}/assets/js/ace/ace.js"></script>
		<script src="${contextPath}/assets/js/ace/ace.ajax-content.js"></script>
		<script src="${contextPath}/assets/js/ace/ace.touch-drag.js"></script>
		<script src="${contextPath}/assets/js/ace/ace.sidebar.js"></script>
		<script src="${contextPath}/assets/js/ace/ace.sidebar-scroll-1.js"></script>
		<script src="${contextPath}/assets/js/ace/ace.submenu-hover.js"></script>
		<script src="${contextPath}/assets/js/ace/ace.widget-box.js"></script>
		<script src="${contextPath}/assets/js/ace/ace.settings.js"></script>
		<script src="${contextPath}/assets/js/ace/ace.settings-rtl.js"></script>
		<script src="${contextPath}/assets/js/ace/ace.settings-skin.js"></script>
		<script src="${contextPath}/assets/js/ace/ace.widget-on-reload.js"></script>
		<script src="${contextPath}/assets/js/ace/ace.searchbox-autocomplete.js"></script>

		<script src="${contextPath}/assets/js/date-time/bootstrap-datepicker.js"></script>
		<script src="${contextPath}/assets/js/date-time/bootstrap-timepicker.js"></script>
		<script src="${contextPath}/assets/js/date-time/moment.js"></script>
		<script src="${contextPath}/assets/js/date-time/daterangepicker.js"></script>
		<script src="${contextPath}/assets/js/bootstrap-colorpicker.js"></script>
		<script src="${contextPath}/assets/js/date-time/bootstrap-datetimepicker.js"></script>
		<link rel="stylesheet" href="${contextPath}/assets/css/ace.onpage-help.css" />
		<link rel="stylesheet" href="${contextPath}/docs/assets/js/themes/sunburst.css" />

		<script type="text/javascript"> ace.vars['base'] = '..'; </script>
		<script src="${contextPath}/assets/js/ace/elements.onpage-help.js"></script>
		<script src="${contextPath}/assets/js/ace/ace.onpage-help.js"></script>
		<script src="${contextPath}/docs/assets/js/rainbow.js"></script>
		<script src="${contextPath}/docs/assets/js/language/generic.js"></script>
		<script src="${contextPath}/docs/assets/js/language/html.js"></script>
		<script src="${contextPath}/docs/assets/js/language/css.js"></script>
		<script src="${contextPath}/docs/assets/js/language/javascript.js"></script>
		<script src="${contextPath}/assets/js/dataTables/jquery.dataTables.js"></script>
		<script src="${contextPath}/assets/js/dataTables/jquery.dataTables.bootstrap.js"></script>
		<script src="${contextPath}/assets/js/dataTables/extensions/TableTools/js/dataTables.tableTools.js"></script>
		<script src="${contextPath}/assets/js/dataTables/extensions/ColVis/js/dataTables.colVis.js"></script>
		
		<script src="${contextPath}/assets/js/dropzone.js"></script>
		
		<script type="text/javascript">
			jQuery(function($) {
				
			
			
				$('#recent-box [data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('.tab-content')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					//var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			
			
				$('.dialogs,.comments').ace_scroll({
					size: 300
			    });
				
				
				//Android's default browser somehow is confused when tapping on label which will lead to dragging the task
				//so disable dragging when clicking on label
				var agent = navigator.userAgent.toLowerCase();
				if("ontouchstart" in document && /applewebkit/.test(agent) && /android/.test(agent))
				  $('#tasks').on('touchstart', function(e){
					var li = $(e.target).closest('#tasks li');
					if(li.length == 0)return;
					var label = li.find('label.inline').get(0);
					if(label == e.target || $.contains(label, e.target)) e.stopImmediatePropagation() ;
				});
			
				$('#tasks').sortable({
					opacity:0.8,
					revert:true,
					forceHelperSize:true,
					placeholder: 'draggable-placeholder',
					forcePlaceholderSize:true,
					tolerance:'pointer',
					stop: function( event, ui ) {
						//just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
						$(ui.item).css('z-index', 'auto');
					}
					}
				);
				$('#tasks').disableSelection();
				$('#tasks input:checkbox').removeAttr('checked').on('click', function(){
					if(this.checked) $(this).closest('li').addClass('selected');
					else $(this).closest('li').removeClass('selected');
				});
			
			
				//show the dropdowns on top or bottom depending on window height and menu position
				$('#task-tab .dropdown-hover').on('mouseenter', function(e) {
					var offset = $(this).offset();
			
					var $w = $(window)
					if (offset.top > $w.scrollTop() + $w.innerHeight() - 100) 
						$(this).addClass('dropup');
					else $(this).removeClass('dropup');
				});
			
			})
		</script>
		
	</body>
</html>
