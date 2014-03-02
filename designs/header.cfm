<!--- 
Theme: 	Mobility - A CitySoft Theme
File: 	header.cfm
Notes: 	This is a sample header file.  The header file file is generally called from head.cfm after the call to init.cfm.
--->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
		<cfoutput>
			<title>MY ORGANIZATION | <cfif isHomepage>HOME PAGE TITLE<cfelse>#attributes.pagetitle#</cfif></title>
			#getMetaTags()#
		</cfoutput>
	<!--- Add style sheets as necessary. --->
	<cfoutput>
    <link rel="stylesheet" href="../_data/#vNodeFolder#/styles/styles.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="../_data/#vNodeFolder#/styles/skeleton.css">
	<link rel="stylesheet" href="../_data/#vNodeFolder#/styles/home.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="../_data/#vNodeFolder#/styles/flexslider.css" type="text/css" media="screen" />
    
	</cfoutput>
	<!--[if IE 6]>
		<style type="text/css" media="screen">
			#mainContent #support {width: 497px;}
			#memberLogin form {width: 256px;}
		</style>
	<![endif]-->
	<!--[if IE 7]>
		<style type="text/css" media="screen">
			#memberLogin form {width: 256px;}
			ul#nav li:hover ul {top: 26px;}
			ul#nav ul li {width: 160px; margin-top: -4px;}
		</style>
	<![endif]-->
    
    <!-- jQuery for photo gallery slider -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
	<cfoutput><script src="/_data/#vNodeFolder#/scripts/jquery.flexslider.js"></script></cfoutput>
	<script type="text/javascript" charset="utf-8">
	  $(window).load(function() {
	    $('.flexslider').flexslider();
	  });
	</script>
</head>
	<body>
	    <div id="wrapper" class="container"><!--- Closed in footer file --->
	  	<div id="header" class="container">
		    <h1 class="brand"> <a href="" title="CitySoft Theme - Mobility"></a> </h1>
		    <p class="tagline">Your tagline or contact info could appear here.</p>
	  	</div>
		<!-- #header -->
		<!--- END: Header section / div --->
		<!--- Example of including login widget.  Path will vary depending on whether header file is in global 
		or node folders 
		<cfinclude template="../includes/loginwidget.cfm">
		OR
		<cfinclude template="../../global/includes/loginwidget.cfm"> --->

		<div id="navwrapper">
			<ul id="nav">
				<cfif not isDefined("client.userID") or client.userId lte 0>
					<cfset topmenu_show="public">
                <cfelse>
					<cfset topmenu_show="roleid">
				</cfif>
				<cfinclude template="../../../_includes/design/menu.cfm">
				<!---<cfif isDefined("client.userid") and client.userid NEQ 0>
						<li class="member"><a href="/index.cfm?fuseaction=home.Logout&nodeID=1">Logout</a></li>
					<cfif isDefined("client.issuperuser") and client.issuperuser EQ 1>
						<li class="member"><a href="/admin">Admin</a></li>
					</cfif>
				<cfelse>
					<li class="member"><a href="/index.cfm?pageId=482">Member Login</a></li>
				</cfif> --->
			</ul>
			<!--- END: Navigation --->
			<!--- START: content container. This is closed in the footer file. --->
</ul>
<ul id="altnav" class="container">
  <li class="two columns"><a href="">Link 1</a></li>
  <li class="two columns"><a href="">Link 2</a></li>
  <li class="two columns"><a href="">Link 3</a></li>
  <li class="two columns"><a href="">Link 4</a></li>
 <li class="two columns"><a href="">Link 5</a></li>
  <li class="two columns"><a href="">Link 6</a></li> 
 <li class="two columns">  <!--hidenav --><a href="">Link 7</a></li> 
  <!-- Here's login/logout logic for the responsive nav. --> 
  <!--<li class="two columns signinnav"> <a href="">Sign In</a> </li> -->
</ul>
</div><!-- #navwrapper --> 

<cfoutput>
<div id="bannerdetail" class="container"> <img src="/_data/#vNodeFolder#/images/detailbg.png" alt="banner main image"> </div>
</cfoutput>

<!--- Content from editor --->
<div class="container" id="hometop">
	<div class="eight columns" id="home-one">
		<!-- Content Spotlight 1 -->
		<cfset contentspotlight1 = application.apiv1.sectionsapi.getContentSection("Content Spotlight 1")>
		<cfoutput>
			<cfif isDefined("contentspotlight1.query.content")>#contentspotlight1.query.content#</cfif>
		</cfoutput>
		<!-- Content Spotlight 2 -->
		<cfset contentspotlight2 = application.apiv1.sectionsapi.getContentSection("Content Spotlight 2")>
		<cfoutput>
			<cfif isDefined("contentspotlight2.query.content")>#contentspotlight2.query.content#</cfif>
		</cfoutput>
		<!-- Content Spotlight 3 -->
		<cfset contentspotlight3 = application.apiv1.sectionsapi.getContentSection("Content Spotlight 3")>
		<cfoutput>
			<cfif isDefined("contentspotlight3.query.content")>#contentspotlight3.query.content#</cfif>
		</cfoutput>
	</div>
	<!-- #homeone -->
	<div class="eight columns" id="home-two">
		<div class="flexslider">
			<ul class="slides">
				<!-- first slide -->			
				<cfset slide1 = application.apiv1.sectionsapi.getContentSection("Slide 1")>
				<cfoutput>
				<cfif isDefined("slide1.query.content")>#slide1.query.content#</cfif>
				</cfoutput>
				<!-- second slide -->			
				<cfset slide2 = application.apiv1.sectionsapi.getContentSection("Slide 2")>
				<cfoutput>
				<cfif isDefined("slide2.query.content")>#slide2.query.content#</cfif>
				</cfoutput>
				<!-- third slide -->			
				<cfset slide3 = application.apiv1.sectionsapi.getContentSection("Slide 3")>
				<cfoutput>
				<cfif isDefined("slide3.query.content")>#slide3.query.content#</cfif>
				</cfoutput>
				<!-- fourth slide -->			
				<cfset slide4 = application.apiv1.sectionsapi.getContentSection("Slide 4")>
				<cfoutput>
				<cfif isDefined("slide4.query.content")>#slide4.query.content#</cfif>
				</cfoutput>
				<!-- fifth slide -->			
				<cfset slide5 = application.apiv1.sectionsapi.getContentSection("Slide 5")>
				<cfoutput>
				<cfif isDefined("slide5.query.content")>#slide5.query.content#</cfif>
				</cfoutput>
				<!-- sixth slide -->			
				<cfset slide6 = application.apiv1.sectionsapi.getContentSection("Slide 6")>
				<cfoutput>
				<cfif isDefined("slide6.query.content")>#slide6.query.content#</cfif>
				</cfoutput>
				<!-- seventh slide -->			
				<cfset slide7 = application.apiv1.sectionsapi.getContentSection("Slide 7")>
				<cfoutput>
				<cfif isDefined("slide7.query.content")>#slide7.query.content#</cfif>
				</cfoutput>
			</ul>
		</div>
		<ul class="alpha omega" id="home-two-content">
			<!-- Content Section 1 -->
			<cfset contentSection1 = application.apiv1.sectionsapi.getContentSection("Content Section 1")>
			<cfoutput>
				<cfif isDefined("contentSection1.query.content")>#contentSection1.query.content#</cfif>
			</cfoutput>
			<!-- Content Section 2 -->
			<cfset contentSection2 = application.apiv1.sectionsapi.getContentSection("Content Section 2")>
			<cfoutput>
				<cfif isDefined("contentSection2.query.content")>#contentSection2.query.content#</cfif>
			</cfoutput>
			<!-- Content Section 3 -->
			<cfset contentSection3 = application.apiv1.sectionsapi.getContentSection("Content Section 3")>
			<cfoutput>
				<cfif isDefined("contentSection3.query.content")>#contentSection3.query.content#</cfif>
			</cfoutput>
		</ul>
	</div>
	<p class="homepage-highlight seven columns">
			<!-- Content SubSection 1 -->
			<cfset contentsubsection1 = application.apiv1.sectionsapi.getContentSection("Content SubSection 1")>
			<cfoutput>
				<cfif isDefined("contentsubsection1.query.content")>#contentsubsection1.query.content#</cfif>
			</cfoutput>
	</p>
</div>
<!-- #hometwo --><!-- #hometop -->
<div class="container" id="homemiddle">
	<div class="eight columns" id="home-three">
		<!-- Content Callout 1 -->
		<cfset contentcallout1 = application.apiv1.sectionsapi.getContentSection("Content Callout 1")>
		<cfoutput>
			<cfif isDefined("contentcallout1.query.content")>#contentcallout1.query.content#</cfif>
		</cfoutput>

	</div>
<!-- #homethree -->
	<div class="eight columns" id="home-four">
		<!-- Content Callout 2 -->
		<cfset contentcallout2 = application.apiv1.sectionsapi.getContentSection("Content Callout 2")>
		<cfoutput>
			<cfif isDefined("contentcallout2.query.content")>#contentcallout2.query.content#</cfif>
		</cfoutput>
		<div class="eight columns alpha" id="">
			<div class="four columns alpha omega">
				&nbsp;</div>
			<div class="four columns alpha">
				&nbsp;</div>
		</div>
	</div>
<!-- #homefour -->
</div>
