Class {
	#name : 'RsNakedObjectsDemo',
	#superclass : 'WAComponent',
	#instVars : [
		'header',
		'footer',
		'coreObjects'
	],
	#category : 'NakedObjectsWEB-application',
	#package : 'NakedObjectsWEB',
	#tag : 'application'
}

{ #category : 'testing' }
RsNakedObjectsDemo class >> canBeRoot [
   ^ true
]

{ #category : 'class initialization' }
RsNakedObjectsDemo class >> initialize [ 

	WAAdmin register: self asApplicationAt: 'NakedObjectsDemo'.
   
]

{ #category : 'hooks' }
RsNakedObjectsDemo >> children [

	^ OrderedCollection withAll: { header . coreObjects . footer }
]

{ #category : 'initialization' }
RsNakedObjectsDemo >> initialize [ 

	super initialize.
	header := RsPageHeader new.
	coreObjects := RsCoreObjects new.
	footer := RsPageFooter new
	
]

{ #category : 'rendering' }
RsNakedObjectsDemo >> renderContentOn: html [

	self children do: [ :i | html render: i ] separatedBy: [ html horizontalRule ]
]

{ #category : 'updating' }
RsNakedObjectsDemo >> updateRoot: anHtmlRoot [

	super updateRoot: anHtmlRoot.
	anHtmlRoot beHtml5.
	anHtmlRoot title: 'Naked Objects Demo'
]
