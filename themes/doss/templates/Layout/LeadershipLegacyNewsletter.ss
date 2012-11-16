<script src="{$ThemeDir}/js/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link href='http://fonts.googleapis.com/css?family=Bitter:400,700' rel='stylesheet' type='text/css'>
<% require themedCSS(leadershiplegacy) %>
 <link rel="stylesheet" type="text/css" href="{$ThemeDir}/js/fancybox/jquery.fancybox-1.3.4.css" />
	<script type="text/javascript">
		$(document).ready(function() {
			$("a.slideshow-image").fancybox();
			$("a.iframe-slideshow").fancybox();
		});
	</script>


<% if BackgroundColor = e9e9e9 %>
	<style>
		#leadership-legacy-newsletter-content h1{
		
			color: #003448;
		
		}
	
	
	</style>

<% end_if %>
<div class="container">
<!--<div id="leadership-legacy-newsletter" class="content shadow" style="background: $BackgroundColor">-->
<div id="leadership-legacy-newsletter" class="content shadow">
	<% if isCover %>
	<div id="leadership-legacy-newsletter-header" class="cover">
	
			<span id="leadership" style="height: 70px; font-size: 67px; font-weight: bold;">LEADERSHIP</span>
			<span id="legacy" style="height: 60px; font-size: 50px; letter-spacing:30px;">LEGACY</span>
		
	

		
		<% if Image %>
			<% control Image.SetWidth(650) %><img src="$URL" alt="Feature Photo" /><% end_control %>
		<% end_if %>
		</div>		
			
			<% else %>
			<div id="leadership-legacy-newsletter-header">
				<span class="leadership-legacy-newsletter-header-context"><a href="{$BaseHref}/2011-leadership-legacy-newsletter/">Division of Student Life Annual Report 2011</a></span>
				<h1>$Title</h1>
				
			<% if Image %>
			<% control Image.SetWidth(650) %><img src="$URL" alt="Feature Photo" /><% end_control %>
		<% end_if %>
			</div>
			<% end_if %>
		<div id="leadership-legacy-newsletter-content">

			$Content
			
			<% if isCover %>
				<h3>Table of Contents</h3>
				<ul class="leadership-legacy-newsletter-toc">

					<% control Pages %>
					
					<li><a href="$Link">$MenuTitle</a></li>
					<% end_control %>
				
				 
				</ul>
			
			<% end_if %>
			
		</div>
		$Form
		<! something here -->
		
</div>
	<div class="leadership-legacy-newsletter-nav">
		<ul>
			
			<% control Cover %>
			<li class="$LinkOrCurrent"><a href="$Link">$MenuTitle</a></li>

			<% end_control %>
			<% control Pages %>
			<li class="$LinkOrCurrent"><a href="$Link">$MenuTitle</a></li>
			
			<% end_control %>
		
		</ul>
	
	</div>
	<div class="leadership-legacy-newsletter-sidebar">
	
		<% if LeadershipLegacySidebarImage %>
			<% control LeadershipLegacySidebarImage %>
				<a href="$Image.URL" class="slideshow-image" title="$Caption"><% control Image.SetWidth(290) %> <img src="$URL" class="shadow"><% end_control %></a>
			<% end_control %>
		<% end_if %>
		<% if FeatureBoxText %>
		<div id="leadership-legacy-newsletter-featurebox" class="side-feature shadow">
			$FeatureBoxText
		</div>
		<% end_if %>
		
		<% if RssPosts %>
			<div id="feed-sidebar" class="shadow sidebar-box leadership-legacy-newsletter-feed">
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
