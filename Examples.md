# Madbuk-Library
-- THESE ARE EXAMPLES --


local main = Library:Init({
	name = "Test",
	intro = true
})

local tab1 = main:CreateTab({
	name = "Test1",
	icon = "rbxassetid://13965544901"
})

local tab2 = main:CreateTab({
	name = "Test2",
	icon = "rbxassetid://13965544901"
})

local button2 = tab2:CreateButton({
	name = "teswt",
	callback = function()
		print("yes")
	end,
})

local button = tab1:CreateButton({
	name = "test1",
	callback = function()
		print("test")
	end,
})

local label = tab1:CreateLabel({
	text = "test"
})

local toggle = tab1:CreateToggle({
	name = "test",
	callback = function(value)
		local val = value
		if val then
			print("true")
		else
			print("false")
		end
	end,
})

local slider = tab1:CreateSlider({
	name = "WalkSpeed",
	min = 16,
	default = 16,
	max = 250,
	callback = function(value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
	end,
})

local button2 = tab1:CreateButton({
	name = "set slider val",
	callback = function()
		slider:SetValue(100)
	end,
})
	
local dropdown = tab1:CreateDropdown({
	name = "Dropdown",
	callback = function(v)
		print(v.." Was clicked")
	end,	
})

dropdown:Add("12", 1)
dropdown:Add("123", 2)

local textbox = tab1:CreateTextbox({
	name = "Textbox",
	callback = function(txt)
		print(txt)
	end,
})
