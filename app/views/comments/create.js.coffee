$('#post_comments_<%= j(@post.id.to_s) %>')
	.append('<%= j(render(:partial => "/comments/comment_view", :object => @comment, :as => :comment)) %>');

$('#comment_<%= j(@comment.id.to_s) %>')
	.effect('highlight', {color: 'red'}, 3000);

$('#form_comment_<%= j(@post.id.to_s) %>')[0].reset();

