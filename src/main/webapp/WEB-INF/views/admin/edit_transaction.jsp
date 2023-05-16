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
			<li class="active">Edit Payment</li>
		</ul>
	</div>
	
	<div class="page-content">
		<div class="row">
			<div class="col-sm-6">
					<div class="col-xs-12">
						<div class="widget-box">
							<div class="widget-header widget-header-blue widget-header-flat">
								<h4 class="widget-title lighter">Edit Transaction Payment</h4>
							</div>
							<div class="widget-body">
								<div class="widget-main">
								<sec:authorize access="hasRole('ADMIN')">
									<form class="form-horizontal" action="${contextPath}/admin/edit_transaction" method="post" enctype="multipart/form-data">
								</sec:authorize>
								<sec:authorize access="hasRole('USER')">
									<form class="form-horizontal" action="${contextPath}/user/edit_transaction" method="post" enctype="multipart/form-data">
								</sec:authorize>
								<input type="hidden" id="payId" name="payId" >${payment.payId}</input>
									<div class="form-group">
										<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="comment">PayerName <span style="color: red;">*</span>:</label>

										<div class="col-xs-12 col-sm-9">
											<div class="clearfix">
												<select disabled="disabled" class="input-xlarge" id="payerNameId" name="payerNameId" required="required">
													
													<sec:authorize access="hasRole('ADMIN')">
													<option value="${paymentDetails.payerName}">${paymentDetails.payerName}</option>
													</sec:authorize>
													
												</select>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">Payment Type <span style="color: red;">*</span>:</label>

										<div class="col-xs-12 col-sm-9">
											<div class="clearfix">
												<select disabled="disabled" class="input-medium" id="paymentType" name="paymentType" required="required">
													
													<option value="${paymentDetails.paymentType} ">${paymentDetails.paymentType}</option>
													
												</select>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">Amount <span style="color: red;">*</span>:</label>

										<div class="col-xs-12 col-sm-9">
											<div class="clearfix">
												<input  type="text" name="amount" id="amount" value="${paymentDetails.amount} "class="col-xs-12 col-sm-6" required="required" />
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="comment">Payment Desc <span style="color: red;">*</span>:</label>

										<div class="col-xs-12 col-sm-9">
											<div class="clearfix">
												<textarea class="input-xlarge" name="paymentDesc" id="paymentDesc"  required="required">${paymentDetails.paymentDesc}</textarea><br/>
												<span style="font-size: 11px;"> ( Give proper description like <strong>"This Payer XXXX Paid Amount for XXXX" ) </strong></span>
											</div>
										</div>
									</div>
									
									<div class="form-group">
										<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">Created By <span style="color: red;">*</span>:</label>

										<div class="col-xs-12 col-sm-9">
											<div class="clearfix">
												<select class="input-xlarge" id="createdBy" name="createdBy" required="required">
													
													<sec:authorize access="hasRole('ADMIN')">
														<option value="${paymentDetails.createdBy}">ADMIN</option>
													</sec:authorize>
													<sec:authorize access="hasRole('USER')">
														<option value="${paymentDetails.createdBy}">USER</option>
													</sec:authorize>
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

	  </div>
	</div>
</div>
</jsp:body>
</defaultTemplate:adminDefaultDecorator>