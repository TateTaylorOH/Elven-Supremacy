Scriptname DES_SancarTracker   extends ReferenceAlias   

miscobject property DES_sancar auto

import SEA_BarterFunctions

event OnInit()
	AddInventoryEventFilter(DES_Sancar)
endEvent

state Waiting
endState

auto state WaitingOnSancar

event OnPlayerLoadGame()
	AddInventoryEventFilter(DES_Sancar)
endEvent

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	if akBaseItem == DES_Sancar
		getOwningQuest().SetStage(10)
	endif
endevent

endState