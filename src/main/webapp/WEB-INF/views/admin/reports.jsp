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
			<div class="col-xs-12">
			
				<div class="widget-toolbar no-border">
					<div class="inline dropdown-hover">
						<button class="btn btn-minier btn-primary" style="width: 100.22222px;height: 32.22222px;">
							This Week
							<i class="ace-icon fa fa-angle-down icon-on-right bigger-110"></i>
						</button>
	
						<ul class="dropdown-menu dropdown-menu-right dropdown-125 dropdown-lighter dropdown-close dropdown-caret">
							<li class="active">
								<a href="${contextPath}/admin/trx/reports?payerName=${tnxSearch.payerName}&dt_type=cwk" class="blue">
									<i class="ace-icon fa fa-caret-right bigger-110">&nbsp;</i>
									This Week
								</a>
							</li>
							<li>
								<a href="${contextPath}/admin/trx/reports?payerName=${tnxSearch.payerName}&dt_type=lwk">
									<i class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
									Last Week
								</a>
							</li>
							<li>
								<a href="${contextPath}/admin/trx/reports?payerName=${tnxSearch.payerName}&dt_type=cm">
									<i class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
									This Month
								</a>
							</li>
							<li>
								<a href="${contextPath}/admin/trx/reports?payerName=${tnxSearch.payerName}&dt_type=lm">
									<i class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
									Last Month
								</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12">
						<h3 class="header smaller lighter blue">Transactions List</h3>
						
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
								<c:forEach items="${payments}" var="payment" varStatus="status">
									<tr>
										<td>${status.count}</td>
										<td>
											${payment.payerName}
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
						</div>
					</div>
				</div>
			
		<div class="row">
			<div class="space-6"></div>	
				<div class="col-sm-6">
					<div class="widget-box">
						<div class="widget-header widget-header-flat widget-header-small">
							<h5 class="widget-title">
								<i class="ace-icon fa fa-signal"></i>
								Statistics Report
							</h5>
							
						</div>
	
						<div class="widget-body">
							<div class="widget-main">
								<div id="piechart-placeholder"></div>
	
								<div class="hr hr8 hr-double"></div>
	
								<div class="clearfix">
									<!-- #section:custom/extra.grid -->
									<div class="grid3">
										<span class="grey">
											<span class="label label-success arrowed-right"> CR </span>
										</span>
										<h4 class="bigger pull-right"><i class="ace-icon fa fa-inr"></i> <f:formatNumber value="${totalCR}" type="number"/></h4>
									</div>
	
									<div class="grid3">
										<span class="grey">
											<span class="label label-danger arrowed-right"> DR </span>
										</span>
										<h4 class="bigger pull-right"><i class="ace-icon fa fa-inr"></i> <f:formatNumber value="${totalDR}" type="number"/></h4>
									</div>
	
									<!-- <div class="grid3">
										<span class="grey">
											<i class="ace-icon fa fa-pinterest-square fa-2x red"></i>
											&nbsp; pins
										</span>
										<h4 class="bigger pull-right">1,050</h4>
									</div> -->
	
								</div>
							</div>
						</div>
					</div>
				</div>
			 </div>
		
			</div>
		</div>
	 </div>
	</div>
	<script type="text/javascript">
			window.jQuery || document.write("<script src='${contextPath}/assets/js/jquery.js'>"+"<"+"/script>");
		</script>
	<script type="text/javascript">
			jQuery(function($) {
				
			  var perCR = ${percentageCR};
			  var perDR = ${percentageDR};
			  var placeholder = $('#piechart-placeholder').css({'width':'90%' , 'min-height':'150px'});
			  var data = [
				{ label: "Recived",  data: perCR, color: "#68BC31"},
				{ label: "Debited",  data: perDR, color: "#DA5430"},
			  ]
			  function drawPieChart(placeholder, data, position) {
			 	  $.plot(placeholder, data, {
					series: {
						pie: {
							show: true,
							tilt:0.8,
							highlight: {
								opacity: 0.25
							},
							stroke: {
								color: '#fff',
								width: 2
							},
							startAngle: 2
						}
					},
					legend: {
						show: true,
						position: position || "ne", 
						labelBoxBorderColor: null,
						margin:[-30,15]
					}
					,
					grid: {
						hoverable: true,
						clickable: true
					}
				 })
			 }
			 drawPieChart(placeholder, data);
			
			 /**
			 we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
			 so that's not needed actually.
			 */
			 placeholder.data('chart', data);
			 placeholder.data('draw', drawPieChart);
			
			
			  //pie chart tooltip example
			  var $tooltip = $("<div class='tooltip top in'><div class='tooltip-inner'></div></div>").hide().appendTo('body');
			  var previousPoint = null;
			
			  placeholder.on('plothover', function (event, pos, item) {
				if(item) {
					if (previousPoint != item.seriesIndex) {
						previousPoint = item.seriesIndex;
						var tip = item.series['label'] + " : " + item.series['percent']+'%';
						$tooltip.show().children(0).text(tip);
					}
					$tooltip.css({top:pos.pageY + 10, left:pos.pageX + 10});
				} else {
					$tooltip.hide();
					previousPoint = null;
				}
				
			 });
			
				/////////////////////////////////////
				$(document).one('ajaxloadstart.page', function(e) {
					$tooltip.remove();
				});
				
			
			})
		</script>
		
</jsp:body>
</defaultTemplate:adminDefaultDecorator>