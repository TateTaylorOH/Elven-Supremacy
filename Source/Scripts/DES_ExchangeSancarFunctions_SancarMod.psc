Scriptname DES_ExchangeSancarFunctions_SancarMod extends Quest  

Actor Property PlayerRef auto
GlobalVariable Property DES_SancarWorth auto
MiscObject Property Gold001 auto
GlobalVariable Property DES_ConvertCoins auto

;--------------------------------------------------
;EXCHANGE FUNCTIONS
;--------------------------------------------------

function SancarForSeptims(MiscObject coin, int count)

IF DES_ConvertCoins.GetValue() > 0
	float worth = DES_SancarWorth.GetValue()
	float convertedcount = count/worth
	PlayerRef.RemoveItem(coin, count)
	PlayerRef.AddItem(Gold001, convertedcount as int)
ENDIF

endfunction
