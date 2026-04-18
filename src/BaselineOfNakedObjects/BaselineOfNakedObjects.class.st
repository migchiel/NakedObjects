Class {
	#name : 'BaselineOfNakedObjects',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfNakedObjects',
	#package : 'BaselineOfNakedObjects'
}

{ #category : 'baselines' }
BaselineOfNakedObjects >> baseline: spec [

	<baseline>
	spec for: #common do: [
			self setUpDependencies: spec.
			spec
				package: 'NakedObjects' with: [
						spec
							requires: #( 'ZTimestamp' 'NeoCSV' 'NeoJSON' );
							postLoadDoIt: #startSeasideAdaptorInPharo ];
				package: 'NakedObjectsWEB'
				with: [ spec requires: #( 'Seaside3' ) ];
				package: 'NakedObjects-Tests'
				with: [ spec requires: #( 'NakedObjects' ) ];
				group: 'Core' with: #( 'NakedObjects' ) ]
]

{ #category : 'initialization' }
BaselineOfNakedObjects >> setUpDependencies: spec [

	spec
		baseline: 'Seaside3' with: [
				spec
					repository: 'github://SeasideSt/Seaside:master/repository';
					loads: #( 'Core' 'Zinc' ) ];
		baseline: 'ZTimestamp' with: [
				spec
					loads: #( 'core' );
					repository: 'github://svenvc/ztimestamp' ];
		baseline: 'NeoJSON' with: [
			spec
				loads: #( 'core' );
				repository: 'github://svenvc/NeoJSON/repository' ];
		baseline: 'NeoCSV' with: [
			spec
				loads: #( 'core' );
				repository: 'github://svenvc/NeoCSV/repository' ];
		baseline: 'Soil' with: [ 
			spec 
				loads: #('Soil-Core');
				repository: 'github://ApptiveGrid/Soil:v4/src' ]
]

{ #category : 'as yet unclassified' }
BaselineOfNakedObjects >> startSeasideAdaptorInPharo [

	(Smalltalk globals at: #WAAdmin) defaultServerManager adaptors
		ifEmpty: [
				(Smalltalk globals includesKey: #ZnZincServerAdaptor) ifTrue: [
					(Smalltalk globals at: #ZnZincServerAdaptor) startOn: 8080 ] ]
]
