Class {
	#name : 'MainPage',
	#superclass : 'WAComponent',
	#instVars : [
		'header',
		'footer',
		'coreObjects'
	],
	#category : 'FRLNakedObjectsWEB-pages',
	#package : 'FRLNakedObjectsWEB',
	#tag : 'pages'
}

{ #category : 'hooks' }
MainPage >> children [

	^ OrderedCollection withAll: {
			  header.
			  coreObjects.
			  footer }
]

{ #category : 'initialization' }
MainPage >> initialize [

	super initialize.
	header := FRLPageHeader new.
	coreObjects := FRLCoreObjects new.
	footer := FRLPageFooter new.
	
]

{ #category : 'rendering' }
MainPage >> renderContentOn: html [

	self children do: [ :child | html render: child ]
]
