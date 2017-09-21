$(document).ready(function() {
	$("<link/>", {
		   rel: "stylesheet",
		   type: "text/css",
		   href: "css/plugins/footable/footable.core.css"
		}).appendTo("head");
	
    $('.footable').footable();
});
