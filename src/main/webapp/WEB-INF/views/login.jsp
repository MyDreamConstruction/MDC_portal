<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

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
					<!-- #section:basics/navbar.layout.brand -->
					<a href="${contextPath}/" class="navbar-brand">
						<small>
							<i class="fa fa-leaf"></i>
							My Dream Constructions
						</small>
					</a>

				</div>

				<!-- #section:basics/navbar.dropdown -->
				<div class="navbar-buttons navbar-header pull-right" role="navigation">
					
				</div>

			</div><!-- /.navbar-container -->
		</div>

		<!-- /section:basics/navbar.layout -->
		<div class="main-container" id="main-container">
			<div class="main-content">
				<div class="main-content-inner">
				
					<div class="page-content">
						<div class="page-header" align="right">
							<a href="${contextPath}/login" class="btn btn-warning " style="border-radius: 7px; "> Login</a> &nbsp;
							<a href="${contextPath}/registration" class="btn btn-primary " style="border-radius: 7px; "> Registration</a>
						</div>
					</div>
					
					<div class="row">
						<div class="col-xs-12">
							<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">

							<div class="space-6"></div>
						<div class="widget-box">
							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="ace-icon fa fa-coffee green"></i>
												Please Enter Your Information
											</h4>

											<div class="space-6"></div>
											<c:url var="loginUrl" value="/login" />
											<form action="${loginUrl}" method="post" class="form-horizontal">
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="username" class="form-control" placeholder="Username">
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" name="password" class="form-control" placeholder="Password">
															<i class="ace-icon fa fa-lock"></i>
														</span>
													</label>

													<div class="space"></div>
													<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
													<div class="clearfix">

														<input type="submit" value="Login" class="width-35 pull-right btn btn-sm btn-primary">
													</div>

													<div class="space-4"></div>
												</fieldset>
											</form>

										</div><!-- /.widget-main -->
										
									</div><!-- /.widget-body -->
								</div><!-- /.login-box -->

							</div>
						</div>
							
						</div>
					</div>
						</div>
					</div>	
				</div>
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


		<!-- the following scripts are used in demo only for onpage help and you don't need them -->
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
	</body>
</html>
