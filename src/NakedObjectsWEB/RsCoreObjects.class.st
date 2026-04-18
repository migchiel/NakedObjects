Class {
	#name : 'RsCoreObjects',
	#superclass : 'WAComponent',
	#instVars : [
		'id'
	],
	#category : 'NakedObjectsWEB-components',
	#package : 'NakedObjectsWEB',
	#tag : 'components'
}

{ #category : 'rendering' }
RsCoreObjects >> renderContentOn: html [

	| rootClasses |
	rootClasses := RsObject allSubclasses.

	id := UUID new asString.
	super renderContentOn: html.
	html div class: 'mydiv'; id: id;with: [ 
		html div id: 'mydivheader'; with: [html heading level: 2;with: 'Core Objects'].
		rootClasses do: [ :object | html 	paragraph: [html anchor callback: [ ]; with: [html heading level: 3;with: object name ]]]].
	self renderDragScript: html
]

{ #category : 'rendering' }
RsCoreObjects >> renderDragScript: html [

	html html: '<script>dragElement(document.getElementById("', id, '"))</script>'
]
