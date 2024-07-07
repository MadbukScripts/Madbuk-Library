## Madbuk Library 
## -- THESE ARE EXAMPLES --

## STARTING THE LIBRARY
```lua
local MadbukLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/MadbukScripts/Madbuk-Library/main/GUI"))()
```

## MAKING THE WINDOW
```lua
local main = MadbukLibrary:Init({
	name = "example",
	intro = true,
	multiple = false,
	sounds = {
		hover = "rbxassetid://10066936758",
		click = "rbxassetid://10066936758",
		type = "rbxassetid://10066936758",
		start = "rbxassetid://4835664238",
		notify = "rbxassetid://3318722848"
	}
})
```

## NOTIFY THE USER
```lua
main:NotificationCreate({
	name = "Success",
	description = "Successfully ran script",
	duration = 10,
	button = {
		enabled = true,
		content = "Okay!",
		icon = "rbxassetid://13965544901",
		callback = function()
			print("Okay")
		end,
	}
})
```
## CREATE A TAB
```lua
local tab = main:CreateTab({
	name = "example",
	icon = "rbxassetid://13965544901"
})
```

## CREATE A SECTION
```lua
local section = tab:CreateSection({
	name = "example"
})
```

## CREATE A BUTTON
```lua
local button = tab:CreateButton({
	name = "example",
	callback = function()
		print("test")
	end,
})
```

## SET A BUTTON
```lua
button:Set("hi")
```

## CREATE A LABEL
```lua
local label = tab:CreateLabel({
	text = "example"
})
```

## SET A LABEL
```lua
label:Set("beans")
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

## SET A TOGGLE VALUE
```lua
toggle:Set(true)
```

## SET A TOGGLE NAME
```lua
toggle:SetName("hi")
```

## CREATE A SLIDER
```lua
local slider = tab:CreateSlider({
	name = "example",
	min = 1,
	default = 1,
	max = 250,
	callback = function(value)
		print(value)
	end,
})
```

## SET A SLIDER
```lua
slider:SetValue(100)
```

## CREATE A DROPDOWN
 ```lua
local dropdown = tab:CreateDropdown({
	name = "Dropdown",
	alwaysOpen = false,
	multiple = true,
	callback = function(value, state)
		print(value, state)
--[[    value is an instance, so if you want to do
	if value == 'str' then.. -- wouldnt work
	you would have to use value.Name instead
]]--
	end,	
})
```

## SET DROPDOWN NAME
```lua
dropdown:SetName("hi")
```

## TOGGLE DROPDOWN
```lua
--disclaimer: if you want to use this you have to put it at the end of your code otherwise it will bug out
wait(0.1)
dropdown:Toggle()
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
local textbox = tab:CreateTextbox({
	name = "Textbox",
	callback = function(txt)
		print(txt)
	end,
})
```
