<html>
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/login.css"/>
  <head>
    <title>CARET Authentication Service</title>
  </head>

  <body id="homepage">
    <img src="<%= request.getContextPath()%>/images/caret_logo.gif" alt="CARET Logo"/>
    <h1>CARET Authentication Service</h1>

    <div class="loginbox">
       <div class="leftpane">
         <div class="content">
           <p>The web site described to the right has asked you to log in and you have chosen to use the CARET authentication service.</p>
           <% if ("true".equals(request.getAttribute("loginFailed"))) { %>
              <p><font color="red"> Credentials not recognized. </font> </p>
           <% } %>
           <% if(request.getAttribute("actionUrl") != null){ %>
             <form action=<%=request.getAttribute("actionUrl")%>" method="post">
           <% }else{ %>
             <form action="j_security_check" method="post">
           <% } %>
           <table>
             <tr><td width="40%"><label for="username">Username:</label></td><td><input name="j_username" type="text" /></td></tr>
             <tr><td><label for="password">Password:</label></td><td><input name="j_password" type="password" /></td></tr>
             <tr><td></td><td><button type="submit" value="Login" >Continue</button></td></tr>
           </table></form>
         </div>
       </div>
       <div class="rightpane">
         <div class="content">
           <div id="spName"><idpui:serviceName/></div>
           <!-- pick the logo.  If its between 64 & max width/height display it
                If its too high but OK wide clip by height
                If its too wide clip by width.
                We should not clip by height and width since that skews the image.  Too high an image will just show the top.
            -->
           <idpui:serviceLogo  minWidth="64" minHeight="64" maxWidth="350" maxHeight="147" cssId="splogo">
              <idpui:serviceLogo  minWidth="64" minHeight="64" maxWidth="350" cssId="clippedsplogoY">
                  <idpui:serviceLogo  minWidth="64" minHeight="64" cssId="clippedsplogoX"/>
              </idpui:serviceLogo>
           </idpui:serviceLogo>
           <div id="spDescription">
             <idpui:serviceDescription>You have asked to login to <idpui:serviceName/></idpui:serviceDescription>
           </div>
         </div>
      </div>
    </div>
  </body>
</html>
