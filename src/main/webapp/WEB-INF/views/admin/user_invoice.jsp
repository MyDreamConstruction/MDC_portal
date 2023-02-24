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
			<li class="active">Invoice</li>
		</ul>
	</div>

	<div class="page-content">
		<div class="row">
			<div class="col-xs-12">
				<!-- PAGE CONTENT BEGINS -->
				<div class="space-6"></div>

				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<!-- #section:pages/invoice -->
						<div class="widget-box transparent">
							<div class="widget-header widget-header-large">
								<h3 class="widget-title grey lighter">
									<i class="ace-icon fa fa-leaf green"></i>
									Customer Invoice
								</h3>

								<!-- #section:pages/invoice.info -->
								<div class="widget-toolbar no-border invoice-info">
									<span class="invoice-info-label">Invoice:</span>
									<span class="red"># ${user.userId}</span>

									<br />
									<span class="invoice-info-label">Date:</span>
									<span class="blue"><f:formatDate value="${user.createddate}" pattern="yyyy-MM-dd" /></span>
								</div>

								<div class="widget-toolbar hidden-480">
									<a href="#" onclick="window.print();">
										<i class="ace-icon fa fa-print"></i>
									</a>
								</div>

								<!-- /section:pages/invoice.info -->
											</div>

											<div class="widget-body">
												<div class="widget-main padding-24">
													<div class="row">
														

										<div class="col-sm-6">
											<div class="row">
												<div class="col-xs-11 label label-lg label-success arrowed-in arrowed-right">
													<b>Customer Info</b>
												</div>
											</div>

											<div>
												<ul class="list-unstyled  spaced">
												
													<li>
														<i class="ace-icon fa fa-caret-right green"></i>Name :
														
														<b class="red">${user.firstname} ${user.lastname}</b>
													</li>
													<li>
														<i class="ace-icon fa fa-caret-right green"></i>Gender : 
														
														<b class="red">${user.gender}</b>
													</li>
													<li>
														<i class="ace-icon fa fa-caret-right green"></i>Mobile No : 
														
														<b class="red">${user.mobileNo}</b>
													</li>

													<li>
														<i class="ace-icon fa fa-caret-right green"></i>Zip Code : 
														
														<b class="red">${user.zipcode}</b>
													</li>
													<li>
														<i class="ace-icon fa fa-caret-right green"></i>City : 
														
														<b class="red">${user.city}</b>
													</li>

													<li>
														<i class="ace-icon fa fa-caret-right green"></i>State, Country : 
														
														<b class="red">${user.state} , ${user.country}</b>
													</li>

													<li class="divider"></li>
													
												</ul>
											</div>
										</div>
										
										<div class="col-sm-6">
											<div class="row">
												<div class="col-xs-11 label label-lg label-info arrowed-in arrowed-right">
													<b>Address Info</b>
												</div>
											</div>

											<div>
												<ul class="list-unstyled spaced">
													<li>
														<i class="ace-icon fa fa-caret-right green"></i>Present Address : 
														
														<b class="red">${user.presentAddress}</b>
													</li>

													<li>
														<i class="ace-icon fa fa-caret-right green"></i>Permanent Address :
														
														<b class="red">${user.permanentAddress}</b>
													</li>
													<li>
														<i class="ace-icon fa fa-caret-right green"></i>Alternate Mobile No : 
														
														<b class="red">${user.alternateMobileNo}</b>
													</li>
												</ul>
											</div>
										</div>
									</div>

									<div class="space"></div>

									<div>
										<h3 class="label label-xlg label-primary arrowed arrowed-right"> Training Invoice</h3>
										<table class="table table-striped table-bordered">
											<thead>
												<tr>
													<th class="center">#</th>
													<th>Payment Name</th>
													<th class="hidden-xs">Description</th>
													<th class="hidden-480">Created By</th>
													<th>Created Date</th>
													<th>Total</th>
												</tr>
											</thead>
							
											<tbody>
											<c:set var="totalTrainingAmt" value="0" />
											<c:forEach items="${trainingList}" var="payment" varStatus="status">
												<tr>
													<td class="center">${status.count}</td>
													<td> <span class="label label-sm label-primary arrowed ">${payment.paymentName}	</span></td>
													<td class="hidden-xs">
														${payment.paymentDesc}
													</td>
													<td class="hidden-480"> ${payment.createdBy} </td>
													<td>${payment.createddate}</td>
													<td><i class="ace-icon fa fa-inr"></i> <f:formatNumber value="${payment.price}" type="number" minFractionDigits="1"/></td>
												</tr>
												<c:set var="totalTrainingAmt"  value="${totalTrainingAmt + payment.price}"/>
											</c:forEach>
												
											</tbody>
										</table>
									</div>

									<div class="hr hr8 hr-double hr-dotted"></div>

									<div class="row">
										  <div class="col-sm-8 pull-right">
												<h4 class="pull-right">
													Total Amt :
													<span class="label label-xlg label-black arrowed-right arrowed-in"><i class="ace-icon fa fa-inr"></i> <f:formatNumber value="${trainingTotalAmt}" type="number" minFractionDigits="1"/></span>
												</h4>
											</div>
											<div class="col-sm-8 pull-right">
												<h4 class="pull-right">
													Total Paid Amt :
													<span class="label label-xlg label-success arrowed-right arrowed-in"> <i class="ace-icon fa fa-inr"></i> <f:formatNumber type="number" maxFractionDigits="1" value="${totalTrainingAmt}" /> </span>
												</h4>
											</div>
											<div class="col-sm-8 pull-right">
												<h4 class="pull-right">
													Balance Amt :
													<span class="label label-xlg label-danger arrowed-right arrowed-in"><i class="ace-icon fa fa-inr"></i> <f:formatNumber type="number" maxFractionDigits="1" value="${trainingTotalAmt - totalTrainingAmt}" /></span>
												</h4>
										   </div>
									</div>
									
									<div class="hr hr8 hr-double hr-dotted"></div>
									
									<div>
										<h3 class="label label-xlg label-success arrowed arrowed-right"> Support Invoice</h3>
										<c:if test="${not empty paymentTriggers}">
											<div align="right">
											<span class="label label-sm label-primary "> Next Payment Date : </span> 
											<span class="label label-sm label-danger arrowed-right arrowed-in"><f:formatDate value="${paymentTriggers.next_paymentdate}" pattern="dd-MM-yyyy" /> </span>
											<c:if test="${flag}">
												<span class="label label-sm label-yellow "><a href="${contextPath}/admin/payment_define" style="font-weight: bold; ">PAY NOW</a> </span>
											</c:if>
											
										</div>
										</c:if>
										<br/>
										<table class="table table-striped table-bordered">
											<thead>
												<tr>
													<th class="center">#</th>
													<th>Payment Name</th>
													<th class="hidden-xs">Description</th>
													<th class="hidden-480">Created By</th>
													<th>Created Date</th>
													<th>Total</th>
												</tr>
											</thead>
							
											<tbody>
											<c:set var="totalSupportAmt" value="0" />
											<c:forEach items="${supportList}" var="payment" varStatus="status">
												<tr>
													<td class="center">${status.count}</td>
													<td>
														<span class="label label-sm label-success arrowed ">${payment.paymentName} </span>
													</td>
													<td class="hidden-xs">
														${payment.paymentDesc}
													</td>
													<td class="hidden-480"> ${payment.createdBy} </td>
													<td>${payment.createddate}</td>
													<td>&#8377; ${payment.price}</td>
												</tr>
												<c:set var="totalSupportAmt"  value="${totalSupportAmt + payment.price}"/>
											</c:forEach>
												
											</tbody>
										</table>
									</div>
									
									<div class="hr hr8 hr-double hr-dotted"></div>

									<div class="row">
										<div class="col-sm-8 pull-right">
											<h4 class="pull-right">
												Total Amt :
												<span class="label label-xlg label-black arrowed-right arrowed-in"><i class="ace-icon fa fa-inr"></i> <f:formatNumber type="number" maxFractionDigits="1" value="${supportTotalAmt}" /></span>
											</h4>
										</div>	
										<div class="col-sm-8 pull-right">	
											<h4 class="pull-right">
												Total Paid Amt :
												<span class="label label-xlg label-success arrowed-right arrowed-in"><i class="ace-icon fa fa-inr"></i> <f:formatNumber type="number" minFractionDigits="1"  value="${totalSupportAmt}" /></span>
											</h4>
										</div>	
										<div class="col-sm-8 pull-right">	
											<h4 class="pull-right">
												Balance Amt :
												<span class="label label-xlg label-danger arrowed-right arrowed-in"> <i class="ace-icon fa fa-inr"></i> <f:formatNumber type="number" maxFractionDigits="1" value="${supportTotalAmt - totalSupportAmt}" /></span>
											</h4>
										</div>
									</div>

									<div class="space-6"></div>
									<div class="well">
										Thank you for choosing Job Genix Company products. We believe you will be satisfied by our services.
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>

				<!-- PAGE CONTENT ENDS -->
			</div><!-- /.col -->
		</div><!-- /.row -->
	</div><!-- /.page-content -->
</div>

</jsp:body>
</defaultTemplate:adminDefaultDecorator>