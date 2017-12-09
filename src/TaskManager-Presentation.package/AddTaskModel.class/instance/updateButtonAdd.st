private
updateButtonAdd

	((textInputDescription text notEmpty) and: textInputName text notEmpty)
		ifTrue: [ buttonAdd  enabled: true ]
		ifFalse: [ buttonAdd enabled: false ]