$('#tags').textext({
	plugins : 'tags autocomplete'
}).bind('getSuggestions', function(e, data){
	var list = [
			'Basic',
			'Closure',
			'Cobol',
			'Delphi',
			'Erlang',
			'Fortran',
			'Go',
			'Groovy',
			'Haskel',
			'Java',
			'JavaScript',
			'OCAML',
			'PHP',
			'Perl',
			'Python',
			'Ruby',
			'Scala',
			'Core Java',
			'J2EE',
			'C-Sharp',
			'Spring',
			'Hibernate'
		],
		textext = $(e.target).textext()[0],
		query = (data ? data.query : '') || '';
	$(this).trigger(
		'setSuggestions',
		{ result : textext.itemManager().filter(list, query) }
	);
});


$('#accessibilityTags').textext({
	plugins : 'tags autocomplete'
}).bind('getSuggestions', function(e, data){
	var list = [
			'bhushanp@xpanxion.co.in',
			'jashish@xpanxion.co.in',
			'vinays@xpanxion.co.in',
			'aniruddht@xpanxion.co.in',
			'kartikeyk@xpanxion.co.in',
			'mohanb@xpanxion.co.in',
			'vishals@xpancion.co.in'
		],
		textext = $(e.target).textext()[0],
		query = (data ? data.query : '') || '';
	$(this).trigger(
		'setSuggestions',
		{ result : textext.itemManager().filter(list, query) }
	);
});


CKEDITOR.config.height = 275;
CKEDITOR.config.width = 'auto';
CKEDITOR.config.toolbarGroups = [
	{ name: 'document', groups: [ 'mode', 'document', 'doctools' ] },
	{ name: 'clipboard', groups: [ 'clipboard', 'undo' ] },
	{ name: 'editing', groups: [ 'find', 'selection', 'spellchecker', 'editing' ] },
	{ name: 'forms', groups: [ 'forms' ] },
	{ name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
	{ name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi', 'paragraph' ] },
	{ name: 'links', groups: [ 'links' ] },
	{ name: 'insert', groups: [ 'insert' ] },
	{ name: 'styles', groups: [ 'styles' ] },
	{ name: 'colors', groups: [ 'colors' ] },
	{ name: 'tools', groups: [ 'tools' ] },
	{ name: 'others', groups: [ 'others' ] },
	{ name: 'about', groups: [ 'about' ] }
];
CKEDITOR.config.removeButtons = 'NewPage,Print,Templates,PasteText,SelectAll,Scayt,Form,Checkbox,Radio,TextField,Textarea,Select,Button,ImageButton,HiddenField,RemoveFormat,CopyFormatting,Blockquote,CreateDiv,Language,Anchor,Flash,Smiley,SpecialChar,PageBreak,Iframe,About';

CKEDITOR.editorConfig = function( config ) {
	config.language = 'es';
	config.uiColor = '#F7B42C';
	config.height = 300;
	config.toolbarCanCollapse = true;
};
var initRichTextEditor = ( function() {
	var wysiwygareaAvailable = isWysiwygareaAvailable(), isBBCodeBuiltIn = !!CKEDITOR.plugins.get( 'bbcode' );
	return function() {
		var editorElement = CKEDITOR.document.getById( 'editor' );
		if ( isBBCodeBuiltIn ) {
			editorElement1.setHtml(
				'Hello world!\n\n' +
				'I\'m an instance of'
			);
		}
		if ( wysiwygareaAvailable ) {
			CKEDITOR.replace( 'editor' );
		} else {
			editorElement.setAttribute( 'contenteditable', 'true' );
			CKEDITOR.inline( 'editor' );
		}
	};
	function isWysiwygareaAvailable() {
		if ( CKEDITOR.revision == ( '%RE' + 'V%' ) ) {
			return true;
		}
		return !!CKEDITOR.plugins.get( 'wysiwygarea' );
	};
} )();
initRichTextEditor();

$( document ).ready(function() {
	setTimeout(changeBackgroundColorOfEditorToolbar, 200);
});

function changeBackgroundColorOfEditorToolbar() {
	$('#cke_1_top').css('background-color','#BCF8B9');
}

