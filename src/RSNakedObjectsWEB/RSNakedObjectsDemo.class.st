Class {
	#name : 'RSNakedObjectsDemo',
	#superclass : 'WAComponent',
	#category : 'RSNakedObjectsWEB-application',
	#package : 'RSNakedObjectsWEB',
	#tag : 'application'
}

{ #category : 'testing' }
RSNakedObjectsDemo class >> canBeRoot [
   ^ true
]

{ #category : 'class initialization' }
RSNakedObjectsDemo class >> initialize [ 

	WAAdmin register: self asApplicationAt: 'NakedObjectsDemo'.
   
]

{ #category : 'rendering' }
RSNakedObjectsDemo >> renderContentOn: html [
   html text: 'NakedObjectsDemo'
]
