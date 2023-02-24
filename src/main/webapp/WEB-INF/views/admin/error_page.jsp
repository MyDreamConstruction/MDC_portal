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
			<li class="active">Users</li>
		</ul>
	</div>
	
	<div class="page-content">
		<div class="row">
			<div class="col-xs-12">
				<div class="error-container">
					<div class="well">
						<h1 class="grey lighter smaller">
							<span class="blue bigger-125">
								<i class="ace-icon fa fa-random"></i>
								500
							</span>
							${errorMsg}
						</h1>

						<hr />
						<h3 class="lighter smaller">
							But we are working
							<i class="ace-icon fa fa-wrench icon-animated-wrench bigger-125"></i>
							on it!
						</h3>

						<div class="space"></div>

						<hr />
						<div class="space"></div>

						<div class="center">
							<a href="javascript:history.back()" class="btn btn-grey">
								<i class="ace-icon fa fa-arrow-left"></i>
								Go Back
							</a>

							<a href="${contextPath}/admin/dashboard" class="btn btn-primary">
								<i class="ace-icon fa fa-tachometer"></i>
								Dashboard
							</a>
						</div>
					</div>
				</div>

				<!-- /section:pages/error -->

				<!-- PAGE CONTENT ENDS -->
			</div><!-- /.col -->
		</div><!-- /.row -->
	   </div>
	</div>
</jsp:body>
</defaultTemplate:adminDefaultDecorator>