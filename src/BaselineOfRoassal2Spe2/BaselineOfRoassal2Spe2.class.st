Class {
	#name : #BaselineOfRoassal2Spe2,
	#superclass : #BaselineOf,
	#category : #BaselineOfRoassal2Spe2
}

{ #category : #baselines }
BaselineOfRoassal2Spe2 >> baseline: spec [
	<baseline>
	spec for: #common do: [ self baselineOfSpec2: spec.
		"packages"
		spec package: 'Roassal2Spec'
		with:[spec requires: #('Spec2')]
		]
]

{ #category : #baselines }
BaselineOfRoassal2Spe2 >> baselineOfSpec2: spec [
	spec
		baseline: 'Spec2'
		with: [ spec repository: 'github://pharo-spec/Spec:v0.1.0/src' ]
]
