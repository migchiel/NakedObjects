Class {
	#name : 'BaselineOfRSNakedObjects',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfFRLNakedObjects',
	#package : 'BaselineOfFRLNakedObjects'
}

{ #category : 'baselines' }
BaselineOfRSNakedObjects >> baseline: spec [

	<baseline>
	spec for: #common do: [
			self setUpDependencies: spec.
			spec
				package: 'FRLNakedObjects' with: [
						spec
							requires: #( 'ZTimestamp' 'NeoCSV' 'NeoJSON' );
							postLoadDoIt: #startSeasideAdaptorInPharo ];
				package: 'FRLNakedObjectsWEB'
				with: [ spec requires: #( 'Seaside3' ) ];
				package: 'FRLNakedObjects-Tests'
				with: [ spec requires: #( 'FRLNakedObjects' ) ];
				group: 'Core' with: #( 'FRLNakedObjects' ) ]
]

{ #category : 'initialization' }
BaselineOfRSNakedObjects >> setUpDependencies: spec [

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
				repository: 'github://svenvc/NeoCSV/repository' ]
]

{ #category : 'as yet unclassified' }
BaselineOfRSNakedObjects >> startSeasideAdaptorInPharo [

	(Smalltalk globals at: #WAAdmin) defaultServerManager adaptors
		ifEmpty: [
				(Smalltalk globals includesKey: #ZnZincServerAdaptor) ifTrue: [
					(Smalltalk globals at: #ZnZincServerAdaptor) startOn: 8080 ] ]
]
