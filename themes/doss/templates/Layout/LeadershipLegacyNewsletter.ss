<script src="{$ThemeDir}/js/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link href='http://fonts.googleapis.com/css?family=Bitter:400,700' rel='stylesheet' type='text/css'>
<link href="http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:200,300,400,700" rel="stylesheet" type="text/css" >
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
		<h1 id="orangebar";>LEADERSHIP LEGACY</h1>
			<img src="{$BaseHref}/themes/doss/images/leadershiplegacy.png" class="leadership" />
		
	

		
		<% if Image %>
			<% control Image.SetWidth(559) %><img src="$URL" alt="Feature Photo" /><% end_control %>
		<% end_if %>
		</div>		
			
			<% else %>
			<div id="leadership-legacy-newsletter-header">
				<h1 id="orangebar";>LEADERSHIP LEGACY</h1>
				<h1>$Title</h1>
				
			<% if Image %>
			<% control Image %>
			<% control CroppedImage(559,455) %>
			<img src="$URL" alt="Feature Photo" />
			<% end_control %>
			<% end_control %>
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
		
			<img src="{$BaseHref}/themes/doss/images/leadershiplegacy_small.png" style="padding: 30px 0px 15px 30px; opacity:.9;" />
			
			<div id="sidebox">
			<% if SideBox %>
				$SideBox
			<% end_if %>
			</div>
		

</div>
