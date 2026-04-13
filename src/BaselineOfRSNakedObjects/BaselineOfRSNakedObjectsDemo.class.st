Class {
	#name : 'BaselineOfRSNakedObjectsDemo',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfRSNakedObjects',
	#package : 'BaselineOfRSNakedObjects'
}

{ #category : 'baselines' }
BaselineOfRSNakedObjectsDemo >> baseline: spec [

	<baseline>
	spec for: #common do: [
			self setUpDependencies: spec.
			spec
				package: 'RSNakedObjects'
				with: [ spec requires: #( 'ZTimestamp' 'NeoCSV' 'NeoJSON' ) ];
				package: 'RSNakedObjects-Tests'
				with: [ spec requires: #( 'RSNakedObjects' ) ];
				group: 'Core' with: #( 'RSNakedObjects' ) ]
]

{ #category : 'initialization' }
BaselineOfRSNakedObjectsDemo >> setUpDependencies: spec [

	spec
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
