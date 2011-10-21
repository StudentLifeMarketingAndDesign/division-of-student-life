<div id="sidenav">
	<% control Level(1) %>
	<h2><a href="$Link">$MenuTitle</a></h2>
	<% end_control %>
	
<ul>
	<% if Menu(2) %>
		<% control Menu(2) %>
				<li><a href="$Link" class="$LinkOrCurrent">$MenuTitle</a>
					<% if LinkOrSection = section %>
						<ul>
							<% control Children %>
								<li class="$LinkOrCurrent"><a class="$LinkOrCurrent" href="$Link">$MenuTitle</a></li>
							<% end_control %>
						</ul>
					<% end_if %>
				</li>
		<% end_control %>
	<% end_if %>
</ul>
</div>