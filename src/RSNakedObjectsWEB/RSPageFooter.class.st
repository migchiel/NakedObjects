Class {
	#name : 'RSPageFooter',
	#superclass : 'WAComponent',
	#category : 'RSNakedObjectsWEB-components',
	#package : 'RSNakedObjectsWEB',
	#tag : 'components'
}

{ #category : 'rendering' }
RSPageFooter >> renderContentOn: html [
	
	html break;break;text: ' FOOTER '
]
