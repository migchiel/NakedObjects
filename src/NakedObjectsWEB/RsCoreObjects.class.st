Class {
	#name : 'RsCoreObjects',
	#superclass : 'WAComponent',
	#category : 'NakedObjectsWEB-components',
	#package : 'NakedObjectsWEB',
	#tag : 'components'
}

{ #category : 'rendering' }
RsCoreObjects >> renderContentOn: html [

	| rootClasses |
	rootClasses := RsObject allSubclasses.

	super renderContentOn: html.
	rootClasses allButLastDo: [ :object |
			html
				text: object name;
				break ].
	html text: rootClasses last name
]
