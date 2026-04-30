Class {
	#name : 'RsPerson',
	#superclass : 'RsObject',
	#category : 'NakedObjectsDemo-Objects',
	#package : 'NakedObjectsDemo',
	#tag : 'Objects'
}

{ #category : 'NakedCreate' }
RsPerson >> create [ 

]

{ #category : 'NakedDelete' }
RsPerson >> delete [
]

{ #category : 'NakedList' }
RsPerson >> list [

	^ #( 'Jim' 'John' 'Hank' )
]

{ #category : 'accessing' }
RsPerson >> name [

	^ 'Person'
]
