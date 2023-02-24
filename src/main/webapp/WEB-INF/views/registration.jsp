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
		<link rel="stylesheet" href="${contextPath}/assets/css/select2.css" />
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

		<div class="main-container" id="main-container">
			<div class="main-content">
				<div class="main-content-inner">
					<div class="page-content">
						<div class="page-header" align="right">
							<a href="${contextPath}/login" class="btn btn-warning " style="border-radius: 7px; "> Login</a> &nbsp;
							<a href="${contextPath}/registration" class="btn btn-primary " style="border-radius: 7px; "> Registration</a>
						</div>
						
						<div class="row">
							<div class="col-xs-12">
								<div class="widget-box">
									<div class="widget-header widget-header-blue widget-header-flat">
										<h4 class="widget-title lighter">Registration Form</h4>
									</div>
									<div class="widget-body">
										<div class="widget-main">
										<form class="form-horizontal" action="${contextPath}/registration" method="post" enctype="multipart/form-data">
											<div class="form-group">
												<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">First Name <span style="color: red;">*</span>:</label>

												<div class="col-xs-12 col-sm-9">
													<div class="clearfix">
														<input type="text" name="firstname" id="firstname" class="col-xs-12 col-sm-6" required="required"/>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">Last Name <span style="color: red;">*</span>:</label>

												<div class="col-xs-12 col-sm-9">
													<div class="clearfix">
														<input type="text" name="lastname" id="lastname" class="col-xs-12 col-sm-6" required="required" />
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">Email Address <span style="color: red;">*</span>:</label>

												<div class="col-xs-12 col-sm-9">
													<div class="clearfix">
														<input type="email" name="email" id="email" class="col-xs-12 col-sm-6" required="required" />
													</div>
												</div>
											</div>

											<div class="space-2"></div>
											
											<div class="form-group">
												<label class="control-label col-xs-12 col-sm-3 no-padding-right">Gender <span style="color: red;">*</span>:</label>
												<div class="col-xs-12 col-sm-9">
													<select class="input-medium" id="gender" name="gender" required="required">
														<option value="">Select Gender</option>
														<option value="M">Male</option>
														<option value="F">Female</option>
													</select>
												</div>
											</div>
											<div class="space-2"></div>
											
											<div class="form-group">
											  <label class="control-label col-xs-12 col-sm-3 no-padding-right">DOB <span style="color: red;">*</span>:</label>
											  <div class="col-xs-12 col-sm-9">
												<span class="input-icon">
								                 <select name="birthday_date" class="form-control input-group-lg" id="day">
								                       <option value="Day" disabled selected>Day</option>
								                        <% for(int i=1;i<=31;i++) { %>	
								                       <option value="<%=i%>"><%=i%></option>
								                       <% }%>
								                     </select>
								                </span>
								                <span class="input-icon">
								                   <select name="birthday_month" class="form-control input-group-lg" id="month">
							                          <option value="">Month</option>
							                          <option value="Jan">Jan</option>
							                          <option value="Feb">Feb</option>
							                          <option value="Mar">Mar</option>
							                          <option value="Apr">Apr</option>
							                          <option value="May">May</option>
							                          <option value="Jun">Jun</option>
							                          <option value="Jul">Jul</option>
							                          <option value="Aug">Aug</option>
							                          <option value="Sep">Sep</option>
							                          <option value="Oct">Oct</option>
							                          <option value="Nov">Nov</option>
							                          <option value="Dec">Dec</option>
							                        </select> 
								                </span>    
								                <span class="input-icon"> 
								                <select name="birthday_year" class="form-control input-group-lg" id="year">
								                      <option value="year" disabled selected>Year</option>
								                      <% for(int i=1950;i<=2022;i++) { %>	
								                      <option value="<%=i%>"><%=i%></option>
								                      <% }%>
								                    </select>
								                </span>
								              </div>
											</div>
											<div class="space-2"></div>
											<div class="form-group">
												<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="state">Country <span style="color: red;">*</span>:</label>

												<div class="col-xs-12 col-sm-9">
													<input type="text" id="country" name="country" class="col-xs-12 col-sm-5" required="required" />
												</div>
											</div>

											<div class="space-2"></div>
											<div class="form-group">
												<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="state">State <span style="color: red;">*</span>:</label>

												<div class="col-xs-12 col-sm-9">
													<input type="text" id="state" name="state" class="col-xs-12 col-sm-5" required="required"/>
												</div>
											</div>
											<div class="space-2"></div>
											
											<div class="form-group">
												<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="state">City <span style="color: red;">*</span>:</label>

												<div class="col-xs-12 col-sm-9">
													<input type="text" id="city" name="city" class="col-xs-12 col-sm-5" required="required"/>
												</div>
											</div>

											<div class="space-2"></div>
											
											<div class="form-group">
												<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="state">ZipCode <span style="color: red;">*</span>:</label>

												<div class="col-xs-12 col-sm-9">
													<input type="text" id="zipcode" name="zipcode" class="col-xs-12 col-sm-5" required="required"/>
												</div>
											</div>
											<div class="space-2"></div>
											
											<div class="hr hr-dotted"></div>

											<div class="form-group">
												<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="name">Present Address <span style="color: red;">*</span>:</label>

												<div class="col-xs-12 col-sm-9">
													<div class="clearfix">
														<textarea class="input-xlarge" name="presentAddress" id="presentAddress" required="required"></textarea>
													</div>
												</div>
											</div>

											<div class="space-2"></div>

											<div class="form-group">
												<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="name">Permanent Address <span style="color: red;">*</span>:</label>

												<div class="col-xs-12 col-sm-9">
													<div class="clearfix">
														<textarea class="input-xlarge" name="permanentAddress" id="permanentAddress" required="required"></textarea>
													</div>
												</div>
											</div>
											<div class="space-2"></div>
											<div class="form-group">
												<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="phone">Mobile Number <span style="color: red;">*</span> :</label>

												<div class="col-xs-12 col-sm-9">
													<div class="input-group">
														<span class="input-group-addon">
															<i class="ace-icon fa fa-mobile"></i>
														</span>
														<input type="tel" id="mobileNo" name="mobileNo" required="required"/>
													</div>
												</div>
											</div>

											<div class="space-2"></div>

											<div class="form-group">
												<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="url">Alternate Mobile Number :</label>

												<div class="col-xs-12 col-sm-9">
													<div class="input-group">
														<span class="input-group-addon">
															<i class="ace-icon fa fa-phone"></i>
														</span>
														<input type="tel" id="alternateMobileNo" name="alternateMobileNo" />
													</div>
												</div>
											</div>


											<div class="space-2"></div>

											<div class="form-group">
												<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="comment">About Me <span style="color: red;">*</span>:</label>

												<div class="col-xs-12 col-sm-9">
													<div class="clearfix">
														<textarea class="input-xlarge" name="comment" id="comment"  required="required"></textarea>
													</div>
												</div>
											</div>

											<div class="clearfix form-actions" align="right">
												<div class="col-md-offset-3 col-md-9">
													<button class="btn btn-info" type="submit">
														<i class="ace-icon fa fa-check bigger-110"></i>
														Submit
													</button>
		
													&nbsp; &nbsp; &nbsp;
													<button class="btn" type="reset">
														<i class="ace-icon fa fa-undo bigger-110"></i>
														Reset
													</button>
												</div>
											</div>
										</form>
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

				</div>
			</div>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div>

		</div>
		</div>
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='${contextPath}/assets/js/jquery.mobile.custom.js'>"+"<"+"/script>");
		</script>
		<script src="${contextPath}/assets/js/bootstrap.js"></script>
		<script src="${contextPath}/assets/js/jquery-ui.custom.js"></script>
		<!-- page specific plugin scripts -->
		<script src="${contextPath}/assets/js/fuelux/fuelux.wizard.js"></script>
		<script src="${contextPath}/assets/js/jquery.validate.js"></script>
		<script src="${contextPath}/assets/js/additional-methods.js"></script>
		<script src="${contextPath}/assets/js/bootbox.js"></script>
		<script src="${contextPath}/assets/js/jquery.maskedinput.js"></script>
		<script src="${contextPath}/assets/js/select2.js"></script>

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

		<script type="text/javascript">
		$(document).ready(function () {
			
				$('[data-rel=tooltip]').tooltip();
			
				$(".select2").css('width','200px').select2({allowClear:true})
				.on('change', function(){
					$(this).closest('form').validate().element($(this));
				}); 
			
			
				var $validation = false;
				$('#fuelux-wizard-container')
				.ace_wizard({
					//step: 2 //optional argument. wizard will jump to step "2" at first
					//buttons: '.wizard-actions:eq(0)'
				})
				.on('actionclicked.fu.wizard' , function(e, info){
					if(info.step == 1 && $validation) {
						if(!$('#validation-form').valid()) e.preventDefault();
					}
				})
				.on('finished.fu.wizard', function(e) {
					bootbox.dialog({
						message: "Thank you! Your information was successfully saved!", 
						buttons: {
							"success" : {
								"label" : "OK",
								"className" : "btn-sm btn-primary"
							}
						}
					});
				}).on('stepclick.fu.wizard', function(e){
					//e.preventDefault();//this will prevent clicking and selecting steps
				});
			
			
				//jump to a step
				/**
				var wizard = $('#fuelux-wizard-container').data('fu.wizard')
				wizard.currentStep = 3;
				wizard.setState();
				*/
			
				//determine selected step
				//wizard.selectedItem().step
			
			
			
				//hide or show the other form which requires validation
				//this is for demo only, you usullay want just one form in your application
				$('#skip-validation').removeAttr('checked').on('click', function(){
					$validation = this.checked;
					if(this.checked) {
						$('#sample-form').hide();
						$('#validation-form').removeClass('hide');
					}
					else {
						$('#validation-form').addClass('hide');
						$('#sample-form').show();
					}
				})
			
			
			
				//documentation : http://docs.jquery.com/Plugins/Validation/validate
			
			
				$.mask.definitions['~']='[+-]';
				$('#phone').mask('(999) 999-9999');
			
				jQuery.validator.addMethod("phone", function (value, element) {
					return this.optional(element) || /^\(\d{3}\) \d{3}\-\d{4}( x\d{1,6})?$/.test(value);
				}, "Enter a valid phone number.");
			
				$('#validation-form').validate({
					errorElement: 'div',
					errorClass: 'help-block',
					focusInvalid: false,
					ignore: "",
					rules: {
						email: {
							required: true,
							email:true
						},
						password: {
							required: true,
							minlength: 5
						},
						password2: {
							required: true,
							minlength: 5,
							equalTo: "#password"
						},
						name: {
							required: true
						},
						phone: {
							required: true,
							phone: 'required'
						},
						url: {
							required: true,
							url: true
						},
						comment: {
							required: true
						},
						state: {
							required: true
						},
						platform: {
							required: true
						},
						subscription: {
							required: true
						},
						gender: {
							required: true,
						},
						agree: {
							required: true,
						}
					},
			
					messages: {
						email: {
							required: "Please provide a valid email.",
							email: "Please provide a valid email."
						},
						password: {
							required: "Please specify a password.",
							minlength: "Please specify a secure password."
						},
						state: "Please choose state",
						subscription: "Please choose at least one option",
						gender: "Please choose gender",
						agree: "Please accept our policy"
					},
			
			
					highlight: function (e) {
						$(e).closest('.form-group').removeClass('has-info').addClass('has-error');
					},
			
					success: function (e) {
						$(e).closest('.form-group').removeClass('has-error');//.addClass('has-info');
						$(e).remove();
					},
			
					errorPlacement: function (error, element) {
						if(element.is('input[type=checkbox]') || element.is('input[type=radio]')) {
							var controls = element.closest('div[class*="col-"]');
							if(controls.find(':checkbox,:radio').length > 1) controls.append(error);
							else error.insertAfter(element.nextAll('.lbl:eq(0)').eq(0));
						}
						else if(element.is('.select2')) {
							error.insertAfter(element.siblings('[class*="select2-container"]:eq(0)'));
						}
						else if(element.is('.chosen-select')) {
							error.insertAfter(element.siblings('[class*="chosen-container"]:eq(0)'));
						}
						else error.insertAfter(element.parent());
					},
			
					submitHandler: function (form) {
					},
					invalidHandler: function (form) {
					}
				});
			
				
				
				
				$('#modal-wizard-container').ace_wizard();
				$('#modal-wizard .wizard-actions .btn[data-dismiss=modal]').removeAttr('disabled');
				
				
				/**
				$('#date').datepicker({autoclose:true}).on('changeDate', function(ev) {
					$(this).closest('form').validate().element($(this));
				});
				
				$('#mychosen').chosen().on('change', function(ev) {
					$(this).closest('form').validate().element($(this));
				});
				*/
				
				
				$(document).one('ajaxloadstart.page', function(e) {
					//in ajax mode, remove remaining elements before leaving page
					$('[class*=select2]').remove();
				});
			})
		</script>

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
