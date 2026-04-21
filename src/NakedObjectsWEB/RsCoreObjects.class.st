Class {
	#name : 'RsCoreObjects',
	#superclass : 'WAComponent',
	#instVars : [
		'id',
		'rootClasses'
	],
	#category : 'NakedObjectsWEB-components',
	#package : 'NakedObjectsWEB',
	#tag : 'components'
}

{ #category : 'testing' }
RsCoreObjects class >> canBeRoot [
   ^ true
]

{ #category : 'as yet unclassified' }
RsCoreObjects >> jsFrameCloser: html [

	html html: '</div>'');frame.show();}start();</script>'
]

{ #category : 'as yet unclassified' }
RsCoreObjects >> jsFramePreamble: html [


		html html: '<script>function start() {
        const jsFrame = new JSFrame();
        //Create window
        const frame = jsFrame.create({
            title: ''Window'',
            left: 20, top: 20, width: 200, height: 600,
            movable: true,//Enable to be moved  by mouse
            resizable: false,//Enable to be resized by mouse
        });//Show window
						frame.setHTML(''<div style="padding:2px;font-size:20px;color:blue;text-align: center;"'.
]

{ #category : 'rendering' }
RsCoreObjects >> renderContentOn: html [

	super renderContentOn: html.
	self jsFramePreamble: html.
	self renderObjects: html.
	self jsFrameCloser: html
 
]

{ #category : 'rendering' }
RsCoreObjects >> renderObjects: html [

	RsNaked subclassesDo: [ :c | html paragraph: c name ]
]

{ #category : 'updating' }
RsCoreObjects >> updateRoot: anHtmlRoot [

anHtmlRoot script
		beJavascript;
		url: RsNakedObjectsWEBFileLibrary / 'jsframe.js'

]
