Class {
	#name : 'FRLCoreObjects',
	#superclass : 'WAComponent',
	#category : 'FRLNakedObjectsWEB-components',
	#package : 'FRLNakedObjectsWEB',
	#tag : 'components'
}

{ #category : 'rendering' }
FRLCoreObjects >> renderContentOn: html [

	| rootClasses |
	rootClasses := FRLObject allSubclasses.

	super renderContentOn: html.
	rootClasses allButLastDo: [ :object |
			html
				text: object name;
				break ].
	html text: rootClasses last name
]
