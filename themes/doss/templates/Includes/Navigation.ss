<div class="container">
	<div id="navigation">
		<a href="{$BaseHref}"><img src="{$ThemeDir}/images/logo.png" class="logo" alt="Logo" /></a>
		<ul>
			<% control Menu(1) %>
				<li id="nav-{$URLSegment}" class="navmode-$LinkingMode"><a href="$Link">$MenuTitle</a></li>
			<% end_control %>
		</ul>
	</div>
</div>