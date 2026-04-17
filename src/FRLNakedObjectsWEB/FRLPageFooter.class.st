Class {
	#name : 'FRLPageFooter',
	#superclass : 'WAComponent',
	#category : 'FRLNakedObjectsWEB-components',
	#package : 'FRLNakedObjectsWEB',
	#tag : 'components'
}

{ #category : 'rendering' }
FRLPageFooter >> renderContentOn: html [

	super renderContentOn: html.
	html
		break;
		break.
	html
		heading level: 1;with: ' FOOTER '
]
