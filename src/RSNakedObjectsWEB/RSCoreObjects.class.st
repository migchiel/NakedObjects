Class {
	#name : 'RSCoreObjects',
	#superclass : 'WAComponent',
	#category : 'RSNakedObjectsWEB-components',
	#package : 'RSNakedObjectsWEB',
	#tag : 'components'
}

{ #category : 'rendering' }
RSCoreObjects >> renderContentOn: html [

	| rootClasses |
	rootClasses := RSRoot allSubclasses.

	super renderContentOn: html.
	rootClasses allButLastDo: [ :object |
			html
				text: object name;
				break ].
	html text: rootClasses last name
]
