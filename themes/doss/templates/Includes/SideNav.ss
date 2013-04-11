<div id="sidenav">
	<% with Level(1) %>
	<h2><a href="$Link">$MenuTitle</a></h2>
	<% end_with %>
	
<ul>
	<% if Menu(2) %>
		<% loop Menu(2) %>
				<li><a href="$Link" class="$LinkOrCurrent">$MenuTitle</a>
					<% if LinkOrSection = section %>
						<ul>
							<% loop Children %>
								<li><a href="$Link" class="$LinkOrCurrent">$MenuTitle</a>
									<% if LinkOrSection = section %>
										<ul>
											<% loop Children %>
												<li class="$LinkOrCurrent"><a class="$LinkOrCurrent" href="$Link">$MenuTitle</a></li>
											<% end_loop %>
										</ul>
									<% end_if %>
								</li>
								</li>
							<% end_loop %>
						</ul>
					<% end_if %>
				</li>
		<% end_loop %>
	<% end_if %>
</ul>
</div>