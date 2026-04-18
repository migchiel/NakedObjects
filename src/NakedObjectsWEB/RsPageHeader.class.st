Class {
	#name : 'RsPageHeader',
	#superclass : 'WAComponent',
	#category : 'NakedObjectsWEB-components',
	#package : 'NakedObjectsWEB',
	#tag : 'components'
}

{ #category : 'rendering' }
RsPageHeader >> renderContentOn: html [

	super renderContentOn: html.
	html heading level: 1;with: ' HEADER '
]
