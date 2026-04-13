Class {
	#name : 'RSCoreObjects',
	#superclass : 'WAComponent',
	#category : 'RSNakedObjectsWEB-components',
	#package : 'RSNakedObjectsWEB',
	#tag : 'components'
}

{ #category : 'rendering' }
RSCoreObjects >> renderContentOn: html [

	RSRoot allSubclasses do: [ :object |
			html
				text: object name;
				break ].
]
