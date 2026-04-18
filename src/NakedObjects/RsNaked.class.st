Class {
	#name : 'RsNaked',
	#superclass : 'Object',
	#category : 'NakedObjects-Core',
	#package : 'NakedObjects',
	#tag : 'Core'
}

{ #category : 'testing' }
RsNaked class >> isAbstract [ 

	^ self == RsNaked
]

{ #category : 'accessing' }
RsNaked >> title [


	^ self class name
]
