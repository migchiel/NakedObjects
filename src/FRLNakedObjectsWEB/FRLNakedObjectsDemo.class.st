Class {
	#name : 'FRLNakedObjectsDemo',
	#superclass : 'WAComponent',
	#instVars : [
		'header',
		'footer',
		'coreObjects'
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

	^ OrderedCollection withAll: { header . coreObjects . footer }
]

{ #category : 'initialization' }
FRLNakedObjectsDemo >> initialize [ 

	super initialize.
	header := FRLPageHeader new.
	coreObjects := FRLCoreObjects new.
	footer := FRLPageFooter new
	
]

{ #category : 'rendering' }
FRLNakedObjectsDemo >> renderContentOn: html [

	self children do: [ :i | html render: i ] separatedBy: [ html horizontalRule ]
]

{ #category : 'updating' }
FRLNakedObjectsDemo >> updateRoot: anHtmlRoot [

	super updateRoot: anHtmlRoot.
	anHtmlRoot beHtml5.
	anHtmlRoot title: 'Naked Objects Demo'
]
