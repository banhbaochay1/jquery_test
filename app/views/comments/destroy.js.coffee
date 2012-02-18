id = <%= j(@comment.id.to_s) %>;
$('#comment_' + id)
	.effect('highlight', {color: 'red'}, 2000)
	.fadeOut(400, ->
		$(this).remove();
		);
