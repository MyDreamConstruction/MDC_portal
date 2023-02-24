<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html data-ng-app="app" lang="en" class="ng-scope">
<head>
	<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width" />
    <link rel="icon" type="image/png" href="${contextPath}/images/favicon.png" />
    
	<title>Software Development Company | IndiGo UK</title>
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600|Roboto:400,500" rel="stylesheet">
	<link href="${contextPath}/css/styles.css"  rel="stylesheet" type="text/css" />
	<%-- <link href="${contextPath}/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/> --%>
</head>
<body>

<div class="navbar navbar-default navbar-fixed-top hidden-xs hidden-sm pc-only policy-navbar">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">
                <img src="https://codefirst2017.azureedge.net//Content/ImagesSVG/logo.svg" alt="CodeFirst Logo" />
            </a>
        </div>

        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="bespoke-software "><a href="/bespoke-software/">Bespoke Software</a></li>
                <li class="hire-developers "><a href="/hire-developers/">Hire Developers</a></li>
                <li class="software-maintenance "><a href="/software-maintenance/">Software Maintenance</a></li>
                <li class="about-us "><a href="/about-codefirst/">About Us</a></li>
                <li class="lets-talk "><a class="btn-one" href="/contact-codefirst/">Let's talk</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="navbar navbar-default visible-xs visible-sm policy-navbar">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">
                <img src="https://codefirst2017.azureedge.net//Content/ImagesSVG/logo.svg" alt="CodeFirst Logo" />
            </a>
        </div>
    </div>
</div>

<div class="side-menu-basic">
    <div class="side-menu-content">
        <div>
            <a class="home " href="/">Home</a>
        </div>
        <div>
            <a class="bespoke-software " href="/bespoke-software/">Bespoke Software</a>
        </div>
        <div>
            <a class="hire-developers " href="/hire-developers/">Hire Developers</a>
        </div>
        <div>
            <a class="software-maintenance " href="/software-maintenance/">Software Maintenance</a>
        </div>
        <div class="about-us-div">
            <a class="about-us " href="/about-codefirst/">About Us</a>
        </div>
        <div>
            <a class="lets-talk btn-one " href="/contact-codefirst/">Let's talk</a>
        </div>
    </div>
    <img class="side-menu-logo" src="https://codefirst2017.azureedge.net//Content/ImagesSVG/logo.svg" alt="CodeFirst Logo" />
    <span class="side-menu-close"><i class="icon icon-dialog-close normal"></i><i class="icon icon-header-close hover"></i></span>
</div>

    <div class="wrapper">
        



<div class="not-found">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">
                <img src="https://codefirst2017.azureedge.net//Content/Images/404.png" class="img-responsive" alt="Page not found" />
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="title">
                    PAGE NOT FOUND
                </div>
                <div class="sub-title">
                    Page address is wrong or page has moved.
                </div>

            </div>
            <div class="col-md-4 col-md-offset-4 col-sm-12">
                <div class="back-button">
                    <a class="btn btn-back btn-block" href="/">BACK TO HOME</a>
                </div>
            </div>
        </div>
    </div>
</div>

    </div>
    

    <div class="container-fluid">
        <div class="footer1-wrapper">
            <div class="container">
                <div class="footer1">
                    <div class="row pc-only">
                        <div class="col-xs-6">
                            <div class="footer1-title">
                                Hear it from <br />our clients
                            </div>
                            <div class="line"></div>
                            <div class="dots">
                                <div class="dot dot1 selected" data-testimonial-index="1"></div>
                                <div class="dot dot2" data-testimonial-index="2"></div>
                                <div class="dot dot3" data-testimonial-index="3"></div>
                                <div class="dot dot4" data-testimonial-index="4"></div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="testimonial selected" data-testimonial-index="1">
                                <div class="testimonial-text">
                                    “Improved performance, resilience and reduced costs... What a way to start, a what is now, a long standing relationship!”
                                </div>
                                <div class="testimonial-author">
                                    Peter Williams
                                </div>
                                <div class="testimonial-job">
                                    Head of Supply Chain Services at Logtek
                                </div>
                            </div>
                            <div class="testimonial" data-testimonial-index="2">
                                <div class="testimonial-text">
                                    “We tried several companies when we started this project and CodeFirst came out way ahead of the others in terms of quality and speed. We are extremely happy.”
                                </div>
                                <div class="testimonial-author">
                                    Dean Flanders
                                </div>
                                <div class="testimonial-job">
                                    Head of Informatics at FMI
                                </div>
                            </div>
                            <div class="testimonial" data-testimonial-index="3">
                                <div class="testimonial-text">
                                    “We have found CodeFirst extremely professional.Their SQL Server technical experts are of the highest standard and I would definitely recommend them.”
                                </div>
                                <div class="testimonial-author">
                                    Michael Hill
                                </div>
                                <div class="testimonial-job">
                                    IT Director at Payback Loyalty
                                </div>
                            </div>
                            <div class="testimonial" data-testimonial-index="4">
                                <div class="testimonial-text">
                                    “CodeFirst is the best software company we have dealt with so far. Speed is great on the system delivered. A nice product to use, stable and scalable.”
                                </div>
                                <div class="testimonial-author">
                                    Sean Fennell
                                </div>
                                <div class="testimonial-job">
                                    CEO at Initiafy
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row not-pc-only">
                        <div class="col-xs-12">
                            <div class="footer1-title">
                                Hear it from <br />our clients
                            </div>
                            <div class="line"></div>
                            <div class="testimonial selected" data-testimonial-index="1">
                                <div class="testimonial-text">
                                    “Improved performance, resilience and reduced costs... What a way to start, a what is now, a long standing relationship!”
                                </div>
                                <div class="testimonial-author">
                                    Peter Williams
                                </div>
                                <div class="testimonial-job">
                                    Head of Supply Chain Services at Logtek
                                </div>
                            </div>
                            <div class="testimonial" data-testimonial-index="2">
                                <div class="testimonial-text">
                                    “We tried several companies when we started this project and CodeFirst came out way ahead of the others in terms of quality and speed. We are extremely happy.”
                                </div>
                                <div class="testimonial-author">
                                    Dean Flanders
                                </div>
                                <div class="testimonial-job">
                                    Head of Informatics at FMI
                                </div>
                            </div>
                            <div class="testimonial" data-testimonial-index="3">
                                <div class="testimonial-text">
                                    “We have found CodeFirst extremely professional.Their SQL Server technical experts are of the highest standard and I would definitely recommend them.”
                                </div>
                                <div class="testimonial-author">
                                    Michael Hill
                                </div>
                                <div class="testimonial-job">
                                    IT Director at Payback Loyalty
                                </div>
                            </div>
                            <div class="testimonial" data-testimonial-index="4">
                                <div class="testimonial-text">
                                    “CodeFirst is the best software company we have dealt with so far. Speed is great on the system delivered. A nice product to use, stable and scalable.”
                                </div>
                                <div class="testimonial-author">
                                    Sean Fennell
                                </div>
                                <div class="testimonial-job">
                                    CEO at Initiafy
                                </div>
                            </div>
                            <div class="dots">
                                <div class="dot dot1 selected" data-testimonial-index="1"></div>
                                <div class="dot dot2" data-testimonial-index="2"></div>
                                <div class="dot dot3" data-testimonial-index="3"></div>
                                <div class="dot dot4" data-testimonial-index="4"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="footer2-wrapper">
            <div class="container">
                <div class="footer2">
                    <div class="row not-mobile-only">
                        <div class="flex-wrapper">
                            <div class="col-sm-8 col-xs-8 col-md-9">
                                <div class="footer2-title">
                                    
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-4 col-md-3 btn-col">
                                <button class="btn btn-two" data-toggle="modal" data-target="#contactDialog">Quick Start</button>
                            </div>
                        </div>
                    </div>
                    <div class="row mobile-only">
                        <div class="col-xs-12">
                            <div class="footer2-title">
                                
                            </div>
                        </div>
                        <div class="col-xs-12">
                            <button class="btn btn-two" data-toggle="modal" data-target="#contactDialog">Quick Start</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<div class="container-fluid">
    <div class="footer3-wrapper">
        <div class="container">
            <div class="footer3">
                <div class="row pc-only">
                    <div class="col-lg-3 col-md-3">
                        <div class="footer3-logo">
                            <img src="https://codefirst2017.azureedge.net//Content/ImagesSVG/logo.svg" alt="CodeFirst Logo" />
                        </div>
                        <div class="footer3-social">
                            <a target="_blank" href="https://www.facebook.com/codefirst"><i class="icon icon-footer-facebook normal"></i><i class="icon icon-footer-facebook-hover hover"></i></a>
                            <a target="_blank" href="https://twitter.com/code_first"><i class="icon icon-footer-twitter normal"></i><i class="icon icon-footer-twitter-hover hover"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 company-col">
                        <div class="footer3-title">Company</div>
                        <a href="/bespoke-software/" class="footer3-link">Bespoke Software</a>
                        <a href="/hire-developers/" class="footer3-link">Hire Developers</a>
                        <a href="/software-maintenance/" class="footer3-link">Software Maintenance</a>
                        <a href="/about-codefirst/" class="footer3-link">About Us</a>
                        <a href="/contact-codefirst/" class="footer3-link">Contact</a>
                    </div>
                    <div class="col-xs-2">
                        <div class="footer3-title">Contact</div>
                        <div class="footer3-address">
                            Exeter<br />
                            <span class="business-number">01392 927 225</span>
                        </div>
                        <div class="footer3-address">
                            London<br />
                            <span class="business-number">0207 043 2136</span>
                        </div>
                        <div class="footer3-address">
                            Birmingham<br />
                            <span class="business-number">0121 663 1862</span>
                        </div>
                        <a class="footer3-email" href="mailto:contact@codefirst.net">contact@codefirst.net</a>
                    </div>
                    <div class="col-xs-4">
                        <div class="footer3-title">Partners</div>
                        <div class="footer3-partners-img">
                            <img src="https://codefirst2017.azureedge.net//Content/Images/partners.png?v=1.0.0.20108" class="img-responsive" alt="Partners" width="291" height="100" />
                        </div>
                    </div>
                </div>

                <div class="row tablet-only">
                    <div class="col-xs-12">
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="footer3-logo">
                                    <img src="https://codefirst2017.azureedge.net//Content/ImagesSVG/logo.svg" alt="CodeFirst Logo" />
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="footer3-social">
                                    <a target="_blank" href="https://www.facebook.com/codefirst"><i class="icon icon-footer-facebook normal"></i><i class="icon icon-footer-facebook-hover hover"></i></a>
                                    <a target="_blank" href="https://twitter.com/code_first"><i class="icon icon-footer-twitter normal"></i><i class="icon icon-footer-twitter-hover hover"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-3">
                                <div class="footer3-title">Company</div>
                                <a href="/bespoke-software/" class="footer3-link">Bespoke Software</a>
                                <a href="/hire-developers/" class="footer3-link">Hire Developers</a>
                                <a href="/software-maintenance/" class="footer3-link">Software Maintenance</a>
                                <a href="/about-codefirst/" class="footer3-link">About Us</a>
                                <a href="/contact-codefirst/" class="footer3-link">Contact</a>
                            </div>
                            <div class="col-xs-3">
                                <div class="footer3-title">Contact</div>
                                <div class="footer3-address">
                                    Exeter<br />
                                    <span class="business-number">01392 927 225</span>
                                </div>
                                <div class="footer3-address">
                                    London<br />
                                    <span class="business-number">0207 043 2136</span>
                                </div>
                                <div class="footer3-address">
                                    Birmingham<br />
                                    <span class="business-number">0121 663 1862</span>
                                </div>
                                <a class="footer3-email" href="mailto:contact@codefirst.net">contact@codefirst.net</a>
                            </div>
                            <div class="col-xs-6">
                                <div class="footer3-title">Partners</div>
                                <div class="footer3-partners-img">
                                    <img src="https://codefirst2017.azureedge.net//Content/Images/partners.png?v=1.0.0.20108" class="img-responsive" alt="Partners" width="291" height="100" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mobile-only">
                    <div class="col-xs-12">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="footer3-logo">
                                    <img src="https://codefirst2017.azureedge.net//Content/ImagesSVG/logo.svg" alt="CodeFirst Logo" />
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div class="footer3-social">
                                    <a target="_blank" href="https://www.facebook.com/codefirst"><i class="icon icon-footer-facebook normal"></i><i class="icon icon-footer-facebook-hover hover"></i></a>
                                    <a target="_blank" href="https://twitter.com/code_first"><i class="icon icon-footer-twitter normal"></i><i class="icon icon-footer-twitter-hover hover"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="footer3-title">Company</div>
                                <a href="/bespoke-software/" class="footer3-link">Bespoke Software</a>
                                <a href="/hire-developers/" class="footer3-link">Hire Developers</a>
                                <a href="/software-maintenance/" class="footer3-link">Software Maintenance</a>
                                <a href="/about-codefirst/" class="footer3-link">About Us</a>
                                <a href="/contact-codefirst/" class="footer3-link">Contact</a>
                            </div>
                            <div class="col-xs-6">
                                <div class="footer3-title">Contact</div>
                                <div class="footer3-address">
                                    Exeter<br />
                                    <span class="business-number">01392 927 225</span>
                                </div>
                                <div class="footer3-address">
                                    London<br />
                                    <span class="business-number">0207 043 2136</span>
                                </div>
                                <div class="footer3-address">
                                    Birmingham<br />
                                    <span class="business-number">0121 663 1862</span>
                                </div>
                                <a class="footer3-email" href="mailto:contact@codefirst.net">contact@codefirst.net</a>
                            </div>
                            <div class="col-xs-12">
                                <div class="footer3-title">Partners</div>
                                <div class="footer3-partners-img">
                                    <img src="https://codefirst2017.azureedge.net//Content/Images/partners.png?v=1.0.0.20108" class="img-responsive" alt="Partners" width="291" height="100" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="footer4-wrapper">
        <div class="container">
            <div class="footer4">
                <div class="row not-mobile-only">
                    <div class="col-xs-4">
                        <div class="footer4-copyright">
                            Copyright &copy; 2012-2020 CodeFirst
                        </div>
                    </div>
                    <div class="col-xs-8 col-links">
                        <a href="/blog/" class="footer4-link">Blog</a>
                        <a href="/cookie-policy/" class="footer4-link">Cookie Policy</a>
                        <a href="/terms-and-conditions/" class="footer4-link">Terms & Conditions</a>
                        <a href="/privacy-policy/" class="footer4-link">Privacy Policy </a>
                    </div>
                </div>
                <div class="row mobile-only">
                    <div class="col-xs-12 col-links">
                        <a href="/blog/" class="footer4-link">Blog</a>
                        <a href="/cookie-policy/" class="footer4-link">Cookie Policy</a>
                        <a href="/terms-and-conditions/" class="footer4-link">Terms & Conditions</a>
                        <a href="/privacy-policy/" class="footer4-link">Privacy Policy </a>
                    </div>
                    <div class="col-xs-12">
                        <div class="footer4-copyright">
                            Copyright &copy; 2012-2020 CodeFirst
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

    <div class="menu-backdrop"></div>
    

<div class="modal fade contact-dialog" id="contactDialog" data-ng-controller="contactDialog" data-ng-init="init('6Le9V5IUAAAAAGeZK1L31QPm0LLHoxXlnMO6nkN4')">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="header">
                            <div class="header-title">
                                All great projects begin with a thought.<br class="not-mobile-only" />
                                Share yours with us today & get started.
                            </div>
                            <div class="close-icon">
                                <i class="icon icon-dialog-close normal" data-ng-click="close()"></i>
                                <i class="icon icon-header-close hover" data-ng-click="close()"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="items">
                            <div class="row">
                                <div class="col-xs-4">
                                    <div class="item first not-mobile-only">
                                        1. Contact
                                        <div class="arrow-right"></div>
                                    </div>
                                    <div class="item first mobile-only">
                                        <div>1.</div>
                                        <div>Contact</div>
                                        <div class="arrow-right"></div>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <div class="item second not-mobile-only">
                                        2. Consult
                                        <div class="arrow-right"></div>
                                    </div>
                                    <div class="item second mobile-only">
                                        <div>2.</div>
                                        <div>Consult</div>
                                        <div class="arrow-right"></div>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <div class="item third not-mobile-only">
                                        3. Collaborate
                                    </div>
                                    <div class="item third mobile-only">
                                        <div>3.</div>
                                        <div>Collaborate</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="form">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="form-title">
                                        Fill-in the form to start your project today:
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <select class="form-control select-control" data-ng-options="type for type in types" data-ng-model="type" data-ng-class="{'error': type == 'Select a Service' && submitted == true}"></select>
                                </div>
                                <div class="col-xs-6 not-mobile-only">
                                    <input type="text" class="form-control" placeholder="Email*" data-ng-model="email" data-ng-class="{'error': isEmailValid() == false && submitted == true}" />
                                </div>
                                <div class="col-xs-12 mobile-only">
                                    <input type="text" class="form-control" placeholder="Email*" data-ng-model="email" data-ng-class="{'error': isEmailValid() == false && submitted == true}" />
                                </div>
                                <div class="col-xs-6 not-mobile-only">
                                    <input type="text" class="form-control" placeholder="Company Name*" data-ng-model="company" data-ng-class="{'error': (company == '' || company == undefined) && submitted == true}" />
                                </div>
                                <div class="col-xs-12 mobile-only">
                                    <input type="text" class="form-control" placeholder="Company Name*" data-ng-model="company" data-ng-class="{'error': (company == '' || company == undefined) && submitted == true}" />
                                </div>
                                <div class="col-xs-6 not-mobile-only">
                                    <input type="text" class="form-control" placeholder="Your Name*" data-ng-model="name" data-ng-class="{'error': (name == '' || name == undefined) && submitted == true}" />
                                </div>
                                <div class="col-xs-12 mobile-only">
                                    <input type="text" class="form-control" placeholder="Your Name*" data-ng-model="name" data-ng-class="{'error': (name == '' || name == undefined) && submitted == true}" />
                                </div>
                                <div class="col-xs-6 not-mobile-only">
                                    <input type="text" class="form-control" placeholder="Telephone Number" data-ng-model="phone" />
                                </div>
                                <div class="col-xs-12 mobile-only">
                                    <input type="text" class="form-control" placeholder="Telephone Number" data-ng-model="phone" />
                                </div>
                                <div class="col-xs-12">
                                    <textarea rows="6" class="form-control" placeholder="Tell us about your project needs and budget" data-ng-model="message"></textarea>
                                </div>
                                <div class="col-xs-12">
                                    <button class="btn btn-submit" data-ng-click="submit()" data-loading-text="Submitting..." data-btn-loading="isBusy">Submit</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="need-help">
                            <div class="need-help-title">
                                Need help right now?
                            </div>
                            <div class="row">
                                <div class="col-xs-6 not-mobile-only">
                                    <div class="need-help-text">
                                        Leave your name and number and we’ll get back to you within <span class="black">24 hours.</span>
                                    </div>
                                    <input type="text" class="form-control name-control" data-ng-model="quickName" data-ng-class="{'error': (quickName == '' || quickName == undefined) && quickSubmitted == true}" placeholder="Your Name*" />
                                    <input type="text" class="form-control" data-ng-model="quickPhone" placeholder="Telephone Number*" data-ng-class="{'error': (quickPhone == '' || quickPhone == undefined) && quickSubmitted == true}" />
                                </div>
                                <div class="col-xs-12 mobile-only">
                                    <div class="need-help-text">
                                        Leave your name and number and we’ll get back to you within <span class="black">24 hours.</span>
                                    </div>
                                    <input type="text" class="form-control name-control" data-ng-model="quickName" data-ng-class="{'error': (quickName == '' || quickName == undefined) && quickSubmitted == true}" placeholder="Your Name*" />
                                    <input type="text" class="form-control" data-ng-model="quickPhone" placeholder="Telephone Number*" data-ng-class="{'error': (quickPhone == '' || quickPhone == undefined) && quickSubmitted == true}" />
                                </div>
                                <div class="col-xs-6 not-mobile-only">
                                    <div class="need-help-text">
                                        Or give us a call right now and talk to an <span class="black">expert developer.</span>
                                    </div>
                                    <div class="need-help-mobile">
                                        <i class="icon icon-mobile"></i><span class="business-number">0800 433 7990</span>
                                    </div>
                                </div>
                            </div>
                            <button class="btn btn-quick-submit" data-ng-click="quickSubmit()" data-loading-text="Submitting..." data-btn-loading="isQuickBusy">Submit</button>
                            <div class="mobile-only">
                                <div class="need-help-text second">
                                    Or give us a call right now and talk to an <span class="black">expert developer.</span>
                                </div>
                                <div class="need-help-mobile">
                                    <i class="icon icon-mobile"></i><span class="business-number">0800 433 7990</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    

<div class="modal fade thanks-dialog" id="thanksDialog" data-ng-controller="thanksDialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <i class="icon icon-thanks-dialog"></i>
                <div class="title">
                    Thanks for getting in contact!<br />
                    We will be in touch soon.
                </div>
                <button class="btn btn-ok" data-ng-click="ok()">Ok</button>
            </div>
        </div>
    </div>
</div>

<script src="${contextPath}/js/jquery-2.1.4.min.js" type="text/javascript"></script>
<%-- <script src="${contextPath}/js/bootstrap.min.js" type="text/javascript"></script> --%>
<script src="${contextPath}/js/api.js?render=6Le9V5IUAAAAAGeZK1L31QPm0LLHoxXlnMO6nkN4"></script>
<script async src="${contextPath}/js/app.js?v=1.0.0.20108"></script>
    <script type="text/javascript">
        /* <![CDATA[ */
        var google_conversion_id = 1011932536;
        var google_custom_params = window.google_tag_params;
        var google_remarketing_only = true;
        /* ]]> */
    </script>
    <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js"></script>
 <script type="text/javascript">
        if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
            var msViewportStyle = document.createElement("style");
            msViewportStyle.appendChild(document.createTextNode("@-ms-viewport{width: auto!important}"));
            document.getElementsByTagName("head")[0].appendChild(msViewportStyle);
        }
    </script>

    <script type="text/javascript">
        (function (a, e, c, f, g, h, b, d) {
            var
                k = { ak: "858752796", cl: "UKpVCLPFoHIQnI6-mQM" }; a[c] = a[c] ||
                    function () { (a[c].q = a[c].q || []).push(arguments) }; a[g] ||
                        (a[g] = k.ak); b = e.createElement(h); b.async = 1; b.src = "//www.gstatic.com/wcm/loader.js"; d = e.getElementsByTagName(h)[0]; d.parentNode.insertBefore(b, d); a[f] = function (b, d, e) {
                            a[c](2, b, k, d, null, new
                                Date, e)
                        }; a[f]()
        })(window, document, "_googWcmImpl", "_googWcmGet", "_googWcmAk", "script");
    </script>
</body>
</html>