Class {
	#name : 'RSPageFooter',
	#superclass : 'WAComponent',
	#category : 'RSNakedObjectsWEB-components',
	#package : 'RSNakedObjectsWEB',
	#tag : 'components'
}

{ #category : 'rendering' }
RSPageFooter >> renderContentOn: html [

	super renderContentOn: html.
	html horizontalRule.
	html heading
		level: 1;
		with: ' FOOTER '
]
