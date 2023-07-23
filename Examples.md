## Madbuk Library
-- THESE ARE EXAMPLES --

## STARTING THE LIBRARY
```lua
loadstring(game:HttpGet(https://raw.githubusercontent.com/MadbukScripts/Madbuk-Library/main/GUI))()
```

## INTRO TAB
```lua
local main = Library:Init({
	name = "Test",
	intro = true,
	sounds = {
		hover = "rbxassetid://10066936758",
		click = "rbxassetid://10066936758",
		start = "rbxassetid://4835664238"
	}
})
```
## CREATE A TAB
```lua
local tab = main:CreateTab({
	name = "Test1",
	icon = "rbxassetid://13965544901"
})
```

## CREATE A BUTTON
```lua
local button = tab:CreateButton({
	name = "test1",
	callback = function()
		print("test")
	end,
})
```

## CREATE A LABEL
```lua
local label = tab:CreateLabel({
	text = "test"
})
```

## SET A LABEL
```lua
label:Set({
            text = "beans"
        })
```

## CREATE A TOGGLE
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

## SET A TOGGLE
```lua
toggle:Set({
            state = true
        })
```

## CREATE A SLIDER
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

## SET A SLIDER
```lua
slider:SetValue(100)
```

## ADD NEW DROPDOWN BUTTON
 ```lua
local dropdown = tab1:CreateDropdown({
	name = "Dropdown",
	callback = function(v)
		print(v.." Was clicked")
	end,	
})
```
## ADD NEW DROPDOWN BUTTON
```lua
dropdown:Add("1a")
dropdown:Add("2a")
```

## REMOVE DROPDOWN BUTTON
```lua
dropdown:Remove("1a")
dropdown:Remove("2a")
```



## CREATE A TEXTBOX
```lua
local textbox = tab1:CreateTextbox({
	name = "Textbox",
	callback = function(txt)
		print(txt)
	end,
})
```
