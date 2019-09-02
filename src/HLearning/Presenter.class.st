Class {
	#name : #Presenter,
	#superclass : #SpPresenter,
	#instVars : [
		'graphic'
	],
	#category : #HLearning
}

{ #category : #specs }
Presenter class >> defaultSpec [
	^ SpBoxLayout newHorizontal
		add: #graphic;
		yourself
]

{ #category : #examples }
Presenter class >> open [
	<example>
	self new openWithSpec
]

{ #category : #accessing }
Presenter >> graphic [
	^ graphic
]

{ #category : #initialization }
Presenter >> initializeWidgets [
	graphic := self instantiate: GrapherSpec
]
