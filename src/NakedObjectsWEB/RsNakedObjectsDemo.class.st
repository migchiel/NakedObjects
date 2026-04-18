Class {
	#name : 'RsNakedObjectsDemo',
	#superclass : 'WAComponent',
	#instVars : [
		'header',
		'footer',
		'coreObjects',
		'circularMenu'
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

	^ OrderedCollection withAll: {circularMenu}
]

{ #category : 'initialization' }
RsNakedObjectsDemo >> initialize [ 

	super initialize.
	header := RsPageHeader new.
	coreObjects := RsCoreObjects new.
	footer := RsPageFooter new.
	circularMenu := RsCircularMenu new.
	
]

{ #category : 'rendering' }
RsNakedObjectsDemo >> renderContentOn: html [

	self children do: [ :i | html render: i ]
	
]

{ #category : 'updating' }
RsNakedObjectsDemo >> updateRoot: anHtmlRoot [

	super updateRoot: anHtmlRoot.
	anHtmlRoot beHtml5.
	anHtmlRoot title: 'Naked Objects Demo'.
	anHtmlRoot link
		type: 'text/css';
		beStylesheet;
		addAll;
		url: RsNakedObjectsWEBFileLibrary / 'nakedobjectsdemo.css';
		url: RsNakedObjectsWEBFileLibrary / 'circularmenu.css'.
		anHtmlRoot script
			beJavascript;
			url: RsNakedObjectsWEBFileLibrary / 'nakedobjectsdemo.js'
]
