
<div class="container">
<div id="student-learning" class="content twothirds shadow">
<h1 class="intro-header">$Title</h1>
		
				
		<% if Image %>
			<% control Image.SetWidth(570) %><img src="$URL" class="photo" /><% end_control %>
		<% end_if %>
		$Content
		<% if Children %>
			<div id="resource-preview-container">
				<% control Children %>
		
					<div class="resource preview first multicultural">
						<div class="resource-content">
							<h3><a href="$Link">$Title</a></h3>
							<p>$Content.Summary(40) <a href="$Link">[...]</a></p>
							<p class="read-more"><a href="$Link">Read more...</a></p>
							<div class="clearfix"></div>
						</div>
						
					</div>
				<% end_control %>
				</div><!-- end resource preview container -->
		<% end_if %>
		

			<div style="clear: left"></div>
		

</div><!-- end container -->
	<div class="sidebar">
	
		$SideBar
		<% include SideNav %>
		
		<!--<div id="at-a-glance" class="side-feature shadow">
			<h2>About the Director of resource and Strategic Initiatives</h2>
			<p><img src="$ThemeDir/images/belinda_placeholder" class="director-resource"/>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. </p>
			<p>Read More..</p>
		</div>-->
	</div>
</div>
