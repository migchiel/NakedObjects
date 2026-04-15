Class {
	#name : 'RSCoreObjects',
	#superclass : 'WAComponent',
	#instVars : [
		'rootClasses'
	],
	#category : 'RSNakedObjectsWEB-components',
	#package : 'RSNakedObjectsWEB',
	#tag : 'components'
}

{ #category : 'initialization' }
RSCoreObjects >> initialize [
	
	super initialize.
	rootClasses := RSRoot allSubclasses collect: [ :c |
		               RSCoreObject withName: c name ]
]

{ #category : 'rendering' }
RSCoreObjects >> renderContentOn: html [

	super renderContentOn: html.
	rootClasses
		do: [ :each | html render: each ]
		separatedBy: [ html horizontalRule ]
]
