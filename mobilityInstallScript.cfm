<!--- This script installs the content sections into CE for use by the slide show
	  in the Professinoal template --->
<!--- URL to run script:
http://www.domain.com/_data/n_0001/scripts/mobilityInstallScript.cfm?testmode=1&sections=1&pages=1&showerrors=1 
change testmode from 1 to 0 to run it. --->
<!--- NOTE - the "vNodeFolder" variable is set to node 2 by default (n_0002). This makes sense if you have a 
	  current theme in place on node1 and want to create a temp theme on node2 for testing.  However, in many
	  scenarios, this will not be the case.  So, adjust for the site you want to display the slides in.
	  If you make a mistake here, go into the slide channel and change the code manually. --->
<cfparam name="vNodeFolder" type="string" default="n_0001">
<cfparam name="url.testmode" type="boolean" default="true">
<cfparam name="url.sections" type="boolean" default="false">
<cfparam name="url.pages" type="boolean" default="false">
<cfif url.testmode>
	TEST MODE ONLY - NO INSERTS INTO CE DB<br>
</cfif>
<!--- Install Slide Content Channels --->
<font size=5>Install Mobility Theme Content Channels</font><br>
<br>

<!--- Create a query and set its contents. --->
<cfset sectioninstallquery = QueryNew( "sectiontitle, sectioncontent" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Slide 1" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
				<li>
					<img src='/_data/#vNodeFolder#/images/01.jpg' /></li>
					" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Slide 2" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
				<li>
					<img src='/_data/#vNodeFolder#/images/04.jpg' /></li>
					" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Slide 3" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
				<li>
					<img src='/_data/#vNodeFolder#/images/02.jpg' /></li>
					" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Slide 4" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
				<li>
					<img src='/_data/#vNodeFolder#/images/03.jpg' /></li>
					" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Slide 5" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
				<li>
					<img src='/_data/#vNodeFolder#/images/06.jpg' /></li>
					" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Slide 6" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
				<li>
					<img src='/_data/#vNodeFolder#/images/07.jpeg' /></li>
					" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Slide 7" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
				<li>
					<img src='/_data/#vNodeFolder#/images/05.jpeg' /></li>
					" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Content Spotlight 1" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<h3>
			Lorum Ipsum Dolorem</h3>
		Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fringilla rhoncus pretium. Praesent sit amet turpis non libero mollis adipiscing quis a purus. Curabitur pharetra urna urna, eget accumsan sapien blandit et. Donec malesuada mattis dui nec commodo. Aliquam suscipit nisl in dolor hendrerit venenatis. Mauris adipiscing ligula tortor, gravida pellentesque arcu pretium sed. Sed sed dui massa. Fusce vitae semper tortor, a porta ipsum. Integer quis auctor metus. Curabitur sed bibendum est. <a href='##'>Read More</a>

		" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Content Spotlight 2" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<h3>
			Lorum Ipsum Dolorem</h3>
		Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fringilla rhoncus pretium. Praesent sit amet turpis non libero mollis adipiscing quis a purus. Curabitur pharetra urna urna, eget accumsan sapien blandit et. Donec malesuada mattis dui nec commodo. Aliquam suscipit nisl in dolor hendrerit venenatis. Mauris adipiscing ligula tortor, gravida pellentesque arcu pretium sed. Sed sed dui massa. Fusce vitae semper tortor, a porta ipsum. Integer quis auctor metus. Curabitur sed bibendum est. <a href='##'>Read More</a>		
		" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Content Spotlight 3" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<h3>
			Lorum Ipsum Dolorem</h3>
		Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fringilla rhoncus pretium. Praesent sit amet turpis non libero mollis adipiscing quis a purus. Curabitur pharetra urna urna, eget accumsan sapien blandit et. Donec malesuada mattis dui nec commodo. Aliquam suscipit nisl in dolor hendrerit venenatis. Mauris adipiscing ligula tortor, gravida pellentesque arcu pretium sed. Sed sed dui massa. Fusce vitae semper tortor, a porta ipsum. Integer quis auctor metus. Curabitur sed bibendum est. <a href='##'>Read More</a>		
		" ) />
		
		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Content Section 1" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
			<li class='donate columns alpha'>
				<a href=''>lorum</a></li>" ) />		

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Content Section 2" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
		<li class='volunteer columns'>
				<a href=''>ipsum</a></li>" ) />		

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Content Section 3" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
		<li class='membership columns omega'>
				<a href=''>dolorum</a></li>" ) />		

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Content SubSection 1" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
		Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fringilla rhoncus pretium. Praesent sit amet turpis non libero mollis adipiscing quis a purus. Curabitur pharetra urna urna, eget accumsan sapien blandit et. <a href='##'>Read More</a>
		" ) />		

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Content Callout 1" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
		<h3>
			Lorum Ipsum Dolorem</h3>
		Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fringilla rhoncus pretium. Praesent sit amet turpis non libero mollis adipiscing quis a purus. Curabitur pharetra urna urna, eget accumsan sapien blandit et. Donec malesuada mattis dui nec commodo. Aliquam suscipit nisl in dolor hendrerit venenatis. <a href='##'>Read More</a>
		" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Content Callout 2" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
		<h3>
			Lorum Ipsum Dolorem</h3>
		Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fringilla rhoncus pretium. Praesent sit amet turpis non libero mollis adipiscing quis a purus. Curabitur pharetra urna urna, eget accumsan sapien blandit et. Donec malesuada mattis dui nec commodo. Aliquam suscipit nisl in dolor hendrerit venenatis. <a href='##'>Read More</a>
		" ) />		

		<!---<cfset QueryAddRow( installquery ) />
		<cfset QuerySetCell( installquery, "sectiontitle", "" ) />
		<cfset QuerySetCell( installquery, "sectioncontent", "" ) />--->

<cfoutput query="sectioninstallquery">

	<!--- Checks for existance of page so that duplicates are not accidentally imported. --->
	<cfquery name="dupecheck" datasource="#request.dsn#">
		SELECT title
		FROM contentT
		WHERE title = <cfqueryparam value="#sectioninstallquery.sectiontitle#" cfsqltype="CF_SQL_VARCHAR">
	</cfquery>

	<cfif NOT dupecheck.recordcount>
	<!--- write to db --->
		<cfif NOT url.testmode and url.sections EQ 1>
			<cfquery name="insertcontentchannels" datasource="#request.dsn#">
				INSERT INTO contentT (
					title
					,content
					,createdate
					)
				VALUES (
					<cfqueryparam value="#sectioninstallquery.sectiontitle#" cfsqltype="CF_SQL_VARCHAR">
					,<cfqueryparam value="#sectioninstallquery.sectioncontent#" cfsqltype="CF_SQL_VARCHAR">
					,#CreateODBCDateTime(now())#
					)
			</cfquery>
		</cfif>
	</cfif>
</cfoutput>

<!--- Create a query and set its contents. --->
<cfset pageinstallquery = QueryNew( "pagetitle, pagenavtitle, pagecontent" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "About" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "About" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "About Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "Services" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "Services" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "Services Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "News" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "News" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "News Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "Events" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "Events" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "Events Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "Resources" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "Resources" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "Resources Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "Programs" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "Programs" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "Programs Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "Join" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "Join" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "Join Page Content" ) />

	<!--- Get Page Template --->
	<cfquery name="getpagetemplateid" datasource="#request.dsn#">
		SELECT pagetemplateid
		FROM pagetemplate
		WHERE name = <cfqueryparam value="div_c1" cfsqltype="CF_SQL_VARCHAR">
	</cfquery>

<!--- Insert to the Destination DB --->
<cfoutput query="pageinstallquery">

	<!--- Checks for existance of page so that duplicates are not accidentally imported. --->
	<cfquery name="dupecheck" datasource="#request.dsn#">
		SELECT pagetitle
		FROM page
		WHERE pagetitle = <cfqueryparam value="#pageinstallquery.pagetitle#" cfsqltype="CF_SQL_VARCHAR">
	</cfquery>

	<cfif NOT dupecheck.recordcount>
	<!--- Insert page info --->
		<cfif NOT url.testmode and url.pages EQ 1>
			<cfquery name="insertpage" datasource="#request.dsn#">
				INSERT INTO page(
					parentpageID,
					pagetemplateid,	
					nodeid,
					pageTitle,
					pageNavTitle,
					approvallevel,
					CreatorUserID,
					CreateDate
					)
				Values(
					4
					,<cfqueryparam value="#getpagetemplateid.pagetemplateid#" cfsqltype="CF_SQL_VARCHAR">
					,1
					,<cfqueryparam value="#pageinstallquery.pagetitle#" cfsqltype="CF_SQL_VARCHAR">
					,<cfqueryparam value="#pageinstallquery.pagenavtitle#" cfsqltype="CF_SQL_VARCHAR">
					,4
					,4295
					,#CreateODBCDateTime(now())#
					)
				SELECT @@IDENTITY pageID
			</cfquery>
			
			<!--- Insert page content --->
			<cfquery name="insertpagecontent" datasource="#request.dsn#">			
				INSERT INTO PageContent
					(
					PageID,
					HTMLContent,
					TemplatePosition,
					CreatorUserID,
					CreateDate,
					ApplicationPK
					)
				VALUES 
					(
					<cfqueryparam value="#insertpage.pageid#" cfsqltype="CF_SQL_INTEGER">
					,<cfqueryparam value="#pageinstallquery.pagecontent#" cfsqltype="CF_SQL_VARCHAR">
					,'c1'
					,4295
					,#CreateODBCDateTime(now())#
					,0
					)
			</cfquery>
		</cfif>
	</cfif>
</cfoutput>
DONE!
