;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__BarterWithSancar_SancarMod Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
BarterWithSancar(akSpeaker)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerREF Auto
Form Property DES_Sancar Auto 
Perk Property DES_SancarPriceAdjustmentPerk auto

Bool ShouldRevertCurrency
Form LastCurrency

Import SEA_BarterFunctions 

Function BarterWithSancar(Actor a_kVendor)
    If (!a_kVendor)

        Return
    EndIf

    If (PlayerREF.HasPerk(DES_SancarPriceAdjustmentPerk))

        PlayerREF.RemovePerk(DES_SancarPriceAdjustmentPerk)
    EndIf
    PlayerREF.AddPerk(DES_SancarPriceAdjustmentPerk)

    LastCurrency = GetCurrency()
    ShouldRevertCurrency = False
    If (!LastCurrency)

        ShouldRevertCurrency = True
    EndIf
    SetCurrency(DES_Sancar)

    a_kVendor.ShowBarterMenu()

    ;We do this for Skyrim Souls compatibility.
    While (Utility.IsInMenuMode())

        Utility.Wait(0.1)
    EndWhile

    If (ShouldRevertCurrency)

        ResetCurrency()
    Else

        SetCurrency(LastCurrency)
    EndIf
	PlayerREF.RemovePerk(DES_SancarPriceAdjustmentPerk)
EndFunction


