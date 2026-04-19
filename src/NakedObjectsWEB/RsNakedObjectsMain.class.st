Class {
	#name : 'RsNakedObjectsMain',
	#superclass : 'WAComponent',
	#instVars : [
		'header',
		'footer',
		'coreObjects',
		'circularMenu'
	],
	#category : 'NakedObjectsWEB-pages',
	#package : 'NakedObjectsWEB',
	#tag : 'pages'
}

{ #category : 'testing' }
RsNakedObjectsMain class >> canBeRoot [
   ^ true
]

{ #category : 'class initialization' }
RsNakedObjectsMain class >> initialize [ 

	WAAdmin register: self asApplicationAt: 'NakedObjectsDemo'.
   
]

{ #category : 'hooks' }
RsNakedObjectsMain >> children [

	^ OrderedCollection withAll: { coreObjects }
]

{ #category : 'initialization' }
RsNakedObjectsMain >> initialize [ 

	super initialize.
	header := RsPageHeader new.
	coreObjects := RsCoreObjects new.
	footer := RsPageFooter new.
	circularMenu := RsCircularMenu new.
	
]

{ #category : 'rendering' }
RsNakedObjectsMain >> renderContentOn: html [

	self children do: [ :i | html render: i ]
]

{ #category : 'updating' }
RsNakedObjectsMain >> updateRoot: anHtmlRoot [

	super updateRoot: anHtmlRoot.
	anHtmlRoot beHtml5.
	anHtmlRoot title: 'Naked Objects Demo'.
	anHtmlRoot link
		type: 'text/css';
		beStylesheet;
		addAll;
		url: RsNakedObjectsWEBFileLibrary / 'nakedobjectsdemo.css'.
	anHtmlRoot link
		type: 'text/css';
		beStylesheet;
		addAll;
		url: RsNakedObjectsWEBFileLibrary / 'circularmenu.css'.
	anHtmlRoot script
		beJavascript;
		url: RsNakedObjectsWEBFileLibrary / 'nakedobjectsdemo.js'
]
