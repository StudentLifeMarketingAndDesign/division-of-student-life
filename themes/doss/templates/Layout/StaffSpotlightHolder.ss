	
<div class="container">
<div id="about" class="content twothirds shadow">
		<h1 class="content-header">$Title</h1>
		<% if Image %>
			<% control Image.SetWidth(570) %><img src="$URL" class="photo" /><% end_control %>
		<% end_if %>
		$Content
		$Form
		
		<% control Children %>
			<div class="spotlight-preview"><a href="$Link">$Image.setWidth(150)</a> <p><a href="$Link">$Title</a></p></div>
		<% end_control %>
		
</div>
	<div class="sidebar">
		<% if Menu(2) %>
			<% include SideNav %>
		<% end_if %>
		$SideBar
	</div>
</div>
