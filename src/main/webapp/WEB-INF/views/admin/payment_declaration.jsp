<%@ page   pageEncoding="ISO-8859-1" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
			<li class="active">Payment Declaration</li>
		</ul>
	</div>
	
	<div class="page-content">
			<div class="row">
			<div class="col-sm-2"></div>
				<div class="col-sm-8">
					<div class="col-xs-12">
						<div class="widget-box">
							<div class="widget-header widget-header-blue widget-header-flat">
								<h4 class="widget-title lighter">Payment Declaration</h4>
							</div>
							<div class="widget-body">
								<div class="widget-main">
								 <form class="form-horizontal" action="${contextPath}/admin/payment_declaration" method="post" enctype="multipart/form-data">
									<div class="form-group">
										<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">Payment Name <span style="color: red;">*</span>:</label>

										<div class="col-xs-12 col-sm-9">
											<div class="clearfix">
											<select class="input-medium" id="paymenttype" name="paymenttype" required="required">
													<option value="">Please Select</option>
													<option value="TRAINING">TRAINING</option>
													<option value="SUPPORT">SUPPORT</option>
													<option value="JOB_SUPPORT">JOB_SUPPORT</option>
												</select>
											</div>
										</div>
									</div>
									
									<div class="form-group">
										<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">Placeholder <span style="color: red;">*</span>:</label>

										<div class="col-xs-12 col-sm-9">
											<div class="clearfix">
												<input type="text" name="placeholder" id="placeholder" class="col-xs-12 col-sm-6" required="required" />
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">Fixed Value <span style="color: red;">*</span>:</label>

										<div class="col-xs-12 col-sm-9">
											<div class="clearfix">
												<input type="text" name="fixedValue" id="fixedValue" class="col-xs-12 col-sm-6" required="required" />
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">Percentage Value <span style="color: red;">*</span>:</label>

										<div class="col-xs-12 col-sm-9">
											<div class="clearfix">
												<input type="text" name="percentageValue" id="percentageValue" class="col-xs-12 col-sm-6" required="required" />
											</div>
										</div>
									</div>
									
									<div class="form-group">
										<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">Percentage Total <span style="color: red;">*</span>:</label>

										<div class="col-xs-12 col-sm-9">
											<div class="clearfix">
												<input type="text" name="percentageTotal" id="percentageTotal" class="col-xs-12 col-sm-6" required="required" />
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="comment">User <span style="color: red;">*</span>:</label>

										<div class="col-xs-12 col-sm-9">
											<div class="clearfix">
												<select class="input-medium" id="userid" name="userid" required="required">
													<option value="">Select User</option>
													<c:forEach items="${users}" var="user" varStatus="status">
														<option value="${user.userId}">${user.firstname} ${user.lastname}</option>
													</c:forEach>
												</select>
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
		<div class="hr hr8 hr-double hr-dotted"></div>
		<div class="col-xs-12">
			<h3 class="header smaller lighter blue">Payments Declaration</h3>
	
			<div class="clearfix">
				<div class="pull-right tableTools-container"></div>
			</div>
			<div class="table-header">
				Results for "Latest Registered Payments Declaration"
			</div>
	
			<div>
				<table id="dynamic-table" class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>Type Id</th>
							<th>Name</th>
							<th>Payment Type</th>
							<th>Placeholder</th>
							<th>FixedValue (&#8377;)</th>
							<th>Percentage Value</th>
							<th>Percentage Total (&#8377;)</th>
							<th></th>
						</tr>
					</thead>
	
					<tbody>
					<c:forEach items="${paymentTypes}" var="type" varStatus="status">
						<tr>
							<td>${type.typeId}</td>
							<td>${type.firstname} ${type.lastname}</td>
							<td>${type.paymenttype}</td>
							<td>
								<c:choose>
									<c:when test="${type.placeholder eq 'fixed'}">
										<span class="label label-sm label-primary arrowed-right">${type.placeholder}</span>
									</c:when>
									<c:otherwise>
										<span class="label label-sm label-pink arrowed-right">${type.placeholder}</span>
									</c:otherwise>
								</c:choose>
							
							</td>
							<td>&#8377; ${type.fixedValue}</td>
							<td>${type.percentageValue}</td>
							<td>${type.percentageTotal}</td>
							<td>
								<div class="hidden-sm hidden-xs action-buttons">
									<a class="blue" href="#">
										<i class="ace-icon fa fa-search-plus bigger-130"></i>
									</a>
	
									<a class="green" href="#">
										<i class="ace-icon fa fa-pencil bigger-130"></i>
									</a>
	
									<a class="red" href="#">
										<i class="ace-icon fa fa-trash-o bigger-130"></i>
									</a>
								</div>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	</div>
</div>
</jsp:body>
</defaultTemplate:adminDefaultDecorator>