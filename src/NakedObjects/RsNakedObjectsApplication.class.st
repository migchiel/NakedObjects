Class {
	#name : 'RsNakedObjectsApplication',
	#superclass : 'Object',
	#instVars : [
		'coreObjects'
	],
	#category : 'NakedObjects-Application',
	#package : 'NakedObjects',
	#tag : 'Application'
}

{ #category : 'as yet unclassified' }
RsNakedObjectsApplication >> inspectionItems: aBuilder [
	<inspectorPresentationOrder: 0 title: 'Core'>
	
	^ aBuilder newTable
		addStyle: 'stList';
		addColumn: (SpStringTableColumn new
			title: 'Objects';
			evaluated: [ :each | each name ];
			formatted: [ :name | StObjectPrinter asTruncatedTextFrom: name ];
			beSortable);
		items: coreObjects;
		yourself
]
