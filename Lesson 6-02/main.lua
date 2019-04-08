-----------------------------------------------------------------------------------------
--
-- Created by: Wajd Mariam
-- Created on: April 7, 2019
-----------------------------------------------------------------------------------------

local calculateButton = display.newImageRect ("assets/calculateButton.png", 125, 125)
calculateButton.x = 250	
calculateButton.y = 150
calculateButton.id = "calculateButton"

NumberTextfield = native.newTextField (160,285,155,40)
NumberTextfield.id = "Number Textfield"

display.setDafult ( "background" 255/255, 174/255, 0/255 )

number.text = display.newText( "   Enter a number \n   either negative \n      or positive", display.contentCenterX, 185, native.systemFont,35)
number.text: setFillColor ( 0, 0, 0 )

local function calculateButtonTouch(event)
	end

local Number = tonumber (NumberTextfield.text)

if number < 0 then
	number.text.text = "Negative Number"

else

    number.text.text = "Positive Number"

end

if number ==0 then
	number.text.text = "Zero is Neutral"

end 
end

calculateButton:addEventListener ("touch", calculateButtonTouch)
