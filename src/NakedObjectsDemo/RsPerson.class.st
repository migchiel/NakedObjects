Class {
	#name : 'RsPerson',
	#superclass : 'RsObject',
	#category : 'NakedObjectsDemo-Objects',
	#package : 'NakedObjectsDemo',
	#tag : 'Objects'
}

{ #category : 'api' }
RsPerson >> create [ 

]

{ #category : 'api' }
RsPerson >> delete [
]

{ #category : 'api' }
RsPerson >> list [
	<operation: 'list'>
	^ #( 'Jim' 'John' 'Hank' )
]

{ #category : 'accessing' }
RsPerson >> name [

	^ 'Person'
]
