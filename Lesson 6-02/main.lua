----------------------------------------------------------------------------------------
-- Created by: Wajd Mariam

-- Created on: April 7, 2019

-----------------------------------------------------------------------------------------
local calculateButton = display.newImageRect ("assets/sprites/calculate.png", 125, 50)
calculateButton.x = 160	
calculateButton.y = 350
calculateButton.id = "calculateButton"



Numberfield = native.newTextField( display.contentCenterX, display.contentCenterY + 35, 225, 40 )

Numberfield.id = "Number textField"


ResponseText = display.newText( " Enter a number \n   either negative \n      or positive", display.contentCenterX, 185, native.systemFont,20)
ResponseText: setFillColor ( 255,255,255)



local function calculateButtonTouch( event )



local Number = tonumber (Numberfield.text)


if Number < 0 then

	print ("")
	print ( "Negative Number")

	ResponseText.text = "Negative Number"

else
    print ("")
	print ( "Positive Number")
    ResponseText.text = "Positive Number"

end

if Number == 0 then
    print ("")
	print ( "Zero Is Neutral")
	ResponseText.text = "Zero is Neutral"

end 

end 

calculateButton:addEventListener ("touch", calculateButtonTouch)
