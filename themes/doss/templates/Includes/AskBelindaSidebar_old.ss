<h2><a href="/parents-new/ask/">Questions? Ask Belinda!</a></h2>
		<div class="belinda-box">
			<a href="/parents-new/ask/"><img src="$ThemeDir/images/belinda_avatar.png" id="belinda-headshot" /></a>
			<p class="belinda-bio">Belinda Marner is the Assistant Vice President for Student Life and the UI Parents' Association Liaison.</p>
			
			<div style="clear: left"></div>
			
			<% if LatestAnswer %>
			
			<% else %>
				<a href="/parents-new/ask">View all questions and answers</a></p>
			<% end_if %>
			
		</div>
		
		<% if LatestAnswer %>
		
			<% control LatestAnswer %>
				<h3><a href="/parents-new/ask/">View all questions and answers!</a></h3>
				<div id="latest-answer" class="box">
				<blockquote>
					<p class="question"><strong>Q:</strong> $Content</p>
					<p class="answer"><a href="/parents-new/ask/#{$ID}">View Answer!</a></p>
				</blockquote>
				</div>
			<% end_control %>
				
		
		
		<% end_if %>		
				
			
		


			
			<div id="ask-button" class="button">Ask Belinda a question!</div>
			<p>
				<div id="ask-form">
				$AskForm
				</div>

			</div>
