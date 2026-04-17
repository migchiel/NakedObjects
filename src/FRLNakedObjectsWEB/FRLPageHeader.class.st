Class {
	#name : 'FRLPageHeader',
	#superclass : 'WAComponent',
	#category : 'FRLNakedObjectsWEB-components',
	#package : 'FRLNakedObjectsWEB',
	#tag : 'components'
}

{ #category : 'rendering' }
FRLPageHeader >> renderContentOn: html [

	super renderContentOn: html.
	html heading level: 1;with: ' HEADER '
]
