$('#user_<%= j(@user_id) %> .user_profile')
	.toggle('slow');
old_value = $('#show_hide_<%= j(@user_id) %>').text()
new_value = if old_value is "Show" then "Hide" else "Show"
$('#show_hide_<%= j(@user_id) %>').text(new_value)


