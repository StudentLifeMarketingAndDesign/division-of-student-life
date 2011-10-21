
<div class="container">
	<div id="campus_life_intro" class="intro" style="background:url($HeaderImage.URL)">
		<h1 class="intro-header">$Title</h1>
		$Content
	</div>
</div>
<div class="container">
	<div class="content full shadow">
	
	<div class="section-container">
	<% control Children %>
	
		<% if Odd %>
				<div class="section">
		<% else %>
			<div class="section last">
		<% end_if %>
		
			<% if Image %>
					<% if ExternalURL %>
						<a href="$ExternalURL" target="_blank">
						
						<img src="$Image.URL" class="photo" alt="Feature Photo" /></a>
					<% else %>
						<img src="$Image.URL" class="photo" alt="Feature Photo" />
					<% end_if %>
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
</div>
