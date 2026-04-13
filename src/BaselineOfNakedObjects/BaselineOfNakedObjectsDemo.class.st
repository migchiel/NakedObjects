Class {
	#name : 'BaselineOfNakedObjectsDemo',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfNakedObjects',
	#package : 'BaselineOfNakedObjects'
}

{ #category : 'baselines' }
BaselineOfNakedObjectsDemo >> baseline: spec [

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
BaselineOfNakedObjectsDemo >> setUpDependencies: spec [

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
