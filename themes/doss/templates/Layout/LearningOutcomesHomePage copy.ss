<div class="container">

	<div class="content twothirds shadow">
	
	<div class="section-container">
	<h1 class="intro-header">$Title</h1>
	<% control AllChildren %>
	
		<% if Odd %>
				<div class="section">
		<% else %>
			<div class="section last">
		<% end_if %>
		
					<% if ExternalURL %>
						<a href="$ExternalURL" target="_blank"><img src="$Image.URL" class="photo" /></a>
					<% else %>
						<img src="$Image.URL" class="photo" />
					<% end_if %>
					<div class="section-content">
					
						
						<% if ExternalURL %>
							<h2 class="section-header"><a href="$ExternalURL" class="external_link" target="_blank" class="external">$Title</a></h2>
							
						<% else %>
							<h2 class="section-header">$Title</h2>
						<% end_if %>
						
						$Content				
					</div>
				</div>
		<% end_control %>
</div>
		<div class="clearfix"></div>
	</div>
	
<div class="sidebar">
	
		$SideBar
		<% include SideNav %>
		
		<!--<div id="at-a-glance" class="side-feature shadow">
		<h2>About the Director of Assessment and Strategic Initiatives</h2>
		<p><img src="$ThemeDir/images/belinda_placeholder" class="director-assessment"/>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. </p>
		<p>Read More..</p>
	</div>-->
	</div>
	
	
</div>
