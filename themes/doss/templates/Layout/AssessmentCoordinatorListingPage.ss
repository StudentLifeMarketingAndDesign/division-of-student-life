
<div class="container">
<div id="assessment-coordinators" class="content twothirds shadow">
<h1 class="intro-header">$Title</h1>
		
				
		<% if Image %>
			<% control Image.SetWidth(570) %><img src="$URL" class="photo" /><% end_control %>
		<% end_if %>
		$Content
		
		<% if Children %>
			
			<% control Children %>
			
			<div class="assessment-coordinator shadow">
			
			<h2>$Title</h2>
			$Content
			
			</div>
			
			
			<% end_control %>
			
			
		
		
		
		<% end_if %>
		
			

</div><!-- end container -->
	<div class="sidebar">
	
		$SideBar
		<% include SideNav %>
		
		<!--<div id="at-a-glance" class="side-feature shadow">
		<h2>About the Director of Assessment and Strategic Initiatives</h2>
		<p><img src="$ThemeDir/images/belinda_placeholder" class="director-assessment"/>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. </p>
		<p>Read More..</p>-->
	</div>
	</div>
</div>
