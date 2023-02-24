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
			<li class="active">Payment Edit</li>
		</ul>
	</div>
	
	<div class="page-content">
			<div class="row">
			<div class="col-sm-2"></div>
				<div class="col-sm-8">
					<div class="col-xs-12">
						<div class="widget-box">
							<div class="widget-header widget-header-blue widget-header-flat">
								<h4 class="widget-title lighter">Payment Edit</h4>
							</div>
							<div class="widget-body">
								<div class="widget-main">
								 <form class="form-horizontal" action="${contextPath}/admin/edit_payment" method="post" enctype="multipart/form-data">
									<input type="hidden" name="paymentid" value="${payment.paymentid}">
									<div class="form-group">
										<label class="control-label col-xs-12 col-sm-3 no-padding-right">Payment Status <span style="color: red;">*</span>:</label>

										<div class="col-xs-12 col-sm-9">
											<div class="clearfix">
												<select class="input-medium" id="paymentStatus" name="paymentStatus" required="required">
													<option value="">Select Status</option>
													<option value="NOT_CLEARED">NOT_CLEARED</option>
													<option value="CLEARED">CLEARED</option>
												</select>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-xs-12 col-sm-3 no-padding-right">Recently Payment Status <span style="color: red;">*</span>:</label>

										<div class="col-xs-12 col-sm-9">
											<div class="clearfix">
												<select class="input-medium" id="recentlyPaid" name="recentlyPaid" required="required">
													<option value="">Select Paid Status</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
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