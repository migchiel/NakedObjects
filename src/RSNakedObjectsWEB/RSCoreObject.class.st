Class {
	#name : 'RSCoreObject',
	#superclass : 'WAComponent',
	#instVars : [
		'coreObject'
	],
	#category : 'RSNakedObjectsWEB-components',
	#package : 'RSNakedObjectsWEB',
	#tag : 'components'
}

{ #category : 'accessing' }
RSCoreObject class >> withName: aClassName [

	^ self basicNew
		  initialize;
		  coreObject: aClassName
]

{ #category : 'accessing' }
RSCoreObject >> coreObject [

	^ coreObject
]

{ #category : 'accessing' }
RSCoreObject >> coreObject: anObject [

	coreObject := anObject
]

{ #category : 'rendering' }
RSCoreObject >> renderContentOn: html [

	super renderContentOn: html.
	html heading
		level: 2;
		with: coreObject
]
