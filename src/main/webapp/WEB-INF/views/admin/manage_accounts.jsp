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
			<li class="active">Accounts</li>
		</ul>
	</div>
	
	<div class="page-content">
	
		<div class="row">
			<div class="col-sm-2"></div>
				<div class="col-sm-8">
					<div class="col-xs-12">
						<div class="widget-box">
							<div class="widget-header widget-header-blue widget-header-flat">
								<h4 class="widget-title lighter">Account Name Create</h4>
							</div>
							<div class="widget-body">
								<div class="widget-main">
								 <form class="form-horizontal" action="${contextPath}/admin/manage_accounts" method="post" >
									
									<div class="form-group">
										<label class="control-label col-xs-12 col-sm-4 no-padding-right">UserName / CompanyName :</label>
	
										<div class="col-xs-12 col-sm-8">
											<div class="clearfix">
												<input type="text" name="name" id="name" class="col-xs-12 col-sm-8" required="required" />
											</div>
										</div>
										<c:if test="${success ne null}">
											<div class="col-xs-12 col-sm-8" align="right">
												<span style="color: red;font-weight: bold;">${accoutName} : </span> ${success}
											</div>	
										</c:if>
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
		  
		<div class="row">
			<div class="col-xs-12">
	
				<div class="row">
					<div class="col-xs-12">
						<h3 class="header smaller lighter blue">Manage Accounts</h3>
	
						<div class="clearfix">
							<div class="pull-right tableTools-container"></div>
						</div>
						<div class="table-header">
							Results for "Latest Registered Accounts"
						</div>
	
						<div>
							<table id="" class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th>S.No</th>
										<th>Photo</th>
										<th>FirstName</th>
										<th>Current Status</th>
										<th>Actions</th>
									</tr>
								</thead>
	
								<tbody>
								<c:forEach items="${accounts}" var="account" varStatus="status">
									<tr>
										<td>${status.count}</td>
										<td>
											<img class="pull-left" alt="Susan Smith's avatar" src="${contextPath}/assets/avatars/avatar5.png" style="width: 24px;">
										</td>
										<td>${account.name}</td>
										
										<td>
											<c:choose>
												<c:when test="${account.status}">
													<span class="label label-lg label-grey arrowed arrowed-right">Active </span>
												</c:when>
												<c:otherwise>
													<span class="label label-lg label-red arrowed arrowed-right">Inactive </span>
												</c:otherwise>
											</c:choose>
										</td>
										<td>
											<div class="hidden-sm hidden-xs action-buttons">
												
												<a class="green" href="${contextPath}/admin/edit/${account.id}">
													<i class="ace-icon fa fa-pencil bigger-130"></i>
												</a>

												<a class="red" href="${contextPath}/admin/delete/${account.id}">
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
	   </div>
	</div>
</jsp:body>
</defaultTemplate:adminDefaultDecorator>