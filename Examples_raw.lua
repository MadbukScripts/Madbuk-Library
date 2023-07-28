--Raw File

local MadbukLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/MadbukScripts/Madbuk-Library/main/GUI"))()

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

main:NotificationCreate({
	name = "Success",
	description = "Successfully ran script",
	duration = 10,
	button = {
		enabled = true,
		icon = "rbxassetid://13965544901",
		content = "Okay!",
		callback = function()
			print("Okay")
		end,
	}
})

local tab = main:CreateTab({
	name = "example",
	icon = "rbxassetid://13965544901"
})

local button = tab:CreateButton({
	name = "example",
	callback = function()
		print("test")
	end,
})

button:Set("hi")

local label = tab:CreateLabel({
	text = "example"
})

label:Set("beans")

local toggle = tab:CreateToggle({
	name = "test",
	callback = function(value)
		local val = value
		print(val)
	end,
})

toggle:Set(true)
toggle:SetName("Hi")

local slider = tab:CreateSlider({
	name = "example",
	min = 1,
	default = 1,
	max = 250,
	callback = function(value)
		print(value)
	end,
})

slider:SetValue(100)

local dropdown = tab:CreateDropdown({
	name = "Dropdown",
	callback = function(v)
		print(v.." Was clicked")
	end,	
})

dropdown:Add("1a")
dropdown:Add("2a")


local textbox = tab:CreateTextbox({
	name = "Textbox",
	callback = function(txt)
		print(txt)
	end,
})

