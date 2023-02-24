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

<style type="text/css">

.profile-info-name{
	width: 138px;
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
					<sec:authorize access="hasRole('ADMIN')">
						<a href="${contextPath}/admin/dashboard">Home</a>
					</sec:authorize>
					<sec:authorize access="hasRole('USER')">
						<a href="${contextPath}/user/dashboard">Home</a>
					</sec:authorize>
				</li>
				<li class="active">User Profile</li>
			</ul>
		</div>

		<div class="page-content">
			<div class="page-header">
				<h1>
					User Profile
					<small>
						<i class="ace-icon fa fa-angle-double-right"></i>
						
					</small>
				</h1>
			</div>

		<div>
			<div id="user-profile-2" class="user-profile">
				<div class="tabbable">
					<ul class="nav nav-tabs padding-18">
						<li class="active">
							<a data-toggle="tab" href="#home">
								<i class="green ace-icon fa fa-user bigger-120"></i>
								Profile
							</a>
						</li>
					</ul>
					<div class="space-6"></div>
					<sec:authorize access="hasRole('ADMIN')">
						<div align="right">
							<a href="${contextPath}/admin/user_invoice/${user.userId}" class="btn btn-purple" style="border-radius: 7px;"> Invoice </a>
							<a href="${contextPath}/admin/uploadfiles/${user.userId}" class="btn btn-warning" style="border-radius: 7px;"> Upload Files </a>
						</div>
					</sec:authorize>	
					<div class="space-6"></div>
					<div class="tab-content no-border padding-24">
						<div id="home" class="tab-pane in active">
							<div class="row">
								<div class="col-xs-12 col-sm-3 center">
									<span class="profile-picture">
									  <c:choose>
									  	<c:when test="${user.gender eq 'F' }">
									  		<img class="editable img-responsive" alt="${user.firstname} ${user.lastname}" id="avatar2" src="${contextPath}/assets/avatars/women1.png" />
									  	</c:when>
									  	<c:otherwise>
									  		<img class="editable img-responsive" alt="${user.firstname} ${user.lastname}" id="avatar2" src="${contextPath}/assets/avatars/profile-pic.jpg" />
									  	</c:otherwise>
									  </c:choose>
										
									</span>

									<div class="space space-4"></div>
								</div>

								<div class="col-xs-12 col-sm-9">
									<h4 class="blue">
										<span class="middle">${user.firstname} &nbsp;${user.lastname}</span>

										<span class="label label-purple arrowed-in-right">
											<i class="ace-icon fa fa-circle smaller-80 align-middle"></i>
											online
										</span>
									</h4>

									<div class="profile-user-info">
										<div class="profile-info-row">
											<div class="profile-info-name"> Email </div>

											<div class="profile-info-value">
												<span>${user.email}</span>
											</div>
										</div>
										<div class="profile-info-row">
											<div class="profile-info-name"> Gender </div>

											<div class="profile-info-value">
												<span>${user.gender}</span>
											</div>
										</div>
										<div class="profile-info-row">
											<div class="profile-info-name"> Mobile </div>

											<div class="profile-info-value">
												<span>${user.mobileNo}</span>
											</div>
										</div>

										<div class="profile-info-row">
											<div class="profile-info-name"> Location </div>

											<div class="profile-info-value">
												<i class="fa fa-map-marker light-orange bigger-110"></i>
												<span>${user.city}</span>
												<span>${user.state}</span>
												<span>${user.country}</span>
											</div>
										</div>

										<div class="profile-info-row">
											<div class="profile-info-name"> DOB </div>

											<div class="profile-info-value">
												<span>${user.dateofbirth}</span>
											</div>
										</div>

										<div class="profile-info-row">
											<div class="profile-info-name"> Joined </div>

											<div class="profile-info-value">
												<span>${user.createddate}</span>
											</div>
										</div>

										<div class="profile-info-row">
											<div class="profile-info-name"> Present Address </div>

											<div class="profile-info-value">
												<span>${user.presentAddress}</span>
											</div>
										</div>
										<div class="profile-info-row">
											<div class="profile-info-name"> Permanent Address </div>

											<div class="profile-info-value">
												<span>${user.permanentAddress}</span>
											</div>
										</div>
										<div class="profile-info-row">
											<div class="profile-info-name"> Alternate MobileNo </div>

											<div class="profile-info-value">
												<span>${user.alternateMobileNo}</span>
											</div>
										</div>
										<div class="profile-info-row">
											<div class="profile-info-name"> Experience </div>

											<div class="profile-info-value">
												<span>${user.experience} Yrs</span>
											</div>
										</div>
										<div class="profile-info-row">
											<div class="profile-info-name"> Current Status </div>

											<div class="profile-info-value">
												<c:choose>
													<c:when test="${user.userCurrentStatus eq 'PROXY'}">
														<span class="label label-lg label-grey arrowed arrowed-right">${user.userCurrentStatus} </span>
													</c:when>
													<c:otherwise>
														<span class="label label-lg label-pink arrowed arrowed-right">${user.userCurrentStatus} </span>
													</c:otherwise>
												</c:choose>
											</div>
										</div>
										<div class="profile-info-row">
											<div class="profile-info-name"> Job Joining Date </div>

											<div class="profile-info-value">
												<span><f:formatDate value="${user.jobJoiningDate}" pattern="yyyy-MM-dd" /></span>
											</div>
										</div>
									</div>

									<div class="hr hr-8 dotted"></div>

								</div>
							</div>

							<div class="space-20"></div>

							<div class="row">
								<div class="col-xs-12 col-sm-6">
									<div class="widget-box transparent">
										<div class="widget-header widget-header-small">
											<h4 class="widget-title smaller">
												<i class="ace-icon fa fa-check-square-o bigger-110"></i>
												<span class="label label-xlg label-primary arrowed-right">Little About Me</span>
											</h4>
										</div>

										<div class="widget-body">
											<div class="widget-main">
												<p>
													${user.comment}
												</p>
												
											</div>
										</div>
									</div>
								</div>

								<div class="col-xs-12 col-sm-6">
									<div class="widget-box transparent">
										<div class="widget-header widget-header-small header-color-blue2">
											<h4 class="widget-title smaller">
												<i class="ace-icon fa fa-lightbulb-o bigger-120"></i>
												<span class="label label-xlg label-primary arrowed-right">My Skills</span>
											</h4>
										</div>

										<div class="widget-body">
											<div class="widget-main padding-16">
												<div class="clearfix">
												<div class="grid10 center">
													<div class="space-2"></div>
													<c:forEach items="${skills}" var="skill">
														<span class="label label-lg label-purple label-white middle">${skill}</span>
													</c:forEach>
													<div class="space-2"></div>
													</div>	
												</div>

												<div class="hr hr-16"></div>
												
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="space-20"></div>
							<div class="row">
								<div class="col-xs-12 col-sm-6">
									<div class="widget-box transparent">
										<div class="widget-header widget-header-small">
											<h4 class="widget-title smaller">
												<i class="ace-icon fa  fa-folder-o bigger-110"></i>
												<span class="label label-xlg label-primary arrowed-right">Documents: </span>
											</h4>
										</div>

										<div class="widget-body">
											<div id="pictures" class="tab-pane active">
												<ul class="ace-thumbnails">
													<li><img alt="" src="${contextPath}/image/pdf_icon.png" width="">
														<object data="${file.data}" type="application/pdf" width="300" height="200">
															<%-- <a href="${file.fileName}">${file.fileName}</a> --%>
														</object>
														<span class="label label-lg label-purple label-white middle">Offer Letter</span>
													</li>
													
													</ul>
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
	</div>
</div>
	
<script src="//mozilla.github.io/pdf.js/build/pdf.js"></script>
	
<script type="text/javascript">
	
	$('#profile-feed-1').ace_scroll({
		height: '250px',
		mouseWheelLock: true,
		alwaysVisible : true
	});


	// If absolute URL from the remote server is provided, configure the CORS
	// header on that server.
	var url = 'https://raw.githubusercontent.com/mozilla/pdf.js/ba2edeae/examples/learning/helloworld.pdf';

	// Loaded via <script> tag, create shortcut to access PDF.js exports.
	var pdfjsLib = window['pdfjs-dist/build/pdf'];

	// The workerSrc property shall be specified.
	pdfjsLib.GlobalWorkerOptions.workerSrc = '//mozilla.github.io/pdf.js/build/pdf.worker.js';

	// Asynchronous download of PDF
	var loadingTask = pdfjsLib.getDocument(url);
	loadingTask.promise.then(function(pdf) {
	  console.log('PDF loaded');
	  
	  // Fetch the first page
	  var pageNumber = 1;
	  pdf.getPage(pageNumber).then(function(page) {
	    console.log('Page loaded');
	    
	    var scale = 1.5;
	    var viewport = page.getViewport({scale: scale});

	    // Prepare canvas using PDF page dimensions
	    var canvas = document.getElementById('the-canvas');
	    var context = canvas.getContext('2d');
	    canvas.height = viewport.height;
	    canvas.width = viewport.width;

	    // Render PDF page into canvas context
	    var renderContext = {
	      canvasContext: context,
	      viewport: viewport
	    };
	    var renderTask = page.render(renderContext);
	    renderTask.promise.then(function () {
	      console.log('Page rendered');
	    });
	  });
	}, function (reason) {
	  // PDF loading error
	  console.error(reason);
	});
</script>	



</jsp:body>
</defaultTemplate:adminDefaultDecorator>