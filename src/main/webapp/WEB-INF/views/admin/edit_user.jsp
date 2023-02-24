<%@ page   pageEncoding="ISO-8859-1" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="defaultTemplate" tagdir="/WEB-INF/tags" %>

<defaultTemplate:adminDefaultDecorator>
<jsp:attribute name="title">Job Genix</jsp:attribute>
<jsp:body>

<div class="main-content-inner">
	<div class="breadcrumbs" id="breadcrumbs">
		<script type="text/javascript">
			try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
		</script>
	
		<ul class="breadcrumb">
			<li>
				<i class="ace-icon fa fa-home home-icon"></i>
				<a href="${contextPath}/admin/dashboard">Home</a>
			</li>
			<li class="active">Edit User Profile</li>
		</ul>
		
	</div>
	<div class="page-header">
		<h1>
			Edit User Profile
		</h1>
	</div>
	
	<div class="row">
   		<div id="user-profile-3" class="user-profile row">
			<div class="col-sm-offset-1 col-sm-10">
				
				<div class="space"></div>

				
					<div class="tabbable">
						<ul class="nav nav-tabs padding-16">
							<li class="active">
								<a data-toggle="tab" href="#edit-basic">
									<i class="green ace-icon fa fa-pencil-square-o bigger-125"></i>
									Basic Info
								</a>
							</li>

							<li>
								<a data-toggle="tab" href="#edit-settings">
									<i class="purple ace-icon fa fa-cog bigger-125"></i>
									Settings
								</a>
							</li>

							<li>
								<a data-toggle="tab" href="#edit-password">
									<i class="blue ace-icon fa fa-key bigger-125"></i>
									Password
								</a>
							</li>
						</ul>

						<div class="tab-content profile-edit-tab-content">
						<form class="form-horizontal" action="${contextPath}/admin/edit/submit" method="post" enctype="multipart/form-data">
							<div id="edit-basic" class="tab-pane in active">
								<h4 class="header blue bolder smaller">General</h4>
								<input type="hidden" id="form-field-username" name="userId" value="${user.userId}"/>
								<div class="row">
									<div class="vspace-12-sm"></div>

									<div class="col-xs-12 col-sm-8">
										
										<div class="form-group">
											<label class="col-sm-4 control-label no-padding-right" for="form-field-first">Name</label>

											<div class="col-sm-8">
												<input class="form-field" type="text" id="form-field-first" readonly="readonly" placeholder="First Name" name="firstname" value="${user.firstname}" />
												<input class="form-field" type="text" id="form-field-last" readonly="readonly" placeholder="Last Name" name="lastname" value="${user.lastname}" />
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label no-padding-right" for="form-field-username">Gender</label>

											<div class="col-sm-8">
												<input class="col-xs-12 col-sm-10" type="text" id="form-field-username" placeholder="Username" name="gender" value="${user.gender}" readonly="readonly"/>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label no-padding-right" for="form-field-username">Email</label>

											<div class="col-sm-8">
												<input class="col-xs-12 col-sm-10" type="text" id="form-field-username" placeholder="Username" name="email" value="${user.email}" readonly="readonly"/>
											</div>
										</div>
									</div>
								</div>

								<hr />
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-date">Birth Date</label>

									<div class="col-sm-9">
										<div class="input-medium">
											<div class="input-group">
												<input class="input-medium date-picker" id="form-field-date" type="text" data-date-format="dd-mm-yyyy" placeholder="dd-mm-yyyy" name="dateofbirth" value="${user.dateofbirth}" readonly="readonly"/>
												<span class="input-group-addon">
													<i class="ace-icon fa fa-calendar"></i>
												</span>
											</div>
										</div>
									</div>
								</div>

								<div class="space-4"></div>

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-comment">Comment</label>

									<div class="col-sm-9">
										<textarea id="form-field-comment" name="comment">${user.comment}</textarea>
									</div>
								</div>

								<div class="space"></div>
								<h4 class="header blue bolder smaller">Contact</h4>

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-email">Mobile</label>

									<div class="col-sm-9">
										<span class="input-icon input-icon-right">
											<input type="text" id="form-field-email" name="mobileNo" value="${user.mobileNo}" readonly="readonly" />
										</span>
									</div>
								</div>

								<div class="space-4"></div>

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-website">Permanent Address</label>

									<div class="col-sm-9">
										<span class="input-icon input-icon-right">
											<textarea id="form-field-comment" name="permanentAddress" readonly="readonly">${user.permanentAddress}</textarea>
										</span>
									</div>
								</div>

								<div class="space-4"></div>

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-website">Present Address</label>

									<div class="col-sm-9">
										<span class="input-icon input-icon-right">
											<textarea id="form-field-comment" name="presentAddress">${user.presentAddress}</textarea>
										</span>
									</div>
								</div>

								<div class="space-4"></div>
								
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-phone">Alternate MobileNo</label>

									<div class="col-sm-9">
										<span class="input-icon input-icon-right">
											<input class="input-medium input-mask-phone" type="text" id="form-field-phone" name="alternateMobileNo" value="${user.alternateMobileNo}" />
										</span>
									</div>
								</div>
								
								<div class="space-4"></div>
								
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-phone">City,State,Country</label>

									<div class="col-sm-8">
										<input class="form-field" type="text" id="form-field-first" readonly="readonly" placeholder="city" name="city" value="${user.city}" />
										<input class="form-field" type="text" id="form-field-last" readonly="readonly" placeholder="state" name="state" value="${user.state}" />
										<input class="form-field" type="text" id="form-field-last" readonly="readonly" placeholder="country" name="country" value="${user.country}" />
									</div>
								</div>
								
								<div class="space-4"></div>
								
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-phone">Current Status</label>

									<div class="col-sm-8">
										<select class="input-medium" id="userCurrentStatus" name="userCurrentStatus" required="required">
											<option value="">Please Select</option>
											<option value="PROXY" selected='<c:if test="${user.userCurrentStatus eq PROXY }"> selected</c:if>'>PROXY</option>
											<option value="JOB_SUPPORT" selected='<c:if test="${user.userCurrentStatus eq PROXY }"> selected</c:if>'>JOB_SUPPORT</option>
										</select>
									</div>
								</div>
								
								<div class="space-4"></div>
								
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-phone">Job Joining Date</label>

									<div class="col-sm-5">
										<div class="input-group">
											<input class="form-control date-picker" id="datepicker" type="text" name="jobJoiningDate" value="${user.jobJoiningDate}" data-date-format="dd-mm-yyyy" />
											<span class="input-group-addon">
												<i class="fa fa-calendar bigger-110"></i>
											</span>
										</div>
									</div>
								</div>
								
								<div class="space"></div>
								<h4 class="header blue bolder smaller">Other Details</h4>

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-website">Other Skills</label>

									<div class="col-sm-9">
										<span class="input-icon input-icon-right">
											<textarea id="form-field-11" class="autosize-transition form-control" name="platform">${user.platform}</textarea>
										</span>
									</div>
								</div>
								<div class="clearfix form-actions">
									<div class="col-md-offset-3 col-md-9">
										<button class="btn btn-info" type="submit">
											<i class="ace-icon fa fa-check bigger-110"></i>
											Save
										</button>
			
										&nbsp; &nbsp;
										<button class="btn" type="reset">
											<i class="ace-icon fa fa-undo bigger-110"></i>
											Reset
										</button>
									</div>
								</div>
							</div>
						</form>
							<div id="edit-settings" class="tab-pane">
								<div class="space-10"></div>

								<div>
									<label class="inline">
										<input type="checkbox" name="form-field-checkbox" class="ace" />
										<span class="lbl"> Make my profile public</span>
									</label>
								</div>

								<div class="space-8"></div>

								<div>
									<label class="inline">
										<input type="checkbox" name="form-field-checkbox" class="ace" />
										<span class="lbl"> Email me new updates</span>
									</label>
								</div>

								<div class="space-8"></div>

								<div>
									<label>
										<input type="checkbox" name="form-field-checkbox" class="ace" />
										<span class="lbl"> Keep a history of my conversations</span>
									</label>

									<label>
										<span class="space-2 block"></span>

										for
										<input type="text" class="input-mini" maxlength="3" />
										days
									</label>
								</div>
							</div>

							<div id="edit-password" class="tab-pane">
								<div class="space-10"></div>

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-pass1">New Password</label>

									<div class="col-sm-9">
										<input type="password" id="form-field-pass1" />
									</div>
								</div>

								<div class="space-4"></div>

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-pass2">Confirm Password</label>

									<div class="col-sm-9">
										<input type="password" id="form-field-pass2" />
									</div>
								</div>
							</div>
						</div>
					</div>
					
			</div>
		</div>
	</div>
	</div>

<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker({
      changeMonth: true,
      changeYear: true,
      dateFormat: 'dd-mm-yy' 
    });
  } );
  </script>
</jsp:body>
</defaultTemplate:adminDefaultDecorator>	