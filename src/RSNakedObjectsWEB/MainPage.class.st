Class {
	#name : 'MainPage',
	#superclass : 'WAComponent',
	#instVars : [
		'header',
		'footer',
		'coreObjects'
	],
	#category : 'RSNakedObjectsWEB-pages',
	#package : 'RSNakedObjectsWEB',
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
	header := RSPageHeader new.
	coreObjects := RSCoreObjects new.
	footer := RSPageFooter new
]

{ #category : 'rendering' }
MainPage >> renderContentOn: html [

	self children do: [ :child | html render: child ]
]
