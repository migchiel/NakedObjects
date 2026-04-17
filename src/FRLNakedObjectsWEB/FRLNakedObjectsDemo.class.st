Class {
	#name : 'FRLNakedObjectsDemo',
	#superclass : 'WAComponent',
	#instVars : [
		'mainPage'
	],
	#category : 'FRLNakedObjectsWEB-application',
	#package : 'FRLNakedObjectsWEB',
	#tag : 'application'
}

{ #category : 'testing' }
FRLNakedObjectsDemo class >> canBeRoot [
   ^ true
]

{ #category : 'class initialization' }
FRLNakedObjectsDemo class >> initialize [ 

	WAAdmin register: self asApplicationAt: 'NakedObjectsDemo'.
   
]

{ #category : 'hooks' }
FRLNakedObjectsDemo >> children [

	^ OrderedCollection with: mainPage 
]

{ #category : 'initialization' }
FRLNakedObjectsDemo >> initialize [ 

	super initialize.
	mainPage := MainPage new
]

{ #category : 'rendering' }
FRLNakedObjectsDemo >> renderContentOn: html [

	html render: mainPage 
]

{ #category : 'updating' }
FRLNakedObjectsDemo >> updateRoot: anHtmlRoot [

	super updateRoot: anHtmlRoot.
	anHtmlRoot beHtml5.
	anHtmlRoot title: 'Naked Objects Demo'
]
