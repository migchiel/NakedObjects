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
		  items: (self class methods select: [ :m |
				   m protocol name beginsWith: #'Naked' ] thenCollect: [ :m | m protocol name withoutPrefix: #'Naked']) asSet asArray;
		  yourself
]

{ #category : 'accessing' }
RsNaked >> title [


	^ self class name
]
