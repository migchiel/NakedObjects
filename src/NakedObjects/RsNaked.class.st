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

{ #category : 'as yet unclassified' }
RsNaked >> inspectionItems: aBuilder [

	<inspectorPresentationOrder: 1 title: 'API'>
	^ aBuilder newTable
		  addStyle: 'stList';
		  addColumn: (SpStringTableColumn new
				   title: 'Name';
				   evaluated: [ :each | each ];
				   formatted: [ :key | StObjectPrinter asTruncatedTextFrom: key ];
				   beSortable);
		  items: (self methodsWithProtocol: #api)
]

{ #category : 'as yet unclassified' }
RsNaked >> methodsWithProtocol: aProtocol [

	^ self class methods select: [ :m | m protocol name = aProtocol ]
]

{ #category : 'accessing' }
RsNaked >> title [


	^ self class name
]
