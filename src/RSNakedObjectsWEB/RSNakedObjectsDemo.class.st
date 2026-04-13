Class {
	#name : 'RSNakedObjectsDemo',
	#superclass : 'WAComponent',
	#instVars : [
		'mainPage'
	],
	#category : 'RSNakedObjectsWEB-application',
	#package : 'RSNakedObjectsWEB',
	#tag : 'application'
}

{ #category : 'testing' }
RSNakedObjectsDemo class >> canBeRoot [
   ^ true
]

{ #category : 'class initialization' }
RSNakedObjectsDemo class >> initialize [ 

	WAAdmin register: self asApplicationAt: 'NakedObjectsDemo'.
   
]

{ #category : 'hooks' }
RSNakedObjectsDemo >> children [

	^ OrderedCollection with: mainPage 
]

{ #category : 'initialization' }
RSNakedObjectsDemo >> initialize [ 

	super initialize.
	mainPage := MainPage new
]

{ #category : 'rendering' }
RSNakedObjectsDemo >> renderContentOn: html [

	html render: mainPage 
]
