Class {
	#name : #GrapherSpec,
	#superclass : #RoassalModel,
	#category : #HLearning
}

{ #category : #'drawing-general' }
GrapherSpec >> draw: aView [
	| b ds |
	b := RTGrapher new.
	b extent: 400 @ 400.
	ds := RTData new.
	ds barShape color: Color red.
	ds points: (-3 to: 3.1415 * 5 by: 0.1).
	ds y: [ :v | v sin ].
	b add: ds.
	ds := RTData new.
	ds noDot.
	ds connectColor: Color blue.
	ds points: (-3 to: 3.1415 * 5 by: 0.1).
	ds y: [ :v | v cos ].
	b add: ds.
	b view: aView.
	b build.
	^ b view
]

{ #category : #'drawing-general' }
GrapherSpec >> initialize [
	super initialize.
	self script: [ :view :canvas | self draw: view ]
]

{ #category : #'drawing-general' }
GrapherSpec >> title [
	^ 'Example'
]
