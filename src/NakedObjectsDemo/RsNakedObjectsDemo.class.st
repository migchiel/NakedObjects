Class {
	#name : 'RsNakedObjectsDemo',
	#superclass : 'RsNakedObjectsApplication',
	#category : 'NakedObjectsDemo-Application',
	#package : 'NakedObjectsDemo',
	#tag : 'Application'
}

{ #category : 'initialization' }
RsNakedObjectsDemo >> initialize [ 

	coreObjects := OrderedCollection with: (RsTeam new) with: (RsProject new) with: (RsPerson new)
]
