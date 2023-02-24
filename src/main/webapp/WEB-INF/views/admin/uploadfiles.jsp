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
<style type="text/css">
.row {
    margin-left: 0px; 
}
</style>
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
			<li class="active">Upload User Files</li>
		</ul>
		
	</div>
	<div class="page-header">
		<h1>
			Upload User Files
		</h1>
	</div>
		<div class="row">
			<div class="col-sm-6">
				<div class="widget-box">
					<div class="widget-header">
						<h4 class="widget-title">Upload File </h4>
						<div class="widget-toolbar">
							<a href="#" data-action="collapse">
								<i class="ace-icon fa fa-chevron-up"></i>
							</a>

							<a href="#" data-action="close">
								<i class="ace-icon fa fa-times"></i>
							</a>
						</div>
					</div>

					<div class="widget-body">
						<div class="widget-main">
                         <form class="form-horizontal" action="${contextPath}/admin/upload" method="post" enctype="multipart/form-data">
	                         <input type="hidden"  name="userid" value="${userid}" >
								<div class="form-group">
									<div class="col-xs-12">
										<input type="file" name="document"  id="id-input-file-3" />
									</div>
								</div>
								<div class="clearfix form-actions">
									<div class="col-md-offset-3 col-md-9">
										<button class="btn btn-info" type="submit">
											<i class="ace-icon fa fa-check bigger-110"></i>
											Save
										</button>
			
										&nbsp; &nbsp;
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
	
</jsp:body>
</defaultTemplate:adminDefaultDecorator>	