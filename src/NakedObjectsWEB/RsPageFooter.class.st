Class {
	#name : 'RsPageFooter',
	#superclass : 'WAComponent',
	#category : 'NakedObjectsWEB-components',
	#package : 'NakedObjectsWEB',
	#tag : 'components'
}

{ #category : 'rendering' }
RsPageFooter >> renderContentOn: html [

	super renderContentOn: html.
	html
		heading level: 1;with: ' FOOTER '
]
