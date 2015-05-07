</div>
<!-- #homemiddle -->
<div id="homebottom" class="container">
  <div id="homenews"> </div>
  <!-- #homenews -->
  <div id="homefive"> </div>
  <!-- #homesix --> 
</div>
<!-- #homebottom -->
<div id="content"> </div>
<!-- #content -->
<div id="footer" class="container">
  <ul id="footernav">
  		<cfoutput>
		  <cfparam name=caller.attributes.nodeId default=0>
		   <cfif isDefined("client.userID") and client.userId gt 0>
		    <li><a href="/index.cfm?fuseaction=home.Logout&amp;nodeId=#caller.attributes.nodeId#">Logout</a></li>
		    <li><a href="/index.cfm?fuseaction=home.editUserProfile">#request.editProfileTitle#</a></li>
		    <cfinclude template="/_includes/queries/qry_getavailableusersections.cfm">
		    <cfif (getAvailableUserSections.pointTotal gt 0) OR (IsDefined("client.isSuperUser") AND client.isSuperUser)>
		    <cfset logFA="">
		    <cfquery name="getLoginFA" datasource="#request.dsn#">
		     select loginFuseaction from Users where userID=#client.userid#
		    </cfquery>
		    <cfif getLoginFA.loginFuseaction neq "" and getLoginFA.loginFuseaction neq 0 AND len(getLoginFA.loginFuseaction)>
		    <cfset logFA="?fuseaction=" & getLoginFA.loginFuseaction>
		   </cfif>
		  <li><a href="/admin/index.cfm#logFA#">Administration Section</a></li>
          <!--- Edit this page --->
		  <cfif isDefined("attributes.pageid") and isNumeric(attributes.pageID)>
		   <li><a href="/admin/index.cfm?fuseaction=PageAdmin.editLivePage&amp;pageID=#attributes.pageid#">Edit This Page</a></li>
		  </cfif>
		 </cfif>
         <cfelse>
	      <li><a href="/index.cfm?fuseaction=home.userLogin">Login</a></li>
         </cfif>
         </cfoutput>
  </ul>
  <!-- #footernav -->
  <p>Lorem ipsum dolor sit amet, consectetur</p>
  <p>&copy; Citysoft Inc. All Rights Reserved</p>
  <p><em>Lorem ipsum dolor sit amet, consectetur dolorum</em></p>
</div>
<!--end of footer--> 
<!--end of wrapper-->
</body>
</html>