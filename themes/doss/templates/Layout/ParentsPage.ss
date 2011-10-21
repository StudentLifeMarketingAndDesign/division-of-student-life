<script type="text/javascript">
jQuery(document).ready(function() {
	jQuery('#ask-form').hide();
	
	jQuery('#ask-button').click(function(){
		jQuery('#ask-form').show('slide');
		return false;
	});
});

</script>


<div class="container">
<div id="about" class="content twothirds shadow">
		<h1 class="content-header">$Title</h1>
		<% if Image %>
			<% control Image.SetWidth(570) %><img src="$URL" class="photo" /><% end_control %>
		<% end_if %>
		$Content
		$Form
		
		
</div>
	<div class="sidebar">
		
		<% include SideNav %>
		<div id="at-a-glance" class="side-feature shadow recaptcha-form">
<h2><a href="/parents-new/ask/">Questions? Ask Belinda!</a></h2>
		<div class="belinda-box">
			<a href="/parents-new/ask/"><img src="$ThemeDir/images/belinda_avatar.png" id="belinda-headshot" /></a>
			<p class="belinda-bio">Belinda Marner is the Assistant Vice President for Student Life and the UI Parents' Association Liaison.</p>
			
			<div style="clear: left"></div>
			
		
			
		</div>
		
				
			
		


			
		<a href="/parents-new/ask/" class="button ask-button">Ask Belinda a Question!</a>
		<a href="/parents-new/ask/" class="button view-answers">View Answers</a></div>
			
			</div>
	
	
	</div>
</div>
