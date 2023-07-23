# Madbuk-Library
-- THESE ARE EXAMPLES --

*INTRO TAB*
```lua
local main = Library:Init({
	name = "Test",
	intro = true
})
```
*CREATE A TAB*
```lua
local tab1 = main:CreateTab({
	name = "Test1",
	icon = "rbxassetid://13965544901"
})
```

*CREATE A BUTTON*
```lua
local button = tab:CreateButton({
	name = "test1",
	callback = function()
		print("test")
	end,
})
```

*CREATE A LABEL*
```lua
local label = tab:CreateLabel({
	text = "test"
})
```

*CREATE A TOGGLE*
```lua
local toggle = tab:CreateToggle({
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
```

*CREATE A SLIDER*

```lua
local slider = tab:CreateSlider({
	name = "WalkSpeed",
	min = 16,
	default = 16,
	max = 250,
	callback = function(value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
	end,
})
```

*ADD NEW DROPDOWN BUTTON*
 ```lua
local dropdown = tab1:CreateDropdown({
	name = "Dropdown",
	callback = function(v)
		print(v.." Was clicked")
	end,	
})
```
*ADD NEW DROPDOWN BUTTON*
```lua
dropdown:Add("1", 1)
dropdown:Add("2", 2)
```

*REMOVE DROPDOWN BUTTON*
```lua
dropdown:Remove("1")
dropdown:Remove("2")
```

*CLEAR DROPDOWN*
```lua
dropdown:Clear()
```

*CREATE A TEXTBOX*
```lua
local textbox = tab1:CreateTextbox({
	name = "Textbox",
	callback = function(txt)
		print(txt)
	end,
})
```
