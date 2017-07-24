<%--
TODO: add ALA licensing info. 
--%>
<jsp:directive.include file="includes/top.jsp" />
<section id="breadcrumb">
	<div class="container">
		<div class="row">
			<nav aria-label="Breadcrumb" role="navigation">
				<ol class="breadcrumb-list">
					<li><a href="https://www.ala.org.au/">Home</a></li>
					<li class="active">Authentication</li>
				</ol>
			</nav>
		</div>
	</div>
</section>

<c:if test="${not pageContext.request.secure}">
    <div id="msg" class="errors">
        <span class="ssoError">
            <h2>Non-secure Connection</h2>
            <p>You are currently accessing CAS over a non-secure connection.  Single Sign On WILL NOT WORK.  In order to have single sign on work, you MUST log in over HTTPS.</p>
        </span>
    </div>
</c:if>

<!-- Container -->
<div class="container" id="main">

    <!-- Main col -->
    <div class="col-xs-12 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
	<h1 class="hidden">Welcome the Atlas of Living Australia</h1>

	<div class="panel panel-default">
	    <div class="panel-body">

		    <div class="logo-brand">
			<div class="brand-layout-control">
                <div class="brand-layout-logo"/>
			</div>
			<h2 class="heading-medium-large">Sign in to the ALA</h2>
		    </div>

		    <a href="${FacebookClientUrl}" class="btn btn-lg btn-facebook btn-block margin-bottom-1 font-xxsmall">Sign in with Facebook</a>
		    <a href="${TwitterClientUrl}"  class="btn btn-lg btn-twitter btn-block margin-bottom-1 font-xxsmall">Sign in with Twitter</a>
		    <a href="${Google2ClientUrl}"  class="btn btn-lg btn-google btn-block margin-bottom-1 font-xxsmall">Sign in with Google</a>

		    <p class="separator t-center margin-bottom-2"><span>Or</span></p>

		    <form:form class="form-signin" method="post" id="fm1" commandName="${commandName}" htmlEscape="true">
				<fieldset>
			<div class="form-group" id="ala-login-fields">
			    <label for="username" class="sr-only">
				<spring:message code="screen.welcome.label.netid" />
			    </label>

			    <c:choose>
				<c:when test="${not empty sessionScope.openIdLocalId}">
				    <strong>${sessionScope.openIdLocalId}</strong>
				    <input type="hidden" id="username" name="username" value="${sessionScope.openIdLocalId}" />
				</c:when>
				<c:otherwise>
				    <spring:message code="screen.welcome.label.netid.accesskey" var="userNameAccessKey" />
				    <form:input cssClass="required form-control input-lg"
						cssErrorClass="error"
						id="username"
						size="25"
						tabindex="1"
						accesskey="${userNameAccessKey}"
						path="username"
						autocomplete="off"
						htmlEscape="true"
						placeholder="email address" autofocus="autofocus" />
				</c:otherwise>
				</c:choose>
			</div>

			<div class="form-group margin-bottom-2">
			    <label for="password" class="sr-only">
				<spring:message code="screen.welcome.label.password" />
			    </label>
			    <%--
			    NOTE: Certain browsers will offer the option of caching passwords for a user.  There is a non-standard attribute,
			    "autocomplete" that when set to "off" will tell certain browsers not to prompt to cache credentials.  For more
			    information, see the following web page:
			    http://www.technofundo.com/tech/web/ie_autocomplete.html
			    --%>
			    <spring:message code="screen.welcome.label.password.accesskey" var="passwordAccessKey" />
			    <form:password cssClass="required form-control input-lg"
					   cssErrorClass="error"
					   id="password"
					   path="password"
					   accesskey="${passwordAccessKey}"
					   htmlEscape="true"
					   autocomplete="off"
					   size="25"
					   placeholder="password"
					   tabindex="2" />

			    <a class="forgot" title="Password Reset" href="/userdetails/registration/forgottenPassword" target="_blank">Forgot?</a>
			</div>

			<!-- Alert Information -->
			<form:errors path="*" id="msg" cssClass="alert alert-danger alert-dismissible" element="div" role="alert" htmlEscape="false">
			</form:errors>
			<!-- End Alert Information -->

			<div class="checkbox checkbox-rememberMe margin-bottom-2">
			    <label>
					<input type="checkbox" id="rememberMe" name="rememberMe" value="true" tabindex="3" /> Remember me
			    </label>
			</div>
			</fieldset>

			<input type="hidden" name="lt"        value="${loginTicket}" />
			<input type="hidden" name="execution" value="${flowExecutionKey}" />
			<input type="hidden" name="_eventId"  value="submit" />

			<button class="btn btn-lg btn-primary btn-block margin-bottom-1 font-xxsmall" accesskey="l" type="submit" tabindex="3">
			    <spring:message code="screen.welcome.button.login" />
			</button>

			<!-- NOTE: you can leave the link "/userdetails/registration/createAccount" UNLESS you are changing the the userdetails
			     servlet mapping or deploying userdetails on a diff host.
			-->
			<p class="small text-center">Don't have an account? <a href="/userdetails/registration/createAccount">Sign up now</a>.</p>

		    </form:form>

	    </div>
	</div>

    </div><!-- End main col -->

</div><!-- End container#main -->

<jsp:directive.include file="includes/bottom.jsp" />
