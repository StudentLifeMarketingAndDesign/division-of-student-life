 <script src="{$ThemeDir}/js/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
 <link rel="stylesheet" type="text/css" href="{$ThemeDir}/js/fancybox/jquery.fancybox-1.3.4.css" />
	<script type="text/javascript">
		$(document).ready(function() {
			$("a.slideshow-image").fancybox();
		});
	</script>


<% if BackgroundColor = e9e9e9 %>
	<style>
		#annual-report-content h1{
		
			color: #003448;
		
		}
	
	
	</style>

<% end_if %>
<div class="container">
<!--<div id="annual-report" class="content shadow" style="background: $BackgroundColor">-->
<div id="annual-report" class="content shadow">
	<% if Cover %>
	<div id="annual-report-header" class="cover">
	
			<img src="$ThemeDir/images/annual_report_cover.png" />
		</div>		
		<% end_if %>
		
	

		
		<% if Image %>
			<% control Image.SetWidth(650) %><img src="$URL" alt="Feature Photo" /><% end_control %>
		<% end_if %>
		<% if Cover %>
			
			<% else %>
			<div id="annual-report-header">
				<span class="annual-report-header-context"><a href="{$BaseHref}/2011-annual-report/">Division of Student Life Annual Report 2011</a></span>
				<h1>$Title</h1>
			</div>
			<% end_if %>
		<div id="annual-report-content">

			$Content
			
			<% if Cover %>
				<h3>Table of Contents</h3>
				<ul class="annual-report-toc">

					<% control AnnualReportPages %>
					
					<li><a href="$Link">$MenuTitle</a></li>
					<% end_control %>
				
				 
				</ul>
			
			<% end_if %>
			
		</div>
		$Form
		<! something here -->
		
</div>
	<div class="annual-report-nav">
		<ul>
			
			<% control AnnualReportCover %>
			<li class="$LinkOrCurrent"><a href="$Link">$MenuTitle</a></li>

			<% end_control %>
			<% control AnnualReportPages %>
			<li class="$LinkOrCurrent"><a href="$Link">$MenuTitle</a></li>
			
			<% end_control %>
		
		</ul>
	
	</div>
	<div class="annual-report-sidebar">
	
	
		<% control SidebarImage %>
			<a href="$Image.URL" class="slideshow-image" title="$Caption"><% control Image.SetWidth(290) %> <img src="$URL" class="shadow"><% end_control %></a>
		<% end_control %>
		
		<% if FeatureBoxText %>
		<div id="annual-report-featurebox" class="side-feature shadow">
			$FeatureBoxText
		</div>
		<% end_if %>
		
		<% if RssPosts %>
			<div id="feed-sidebar" class="shadow sidebar-box annual-report-feed">
			<h2><% if AltFeedTitle %>$AltFeedTitle<% else %>$MenuTitle<% end_if %><br />posts from <a href="http://blog.studentlife.uiowa.edu/">our blog</a>!</h2>
			<ul>			
			<% control RssPosts %>
				
				
				<li class="$EvenOdd"><h3><a href="$Link">$Title</a></h3>
				<p>$Description.Summary(10) <a href="$Link">[read more]</a></p>
				</li>
				
				<% end_control %>
			</ul>
			<p><a href="http://blog.studentlife.uiowa.edu/">See all blog posts</a></p>
			</div>
		<% end_if %>
		
		</div>
		

</div>
