<%@ taglib uri="urn:mace:shibboleth:2.0:idp:ui" prefix="idpui" %>
<html>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/login.css"/>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Camshare - Friends Login</title>
</head>

<body>
    <div id="friendsLoginTopNav">
        <div id="friendsLoginTopNavContent">
            <a href="https://prelude.ucamoae.caret.cam.ac.uk/index">Explore</a>
        </div>
    </div>
    
    <div id="friendsLoginWrapper">
        
        <div id="engineeringHeader">
            <h1 class="is-product-title">
                <span>Cambridge Engineering Department</span>
                Academic Collaboration Environment
            </h1>
        </div>
        
        
        <div id="friendsLoginContent">
            <div id="friendsLoginLeftContent">
                <h1>Friends Login</h1>
                
                <p>This login screen is for NewCamTools Friends - that is, 
                people invited to use NewCamTools who are not 
                members of the University or who do not have a Raven 
                account.<p>
                
                <p>If you are a member of, or associated with the 
                Cambridge University Engineering Department who has a 
                University Raven account, please log in with <a href="https://prelude.ucamoae.caret.cam.ac.uk/system/ucam/auth/raven?url=%2Fme">Raven</a>.</p>	

				<div id="loginFormContainer">
					<form action=<%=request.getAttribute("actionUrl")%>" method="post">
					<% }else{ %>
					<form action="j_security_check" method="post">
					<% } %>
					    <ul>
					    	<li>
					    		<label for="username">Email</label>
					    		<input id="username" name="j_username" type="text" placeholder="Your email address" />
					    	</li>
					    	<li>
					    		<label for="password">Password</label>
					    		<input id="password" name="j_password" type="password" placeholder="Your password" />
					    	</li>
					    	<li>
					    		<button type="submit" value="Sign in" class="s3d-button" id="submitForm">Sign in</button>
					    		<a id="cancelButton" href="https://prelude.ucamoae.caret.cam.ac.uk/">Cancel</a>
					    	</li>
					   	</ul>
				    </form>
				    
				    <div id="errorBox">
				    	<% if ("true".equals(request.getAttribute("loginFailed"))) { %>
				    		<h2>Error</h2>
							Credentials not recognized.
				    	<% } %>
				    </div>
				    
				    <div class="clear"></div>
				</div>
            </div>
            
            <div id="friendsLoginRightContent">
            	<div id="serviceDescription">
            		<h2>Service status</h2>
            		<div id="spName">
            			<p><idpui:serviceName/></p>
            		</div>
					<div id="spDescription">
						<p><idpui:serviceDescription>You have asked to login to <idpui:serviceName/></idpui:serviceDescription></p>
					</div>
            	</div>
            </div>
        </div>
        
    </div>
</body>
</html>