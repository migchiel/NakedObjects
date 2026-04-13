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
			 	footer.
				coreObjects }
]

{ #category : 'initialization' }
MainPage >> initialize [

	super initialize.
	header := RSPageHeader new.
	coreObjects := RSCoreObjects new.
	footer := RSPageFooter new.
	
]

{ #category : 'rendering' }
MainPage >> renderContentOn: html [

	html render: header.
	html render: coreObjects.
	html render: footer
]
