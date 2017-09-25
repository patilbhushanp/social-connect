$(function () {
	$('#side-menu').metisMenu({
		toggle: false
	});
	
	$('.small-chat-box .content').slimScroll({
        height: '234px',
        railOpacity: 0.4
    });
});


function showChatWindow(userName){
	var htmlText = $('#chatRoom').html();
	htmlText = htmlText.replace(/CHAT_USER/g, userName);
	$('#chatRoom').html(htmlText);
	$('#chatRoom').addClass('active');
}

function closeChatWindow(){
	$('#chatRoom').removeClass('active');
}