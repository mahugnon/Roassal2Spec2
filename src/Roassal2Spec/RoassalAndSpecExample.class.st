Class {
	#name : #RoassalAndSpecExample,
	#superclass : #SpPresenter,
	#instVars : [
		'label',
		'diagram',
		'button1',
		'button2',
		'view'
	],
	#category : #'Roassal2Spec-Example'
}

{ #category : #specs }
RoassalAndSpecExample class >> defaultSpec [
	<spec: #default>
	^ SpBoxLayout newVertical
		add: #label
			withConstraints: [ :constraints | constraints height: self toolbarHeight ];
		add: #label
			withConstraints: [ :constraints | constraints height: self toolbarHeight ];
		add: #button1
			withConstraints: [ :constraints | constraints height: self toolbarHeight ];
		add: #button2
			withConstraints: [ :constraints | constraints height: self toolbarHeight ];
		add: #diagram;
		yourself
]

{ #category : #'instance creation' }
RoassalAndSpecExample class >> open [
	<script>
	"
	RoassalAndSpecExample open
	"
	^ self new openWithSpec
]

{ #category : #accessing }
RoassalAndSpecExample >> button1 [
	^ button1
]

{ #category : #accessing }
RoassalAndSpecExample >> button1: anObject [
	button1 := anObject
]

{ #category : #accessing }
RoassalAndSpecExample >> button2 [
	^ button2
]

{ #category : #accessing }
RoassalAndSpecExample >> button2: anObject [
	button2 := anObject
]

{ #category : #accessing }
RoassalAndSpecExample >> diagram [
	^ diagram
]

{ #category : #accessing }
RoassalAndSpecExample >> diagram: anObject [
	diagram := anObject
]

{ #category : #initialization }
RoassalAndSpecExample >> initializePresenter [

	"This causes the diagram's script to be executed again."
	button1 action: [ view add: (RTEllipse new size: 40 atRandom) element. view signalUpdate ].
	button2 action: [ RTFlowLayout on: view elements. view signalUpdate ]
]

{ #category : #initialization }
RoassalAndSpecExample >> initializeWidgets [

	label := self newLabel.
	label label: 'Simple example of combining Roassal and Spec' .

	button1 := self newButton.
	button1 label: 'Add Circle'.

	button2 := self newButton.
	button2 label: 'Layout!'.

	
	diagram := self instantiate: RoassalModel.	
	diagram script: [ :aView :canvas | self view: aView. aView @ RTDraggableView. 
								aView canvas addMenu: 'In' callback: [ RTZoomInMove on: aView ].
								aView canvas addMenu: 'Out' callback: [ RTZoomOutMove on: aView ].
								aView canvas addMenu: 'Center' callback: [ aView canvas focusOnCenterScaled ].
 						].
"	diagram script: [ :view :canvas | self textAsCode value: view value: canvas ]"
]

{ #category : #accessing }
RoassalAndSpecExample >> label [
	^ label
]

{ #category : #accessing }
RoassalAndSpecExample >> label: aString [
	label := aString
]

{ #category : #accessing }
RoassalAndSpecExample >> view [
	^ view
]

{ #category : #accessing }
RoassalAndSpecExample >> view: aRoassalView [
	view := aRoassalView
]
