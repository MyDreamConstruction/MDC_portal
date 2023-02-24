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
	<!-- #section:basics/content.breadcrumbs -->
	<div class="breadcrumbs" id="breadcrumbs">
		<script type="text/javascript">
			try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
		</script>
	
		<ul class="breadcrumb">
			<li>
				<i class="ace-icon fa fa-home home-icon"></i>
				<a href="${contextPath}/admin/dashboard">Home</a>
			</li>
			<li class="active">Transactions</li>
		</ul>
	</div>
	
	<div class="page-content">
	
			<div class="row">
				<div class="col-sm-2"></div>
					<div class="col-sm-8">
						<div class="col-xs-12">
							<div class="widget-box">
								<div class="widget-header widget-header-blue widget-header-flat">
									<h4 class="widget-title lighter">Transaction Search</h4>
								</div>
								<div class="widget-body">
									<div class="widget-main">
									 <form class="form-horizontal" action="${contextPath}/admin/payments_list" method="get" >
										<!-- <div class="form-group">
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
										</div> -->
										<!-- <div class="form-group">
											<label class="control-label col-xs-12 col-sm-3 no-padding-right">Recently Payment Status :</label>
	
											<div class="col-xs-12 col-sm-9">
												<div class="clearfix">
													<select class="input-medium" id="recentlyPaid" name="recentlyPaid" >
														<option value="">Select Paid Status</option>
														<option value="YES">YES</option>
														<option value="NO">NO</option>
													</select>
												</div>
											</div>
										</div> -->
										
										<div class="clearfix form-actions" align="right">
											<div class="col-md-offset-3 col-md-9">
												<button class="btn btn-info" type="submit">
													<i class="ace-icon fa fa-search bigger-110"></i>
													Search
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
		<div class="row">
			<div class="col-xs-12">
				<div class="col-xs-12" align="right">
				<sec:authorize access="hasRole('ADMIN')">
					<a href="${contextPath}/admin/transaction_create" class="btn btn-primary" style="border-radius: 7px;"> Add Payment </a>
				</sec:authorize>
				<sec:authorize access="hasRole('USER')">
					<a href="${contextPath}/user/transaction_create" class="btn btn-primary" style="border-radius: 7px;"> Add Payment </a>
				</sec:authorize>	
				</div>
				<div class="row">
					<div class="col-xs-12">
						<h3 class="header smaller lighter blue">Transactions List</h3>
	
						<div class="clearfix">
							<div class="pull-right tableTools-container"></div>
						</div>
						<div class="table-header">
							Results for "Latest Registered Payments"
						</div>
	
						<div>
							<table id="dynamic-table" class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th>S.No</th>
										<th>PayerName</th>
										<th>Txn Type</th>
										<th>Description</th>
										<th>Amount (&#8377;)</th>
										<th>Created By</th>
										<th>Created Date</th>
										<!-- <th>Recently Paid</th> -->
										<!-- <th>Status</th> -->
										<th></th>
									</tr>
								</thead>
	
								<tbody>
								<c:set var="totalAmt" value="0"/>
								<c:forEach items="${payments}" var="payment" varStatus="status">
									<tr>
										<td>${status.count}</td>
										<td>
											<a href="${contextPath}/admin/trx/reports?payerName=${payment.payerName}">
												${payment.payerName}
											</a>
										</td>
										<td>
											<c:choose>
												<c:when test="${payment.paymentType eq 'CR'}">
													<span class="label label-sm label-success arrowed-right">${payment.paymentType}</span>
												</c:when>
												<c:otherwise>
													<span class="label label-sm label-danger arrowed-right">${payment.paymentType}</span>
												</c:otherwise>
											</c:choose>
										
										</td>
										<td>${payment.paymentDesc}</td>
										<td>
											<c:choose>
												<c:when test="${payment.paymentType eq 'CR'}">
													<span class="label label-success arrowed-in-right arrowed-in">&#8377; ${payment.amount}</span>
												</c:when>
												<c:otherwise>
													<span class="label label-danger arrowed-in-right arrowed-in">&#8377; ${payment.amount}</span>
												</c:otherwise>
											</c:choose>
										</td>
										<td>${payment.createdBy}</td>
										<td>${payment.createddate}</td>
										<%-- <td>${payment.recentlyPaid}</td> --%>
										<%-- <td>
											<c:choose>
												<c:when test="${payment.paymentStatus eq 'CLEARED'}">
													<span class="label label-sm label-success middle">${payment.paymentStatus}</span>
												</c:when>
												<c:otherwise>
													<span class="label label-sm label-warning middle">${payment.paymentStatus}</span>
												</c:otherwise>
											</c:choose>
										</td> --%>
										<td>
											<div class="hidden-sm hidden-xs action-buttons">
												<a class="green" href="${contextPath}/admin/edit_payment/${payment.payId}">
													<i class="ace-icon fa fa-pencil bigger-130"></i>
												</a>
											</div>
										</td>
									</tr>
									<c:set var="totalAmt"  value="${totalAmt + payment.amount}"/>
	 							</c:forEach>
								</tbody>
							</table>
							<div class="row">
							<div class="col-sm-7">	</div>
							   <div class="col-sm-7">
								 <h4 class="pull-right">
									Total Amt :
									<span class="label label-xlg label-black arrowed-right arrowed-in"><i class="ace-icon fa fa-inr"></i> <f:formatNumber value="${totalAmt}" type="number" minFractionDigits="1"/></span>
								 </h4>
						       </div>
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