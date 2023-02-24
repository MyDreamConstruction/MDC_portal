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
<jsp:attribute name="title">MDC</jsp:attribute>
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
			<li class="active">Payment Create</li>
		</ul>
	</div>
	
	<div class="page-content">
		<div class="row">
			<div class="col-sm-6">
					<div class="col-xs-12">
						<div class="widget-box">
							<div class="widget-header widget-header-blue widget-header-flat">
								<h4 class="widget-title lighter">Add Transaction Payment</h4>
							</div>
							<div class="widget-body">
								<div class="widget-main">
								<sec:authorize access="hasRole('ADMIN')">
									<form class="form-horizontal" action="${contextPath}/admin/transaction_create" method="post" enctype="multipart/form-data">
								</sec:authorize>
								<sec:authorize access="hasRole('USER')">
									<form class="form-horizontal" action="${contextPath}/user/transaction_create" method="post" enctype="multipart/form-data">
								</sec:authorize>
									<div class="form-group">
										<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="comment">PayerName <span style="color: red;">*</span>:</label>

										<div class="col-xs-12 col-sm-9">
											<div class="clearfix">
												<select class="input-xlarge" id="payerNameId" name="payerNameId" required="required">
													<option value="">------- Select Accounts ------- </option>
													<sec:authorize access="hasRole('ADMIN')">
													<c:forEach items="${accounts}" var="account" varStatus="status">
														<option value="${account.id}">${account.name}</option>
													</c:forEach>
													</sec:authorize>
													<sec:authorize access="hasRole('USER')">
														<option value="${account.id}">${account.name}</option>
													</sec:authorize>
												</select>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">Payment Type <span style="color: red;">*</span>:</label>

										<div class="col-xs-12 col-sm-9">
											<div class="clearfix">
												<select class="input-medium" id="paymentType" name="paymentType" required="required">
													<option value="">Select Type</option>
													<option value="CR">CR</option>
													<option value="DR">DR</option>
												</select>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">Amount <span style="color: red;">*</span>:</label>

										<div class="col-xs-12 col-sm-9">
											<div class="clearfix">
												<input type="text" name="amount" id="amount" class="col-xs-12 col-sm-6" required="required" />
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="comment">Payment Desc <span style="color: red;">*</span>:</label>

										<div class="col-xs-12 col-sm-9">
											<div class="clearfix">
												<textarea class="input-xlarge" name="paymentDesc" id="paymentDesc"  required="required"></textarea><br/>
												<span style="font-size: 11px;"> ( Give proper description like <strong>"This Payer XXXX Paid Amount for XXXX" ) </strong></span>
											</div>
										</div>
									</div>
									
									<div class="form-group">
										<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">Created By <span style="color: red;">*</span>:</label>

										<div class="col-xs-12 col-sm-9">
											<div class="clearfix">
												<select class="input-xlarge" id="createdBy" name="createdBy" required="required">
													<option value="">Select</option>
													<sec:authorize access="hasRole('ADMIN')">
														<option value="ADMIN">ADMIN</option>
													</sec:authorize>
													<sec:authorize access="hasRole('USER')">
														<option value="USER">USER</option>
													</sec:authorize>
												</select>
											</div>
										</div>
									</div>
									<!-- <div class="form-group">
										<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">Payment Status <span style="color: red;">*</span>:</label>

										<div class="col-xs-12 col-sm-9">
											<div class="clearfix">
												<select class="input-medium" id="paymentStatus" name="paymentStatus" required="required">
													<option value="">Select Type</option>
													<option value="NOT_CLEARED">NOT_CLEARED</option>
													<option value="CLEARED">CLEARED</option>
												</select>
											</div>
										</div>
									</div> -->
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
	<div class="col-sm-6">
		<div class="col-xs-12">
		   
		   <div class="widget-box">
				<div class="widget-header widget-header-blue widget-header-flat">
					<h4 class="widget-title lighter">Upload Payment Excel's</h4>
				</div>
				<div class="widget-body">
					<div class="widget-main">
					 <form class="" id="" action="${contextPath}/admin/uploadfile" method="post" enctype="multipart/form-data">
						<div class="form-group">
							<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">Upload File <span style="color: red;">*</span>:</label>
							<div class="col-xs-12 col-sm-9">
								<div class="clearfix">
									<div class="col-xs-12 col-sm-9">
										<input type="file" name="file"  id="id-input-file-3" />
									   </div>
								</div>
							</div>
						</div>
						<br/>
						<div class="clearfix form-actions" align="right">
							<div class="col-md-offset-3">
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
	</div>
</div>
</jsp:body>
</defaultTemplate:adminDefaultDecorator>