<%@ page   pageEncoding="ISO-8859-1" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="defaultTemplate" tagdir="/WEB-INF/tags" %>

<defaultTemplate:adminDefaultDecorator>
<jsp:attribute name="title">MDC</jsp:attribute>
<jsp:body>
<style type="text/css">
.infobox-small > .infobox-data{
	max-width: 101px;
}

</style>
<div class="main-content-inner">
	<!-- #section:basics/content.breadcrumbs -->
	<div class="breadcrumbs" id="breadcrumbs">
		<script type="text/javascript">
			try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
		</script>

		<ul class="breadcrumb">
			<li>
				<i class="ace-icon fa fa-home home-icon"></i>
				<a href="#">Home</a>
			</li>
			<li class="active">Dashboard</li>
		</ul>

	</div>

	<!-- /section:basics/content.breadcrumbs -->
	<div class="page-content">
		<!-- #section:settings.box -->
		

		<!-- /section:settings.box -->
		<div class="page-header">
			<h1>
				Dashboard Statistics
			</h1>
		</div><!-- /.page-header -->

		<div class="row">
			<div class="col-xs-12">

					<div class="row">

						<div class="col-sm-9 infobox-container">
						<%-- <div class="infobox infobox-green">
							<div class="infobox-icon">
								<i class="ace-icon fa fa-users"></i>
							</div>

							<div class="infobox-data">
								<span class="infobox-data-number">${paymentStatastics.usersCount}</span>
								<div class="infobox-content">Recent users</div>
							</div>

						</div> --%>

						<div class="infobox infobox-blue">
							<div class="infobox-icon">
								<i class="ace-icon fa fa-credit-card"></i>
							</div>

							<div class="infobox-data">
								<span class="infobox-data-number"><i class="ace-icon fa fa-inr"></i> <f:formatNumber value="${paymentStatastics.totalCRAmt}" type="number"/></span>
								<div class="infobox-content">Recent Paymt CR's</div>
							</div>

							<div class="stat stat-success">&nbsp;</div>
						</div>

						<div class="infobox infobox-red">
							<div class="infobox-icon">
								<i class="ace-icon fa fa-credit-card"></i>
							</div>

							<div class="infobox-data">
								<span class="infobox-data-number"><i class="ace-icon fa fa-inr"></i> <f:formatNumber value="${paymentStatastics.totalExpensesAmt}" type="number"/></span>
								<div class="infobox-content">Recent Paymt DR's</div>
							</div>
							<div class="stat stat-important">&nbsp;</div>
						</div>
						</div>
						<div class="space-6"></div>
					</div>
				</div>

				<div class="hr hr32 hr-dotted"></div>
			</div>
		</div>
		<div class="hr hr32 hr-dotted"></div>
		<div class="row">
			<div class="col-sm-6">
				<div class="widget-box transparent">
					<div class="widget-header widget-header-flat">
						<h4 class="widget-title lighter">
							<i class="ace-icon fa fa-star orange"></i>
							Credited Payment Details
						</h4>

						<div class="widget-toolbar">
							<a href="#" data-action="collapse">
								<i class="ace-icon fa fa-chevron-up"></i>
							</a>
						</div>
					</div>

					<div class="widget-body">
						<div class="widget-main no-padding">
							<table class="table table-bordered table-striped">
								<thead class="thin-border-bottom">
									<tr>
										<th>
											<i class="ace-icon fa fa-caret-right blue"></i>Name
										</th>
										<th class="hidden-480">
											<i class="ace-icon fa fa-caret-right blue"></i>Status
										</th>
										<th>
											<i class="ace-icon fa fa-caret-right blue"></i>Price (<i class="ace-icon fa fa-inr"></i>)
										</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td>Expected Training Amt</td>
										<td class="hidden-480">
											<span class="label label-success arrowed-right">TRAINING</span>
										</td>
										<td>
											<b class="green"><i class="ace-icon fa fa-inr"></i> <f:formatNumber value="${paymentStatastics.totalTrainingExpectedAmt}" type="number" minFractionDigits="1"/></b>
										</td>

										
									</tr>

									<tr>
										<td>Expected Support Amt</td>
										<td class="hidden-480">
											<span class="label label-info arrowed-right">SUPPORT</span>
										</td>
										<td>
											<b class="blue"><i class="ace-icon fa fa-inr"></i> <f:formatNumber value="${paymentStatastics.totalSupportExpectedAmt}" type="number" minFractionDigits="1"/></b>
										</td>
									</tr>

									<tr>
										<td>Total Amt</td>
										<td class="hidden-480">
											<span class="label label-danger arrowed-right">Total</span>
										</td>
										<td>
											<b class="black"><i class="ace-icon fa fa-inr"></i> <f:formatNumber value="${paymentStatastics.totalTrainingExpectedAmt + paymentStatastics.totalSupportExpectedAmt}" type="number" minFractionDigits="1"/> </b>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="widget-box transparent">
					<div class="widget-header widget-header-flat">
						<h4 class="widget-title lighter">
							<i class="ace-icon fa fa-star green"></i>
							Debited Payment Details
						</h4>

						<div class="widget-toolbar">
							<a href="#" data-action="collapse">
								<i class="ace-icon fa fa-chevron-up"></i>
							</a>
						</div>
					</div>

					<div class="widget-body">
						<div class="widget-main no-padding">
							<table class="table table-bordered table-striped">
								<thead class="thin-border-bottom">
									<tr>
										<th>
											<i class="ace-icon fa fa-caret-right blue"></i>Name
										</th>
										<th class="hidden-480">
											<i class="ace-icon fa fa-caret-right blue"></i>Status
										</th>
										<th>
											<i class="ace-icon fa fa-caret-right blue"></i>Price (<i class="ace-icon fa fa-inr"></i>)
										</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td>Received Training Amt</td>
										<td class="hidden-480">
											<span class="label label-success arrowed-right">TRAINING</span>
										</td>
										<td>
											<b class="green"><i class="ace-icon fa fa-inr"></i> <f:formatNumber value="${paymentStatastics.totalTrainingReceivedAmt}" type="number" minFractionDigits="1"/></b>
										</td>

										
									</tr>

									<tr>
										<td>Received Support Amt</td>
										<td class="hidden-480">
											<span class="label label-info arrowed-right">SUPPORT</span>
										</td>
										<td>
											<b class="blue"><i class="ace-icon fa fa-inr"></i> <f:formatNumber value="${paymentStatastics.totalSupportReceivedAmt}" type="number" minFractionDigits="1"/></b>
										</td>
									</tr>

									<tr>
										<td>Total Amt</td>
										<td class="hidden-480">
											<span class="label label-danger arrowed-right">Total</span>
										</td>
										<td>
											<b class="black"><i class="ace-icon fa fa-inr"></i> <f:formatNumber value="${paymentStatastics.totalTrainingReceivedAmt + paymentStatastics.totalSupportReceivedAmt}" type="number" minFractionDigits="1"/></b>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<%-- <div class="col-sm-4">
				<div class="widget-box transparent">
					<div class="widget-header widget-header-flat">
						<h4 class="widget-title lighter">
							<i class="ace-icon fa fa-star red"></i>
							Pending Payment Details
						</h4>

						<div class="widget-toolbar">
							<a href="#" data-action="collapse">
								<i class="ace-icon fa fa-chevron-up"></i>
							</a>
						</div>
					</div>

					<div class="widget-body">
						<div class="widget-main no-padding">
							<table class="table table-bordered table-striped">
								<thead class="thin-border-bottom">
									<tr>
										<th>
											<i class="ace-icon fa fa-caret-right blue"></i>Name
										</th>
										<th class="hidden-480">
											<i class="ace-icon fa fa-caret-right blue"></i>Status
										</th>
										<th>
											<i class="ace-icon fa fa-caret-right blue"></i>Price (<i class="ace-icon fa fa-inr"></i>)
										</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td>Pending Training Amt</td>
										<td class="hidden-480">
											<span class="label label-success arrowed-right">TRAINING</span>
										</td>
										<td>
											<b class="green"><i class="ace-icon fa fa-inr"></i> <f:formatNumber value="${paymentStatastics.totalTrainingExpectedAmt - paymentStatastics.totalTrainingReceivedAmt}" type="number" minFractionDigits="1"/></b>
										</td>

										
									</tr>

									<tr>
										<td>Pending Support Amt</td>
										<td class="hidden-480">
											<span class="label label-info arrowed-right">SUPPORT</span>
										</td>
										<td>
											<b class="blue"><i class="ace-icon fa fa-inr"></i> <f:formatNumber value="${paymentStatastics.totalSupportExpectedAmt - paymentStatastics.totalSupportReceivedAmt}" type="number" minFractionDigits="1"/> </b>
										</td>
									</tr>

									<tr>
										<td>Total Amt</td>
										<td class="hidden-480">
											<span class="label label-danger arrowed-right">Total</span>
										</td>
										<td>
											<b class="black"><i class="ace-icon fa fa-inr"></i> <f:formatNumber value="${(paymentStatastics.totalTrainingExpectedAmt + paymentStatastics.totalSupportExpectedAmt) - (paymentStatastics.totalTrainingReceivedAmt + paymentStatastics.totalSupportReceivedAmt)}" type="number" minFractionDigits="1"/></b>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div> --%>
		</div>
		<hr/>
		<div class="row">
			<div class="col-sm-6">
				<div class="infobox infobox-purple infobox-small infobox-dark">
					<!-- #section:pages/dashboard.infobox.sparkline -->
					<div class="infobox-icon">
						<i class="ace-icon fa fa-money"></i>
					</div>

					<div class="infobox-data">
						<div class="infobox-content">Received</div>
						<div class="infobox-content"><i class="ace-icon fa fa-inr"></i> <f:formatNumber value="${paymentStatastics.totalCRAmt}" type="number" minFractionDigits="1"/></div>
					</div>
				</div>

				<div class="infobox infobox-blue infobox-small infobox-dark">
					<div class="infobox-icon">
						<i class="ace-icon fa fa-money"></i>
					</div>

					<div class="infobox-data">
						<div class="infobox-content">Expenses</div>
						<div class="infobox-content"><i class="ace-icon fa fa-inr"></i> <f:formatNumber value="${paymentStatastics.totalExpensesAmt}" type="number" minFractionDigits="1"/> </div>
					</div> 
				</div>
				
				<div class="infobox infobox-black infobox-small infobox-dark">
					<div class="infobox-icon">
						<i class="ace-icon fa fa-money"></i>
					</div>

					<div class="infobox-data">
						<div class="infobox-content">Total</div>
						<div class="infobox-content"><i class="ace-icon fa fa-inr"></i> <f:formatNumber value="${paymentStatastics.totalCRAmt - paymentStatastics.totalExpensesAmt}" type="number" minFractionDigits="1"/></div>
					</div>
				</div>
				
				
			</div>
			
			<div class="col-sm-6">
			
				<div class="infobox infobox-blue infobox-small infobox-dark">
					<div class="infobox-icon">
						<i class="ace-icon fa fa-money"></i>
					</div>

					<div class="infobox-data">
						<div class="infobox-content">Expenses</div>
						<div class="infobox-content"><i class="ace-icon fa fa-inr"></i> <f:formatNumber value="${paymentStatastics.totalExpensesAmt}" type="number" minFractionDigits="1"/> </div>
					</div> 
				</div>
				<div class="infobox infobox-green infobox-small infobox-dark">
					<div class="infobox-icon">
						<i class="ace-icon fa fa-money"></i>
					</div>

					<div class="infobox-data">
						<div class="infobox-content">Cleared</div>
						<div class="infobox-content"><i class="ace-icon fa fa-inr"></i> <f:formatNumber value="${paymentStatastics.clearedDRAmt}" type="number" minFractionDigits="1"/> </div>
					</div> 
				</div>
				
				<div class="infobox infobox-pink infobox-small infobox-dark">
					<div class="infobox-icon">
						<i class="ace-icon fa fa-money"></i>
					</div>

					<div class="infobox-data">
						<div class="infobox-content">Not Cleared</div>
						<div class="infobox-content"><i class="ace-icon fa fa-inr"></i> <f:formatNumber value="${paymentStatastics.totalExpensesAmt - paymentStatastics.clearedDRAmt}" type="number" minFractionDigits="1"/> </div>
					</div> 
				</div>
			</div>
		</div>	
			
	</div>

</jsp:body>
</defaultTemplate:adminDefaultDecorator>