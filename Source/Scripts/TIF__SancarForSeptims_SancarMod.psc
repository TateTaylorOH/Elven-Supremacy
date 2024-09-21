;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__SancarForSeptims_SancarMod Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Exchange.SancarForSeptims(DES_Sancar, PlayerRef.GetItemCount(DES_Sancar))
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

MiscObject Property DES_Sancar auto
DES_ExchangeSancarFunctions_SancarMod Property Exchange auto
Actor Property playerref auto
