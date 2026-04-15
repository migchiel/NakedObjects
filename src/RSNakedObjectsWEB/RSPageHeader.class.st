Class {
	#name : 'RSPageHeader',
	#superclass : 'WAComponent',
	#category : 'RSNakedObjectsWEB-components',
	#package : 'RSNakedObjectsWEB',
	#tag : 'components'
}

{ #category : 'rendering' }
RSPageHeader >> renderContentOn: html [

	super renderContentOn: html.
	html heading
		level: 1;
		with: ' HEADER '.
	html
		horizontalRule
]
