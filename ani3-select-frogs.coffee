#Array comprehension, here it goes!
bars = ($j "#ani3_bar#{n}" for n in [0..4])
# Could be done with CSS id selectors, which is
# kinda fast, but has to be 'jQueryfied' for our needs,
# i.e. every HTMLDivElement turned to a jQuery object:
elements = $j '[id*=ani3_bar]'
bars = ($j(elements.eq i) for i in [0..4])

$j('#ani3_select').click ->
	b.css('border-color', 'red') for b in bars