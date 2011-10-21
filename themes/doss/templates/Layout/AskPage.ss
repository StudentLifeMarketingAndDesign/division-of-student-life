<script type="text/javascript">
/*jQuery(document).ready(function() {
	jQuery('#ask-form').hide();
	
	jQuery('#ask-button').click(function(){
		jQuery('#ask-form').show('slide');
		return false;
	});
});
*/
</script>	
<div class="container">
<div id="ask" class="content twothirds shadow">

		<h1 class="content-header">$Title</h1>
		<% if Image %>
			<% control Image.SetWidth(570) %><img src="$URL" class="photo" /><% end_control %>
		<% end_if %>
		
		<% if Success %>
			<div id="ask-success">
			<p>Thank you for submitting your question to Belinda! Your question will be read, responded to, and possibly posted on this page. Please check back!</p>
			
			</div>
		
		<% end_if %>
		
		
		<% if Questions %>
		
		
		<div id="ask-toc" >
			<ul>
			<% control Categories %>
		
				<% if Questions %>
					<li><a href="#category-{$Name}"><strong>$Name</strong></a>
						<ul>
						<% control Questions %>
							<li><a href="#{$ID}">$Content</a></li>
						
						<% end_control %>
						</ul>
					</li>
				<% end_if %>
			
			<% end_control %>
			</ul>	
			</ul> 
			
		</div>

		$Content
		<div style="clear:right"></div>
			<ul id="questions">
				<% control Categories %>
						
					<% if Questions %>
						<li><h2 id="category-$Name">$Name</h2>
						
							<ul>
							<% control Questions %>
							
							
								<li id="{$ID}">
								 
									<h3>$Content</h3>
							
									$Answer 
									<p><div class="back-top"><a href="/parents-new/ask-belinda/#top">Back to Top</a></div></p>
									<div style="clear: right"></div>
								</li>
							
							<% end_control %>
							</ul>
						</li>
					<% end_if %>
		
				
				<% end_control %>
			</ul>	
		<% else %>
		<h2>Ask us a question!</h2>
		<p>Ask us a question on the right. We'll post the answers here soon.</p>
		
		<% end_if %>
		
		
</div>
	<div class="sidebar">
		$SideBar
		
		<div id="at-a-glance" class="side-feature shadow recaptcha-form">
			<% include AskBelindaSidebar %>	
		</div>

		
		
	</div>
</div>
