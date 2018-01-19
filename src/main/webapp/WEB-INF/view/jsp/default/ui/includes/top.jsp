<%--
 TODO: add ALA licensing info
--%>
<!DOCTYPE html>

<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ala" uri="/tld/ala.tld" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="en">
<fmt:setBundle basename="ala-cas-build" var="ala_cas_build" />
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="app.version" content="<fmt:message key="ala.cas.build.version" bundle="${ala_cas_build}"/>" />

    <title>Atlas of Living Australia | Login</title>

    <!-- Bootstrap -->
    <link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet" />

    <!-- FontAwesome -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />

    <!-- ALA -->
    <link href="<c:url value="/css/ala-styles.css" />" rel="stylesheet" />
    <link href="<c:url value="/css/ala-cas.css" />" rel="stylesheet" />

    <!-- favicon -->
    <link rel="shortcut icon" href="<c:url value="/img/favicon/favicon.ico" />" type="image/x-icon">
    <link rel="apple-touch-icon" sizes="57x57" href="<c:url value="/img/favicon/apple-icon-57x57.png" />">
    <link rel="apple-touch-icon" sizes="60x60" href="<c:url value="/img/favicon/apple-icon-60x60.png" />">
    <link rel="apple-touch-icon" sizes="72x72" href="<c:url value="/img/favicon/apple-icon-72x72.png" />">
    <link rel="apple-touch-icon" sizes="76x76" href="<c:url value="/img/favicon/apple-icon-76x76.png" />">
    <link rel="apple-touch-icon" sizes="114x114" href="<c:url value="/img/favicon/apple-icon-114x114.png" />">
    <link rel="apple-touch-icon" sizes="120x120" href="<c:url value="/img/favicon/apple-icon-120x120.png" />">
    <link rel="apple-touch-icon" sizes="144x144" href="<c:url value="/img/favicon/apple-icon-144x144.png" />">
    <link rel="apple-touch-icon" sizes="152x152" href="<c:url value="/img/favicon/apple-icon-152x152.png" />">
    <link rel="apple-touch-icon" sizes="180x180" href="<c:url value="/img/favicon/apple-icon-180x180.png" />">
    <link rel="icon" type="image/png" sizes="192x192" href="<c:url value="/img/favicon/android-icon-192x192.png" />">
    <link rel="icon" type="image/png" sizes="32x32" href="<c:url value="/img/favicon/favicon-32x32.png" />">
    <link rel="icon" type="image/png" sizes="96x96" href="<c:url value="/img/favicon/favicon-96x96.png" />">
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value="/img/favicon/favicon-16x16.png" />">
    <link rel="manifest" href="<c:url value="/img/favicon/manifest.json" />">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="<c:url value="/img/favicon/ms-icon-144x144.png"/>">
    <meta name="theme-color" content="#d5502a">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body id="cas">
<!-- TODO: add ala:bannerMenu, etc. -->

<!-- Navbar start -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container container-navbar">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="https://www.ala.org.au/">
                <img alt="Brand" src="https://www.ala.org.au/commonui-bs3/img/ala-logo-2016-inline.png">
            </a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <div class="row row-search">
                <div class="col-xs-12 col-sm-4 col-md-6">
                    <form id="global-search" class="banner" action="https://bie.ala.org.au/search" method="get" name="search-form">
                        <div class="icon-addon addon-lg">
                            <input type="text" placeholder="Search the Atlas ..." class="form-control autocomplete" id="biesearch" name="q">
                            <label for="biesearch" class="glyphicon glyphicon-search" rel="tooltip" title="search"></label>
                        </div>
                    </form>
                </div>
                <div class="col-md-2 hidden-xs">
                    <ul class="nav navbar-nav navbar-right nav-logged-in">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                My profile
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="/userdetails/myprofile">View profile</a></li>
                                <%--<li><a href="/userdetails/registration/editAccount">Account settings</a></li>--%>
                                <li class="divider"></li>
                                <li><a href="/cas/login">Login</a></li>
                                <li><a href="/cas/logout">Logout</a></li>
                                <li><a href="/userdetails/registration/createAccount">Register</a></li>
                            </ul>
                        </li>
                    </ul>

                </div>
            </div><!-- End row -->

            <ul class="nav navbar-nav">
                <!-- <li class="active"><a href="#">Home</a></li> -->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                        Start exploring
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="https://lists.ala.org.au/iconic-species">Australian iconic species</a></li>
                        <li><a href="https://biocache.ala.org.au/explore/your-area">Explore your area</a></li>
                        <li><a href="http://regions.ala.org.au/">Explore regions</a></li>
                        <li><a href="https://biocache.ala.org.au/search">Search occurrence records</a></li>
                        <li class="divider"></li>
                        <li><a href="https://www.ala.org.au/sites-and-services/">Sites &amp; services</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                        Search &amp; analyse
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="http://collections.ala.org.au/">Browse natural history collections</a></li>
                        <li><a href="http://collections.ala.org.au/datasets">Search collections datasets</a></li>
                        <li><a href="https://downloads.ala.org.au">Download datasets</a>
                        <li><a href="https://spatial.ala.org.au/">Spatial portal</a></li>
                        <li class="divider"></li>
                        <li><a href="https://dashboard.ala.org.au/">ALA dashboard</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                        Participate
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="https://biocollect.ala.org.au/">Join a Citizen Science project</a></li>
                        <li><a href="https://sightings.ala.org.au/">Record a sighting in the ALA</a></li>
                        <li><a href="https://www.ala.org.au/submit-dataset-to-ala/">Submit a dataset to the ALA</a></li>
                        <li><a href="https://digivol.ala.org.au/">Digitise a record in DigiVol</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                        Learn about the ALA
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="https://www.ala.org.au/who-we-are/">Who we are</a></li>
                        <li class="divider"></li>
                        <li><a href="https://www.ala.org.au/how-to-use-ala/">How to use the ALA</a></li>
                        <li><a href="https://www.ala.org.au/how-to-work-with-data/">How to work with data</a></li>
                        <li><a href="https://www.ala.org.au/how-to-cite-ala/">How to cite the ALA</a></li>
                        <li class="divider"></li>
                        <li><a href="https://www.ala.org.au/education-resources/">Education resources</a></li>
                        <li><a href="https://www.ala.org.au/ala-and-indigenous-ecological-knowledge-iek/">Indigenous Ecological Knowledge</a></li>
                        <li class="divider"></li>
                        <li><a href="https://www.ala.org.au/blogs-news/">ALA News</a></li>
                        <li class="divider"></li>
                        <li><a href="https://www.ala.org.au/about-the-atlas/contact-us/">Contact us</a></li>
                        <li><a href="https://www.ala.org.au/about-the-atlas/feedback-form/">Feedback form</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right visible-xs">
                <li><a href="https://auth.ala.org.au/userdetails/myprofile/"><span class="nav-login">View profile</span></a></li>
                <li><a href="https://auth.ala.org.au/userdetails/registration/editAccount"><span class="nav-login">Account settings</span></a></li>
                <li>::loginLogoutListItem::</li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<!-- End Navbar -->

<div id="content">
