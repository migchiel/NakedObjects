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
	rootClasses do: [ :object |
			html div: [ html anchor
       callback: [ Smalltalk beep ];
       with: [ html heading level: 2; with: object name ]]]
]
