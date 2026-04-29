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
				package: 'NakedObjects'
				with: [ spec requires: #( 'ZTimestamp' 'NeoCSV' 'NeoJSON' 'Soil') ];
				package: 'NakedObjectsGUI';
				package: 'NakedObjectsDemo'
				with: [ spec requires: #( 'NakedObjects' 'NakedObjectsGUI') ];
				package: 'NakedObjects-Tests'
				with: [ spec requires: #( 'NakedObjects' ) ];
				group: 'Demo' with: #( 'NakedObjectsDemo' );
				group: 'Core' with: #( 'NakedObjects' 'NakedObjectsGUI' ) ]
]

{ #category : 'initialization' }
BaselineOfNakedObjects >> setUpDependencies: spec [

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
				repository: 'github://svenvc/NeoCSV/repository' ];
		baseline: 'Soil' with: [ 
			spec 
				loads: #('Soil-Core');
				repository: 'github://ApptiveGrid/Soil:v4/src' ]
]
