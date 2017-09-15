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