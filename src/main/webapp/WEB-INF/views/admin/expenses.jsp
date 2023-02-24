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
			<li class="active">Payments</li>
		</ul>
	</div>
	
	<div class="page-content">
		<div class="row">
			<div class="col-xs-12">
				<div class="col-xs-12" align="right">
				<sec:authorize access="hasRole('ADMIN')">
					<a href="${contextPath}/admin/payment_define" class="btn btn-primary" style="border-radius: 7px;"> Payment </a>
				</sec:authorize>
				<sec:authorize access="hasRole('USER')">
					<a href="${contextPath}/user/payment_define" class="btn btn-primary" style="border-radius: 7px;"> Payment </a>
				</sec:authorize>	
				</div>
				<div class="row">
					<div class="col-xs-12">
						<h3 class="header smaller lighter blue">Expenses Payments List</h3>
	
						<div class="clearfix">
							<div class="pull-right tableTools-container"></div>
						</div>
						<div class="table-header">
							Results for "Latest Registered Expenses Payments"
						</div>
	
						<div>
							<table id="dynamic-table" class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th>S.No</th>
										<th>Name</th>
										<th>Type</th>
										<th>Description</th>
										<th>Price (&#8377;)</th>
										<th>Created By</th>
										<th>Created Date</th>
										<th>Status</th>
									</tr>
								</thead>
	
								<tbody>
								<c:forEach items="${expenses}" var="payment" varStatus="status">
									<tr>
										<td>${status.count}</td>
										<td>${payment.paymentName}</td>
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
													<span class="label label-success arrowed-in-right arrowed-in">&#8377; ${payment.price}</span>
												</c:when>
												<c:otherwise>
													<span class="label label-danger arrowed-in-right arrowed-in">&#8377; ${payment.price}</span>
												</c:otherwise>
											</c:choose>
										</td>
										<td>${payment.createdBy}</td>
										<td>${payment.createddate}</td>
										<td>
											<c:choose>
												<c:when test="${payment.paymentStatus eq 'CLEARED'}">
													<span class="label label-success arrowed-in-right arrowed-in">${payment.paymentStatus}</span>
												</c:when>
												<c:otherwise>
													<span class="label label-warning arrowed-in-right arrowed-in">${payment.paymentStatus}</span>
												</c:otherwise>
											</c:choose>
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
	 </div>
	</div>
</jsp:body>
</defaultTemplate:adminDefaultDecorator>