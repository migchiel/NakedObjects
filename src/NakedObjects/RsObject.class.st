Class {
	#name : 'RsObject',
	#superclass : 'RsNaked',
	#category : 'NakedObjects-Core',
	#package : 'NakedObjects',
	#tag : 'Core'
}

{ #category : 'testing' }
RsObject class >> isAbstract [ 

	^ self  == RsObject
]

{ #category : 'accessing' }
RsObject >> name [

	^ self subclassResponsibility 
]
