$('#posts').append('<%= escape_javascript(render(@post)) %>');
$('#posts > li:last').css('background-color', 'red')
$('#post_form > form')[0].reset();