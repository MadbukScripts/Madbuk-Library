
local runService = game:GetService("RunService")
local coreGui = game:GetService("CoreGui")
local players = game:GetService("Players")
local tweenService = game:GetService("TweenService")
local uis = game:GetService("UserInputService")

local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()

local viewport = workspace.CurrentCamera.ViewportSize

local Library = {}

local UIS = game:GetService("UserInputService")
function dragify(Frame)
	dragToggle = nil
	local dragSpeed = 999
	dragInput = nil
	dragStart = nil
	local dragPos = nil
	function updateInput(input)
		local Delta = input.Position - dragStart
		local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.30), {Position = Position}):Play()
	end
	Frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	Frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == dragInput and dragToggle then
			updateInput(input)
		end
	end)
end



function Library:tween(object,num,goal)
	local tween = tweenService:Create(object,TweenInfo.new(num),goal)
	tween:Play()
end

function Library:Init(options) 
	
	local Window = {
		CurrentTab = nil,
		Hover = false
	}
	
	

	--Main
	
	
	
	do
		-- StarterWindow.MadbukLibrary
		Window["1"] = Instance.new("ScreenGui", runService:IsStudio() and players.LocalPlayer:WaitForChild("PlayerGui") or coreGui);
		Window["1"]["Name"] = [[MadbukLibrary]];
		Window["1"]["IgnoreGuiInset"] = true;
		
		
		-- StarterWindow.MadbukLibrary.Main
		Window["2"] = Instance.new("Frame", Window["1"]);
		Window["2"]["BorderSizePixel"] = 0;
		Window["2"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
		Window["2"]["AnchorPoint"] = Vector2.new(0, 0);
		Window["2"]["BackgroundTransparency"] = 1;
		Window["2"]["Visible"] = false;
		Window["2"]["ClipsDescendants"] = false
		Window["2"]["Size"] = UDim2.new(0, 400, 0, 500);
		Window["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["2"]["Position"] = UDim2.fromOffset((viewport.X/2) - (Window["2"].Size.X.Offset / 2), (viewport.Y/2) - (Window["2"].Size.Y.Offset / 2));
		Window["2"]["Name"] = [[Main]];

		-- StarterWindow.MadbukLibrary.Main.UICorner
		Window["3"] = Instance.new("UICorner", Window["2"]);
		Window["3"]["CornerRadius"] = UDim.new(0, 10);

		-- StarterWindow.MadbukLibrary.Main.Container
		Window["4"] = Instance.new("Frame", Window["2"]);
		Window["4"]["BorderSizePixel"] = 0;
		Window["4"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
		Window["4"]["AnchorPoint"] = Vector2.new(1, 1);
		Window["4"]["Size"] = UDim2.new(0, 400, 0, 500);
		Window["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["4"]["Position"] = UDim2.new(1, 0, 1, 0);
		Window["4"]["Name"] = [[Container]];
		
		dragify(Window["4"])
		
		-- StarterWindow.MadbukLibrary.Main.Container.DropShadowHolder
		Window["6b"] = Instance.new("Frame", Window["4"]);
		Window["6b"]["ZIndex"] = 0;
		Window["6b"]["BorderSizePixel"] = 0;
		Window["6b"]["AnchorPoint"] = Vector2.new(1, 1);
		Window["6b"]["BackgroundTransparency"] = 1;
		Window["6b"]["Size"] = UDim2.new(1, 0, 1, 0);
		Window["6b"]["Position"] = UDim2.new(1, 0, 1, 0);
		Window["6b"]["Name"] = [[DropShadowHolder]];

		-- StarterWindow.MadbukLibrary.Main.Container.DropShadowHolder.DropShadow
		Window["6c"] = Instance.new("ImageLabel", Window["6b"]);
		Window["6c"]["ZIndex"] = 0;
		Window["6c"]["BorderSizePixel"] = 0;
		Window["6c"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
		Window["6c"]["ScaleType"] = Enum.ScaleType.Slice;
		Window["6c"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
		Window["6c"]["ImageTransparency"] = 0.5099999904632568;
		Window["6c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		Window["6c"]["Image"] = [[rbxassetid://6014261993]];
		Window["6c"]["Size"] = UDim2.new(1, 50, 1, 50);
		Window["6c"]["Name"] = [[DropShadow]];
		Window["6c"]["BackgroundTransparency"] = 1;
		Window["6c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

		-- StarterWindow.MadbukLibrary.Main.Container.UICorner
		Window["6d"] = Instance.new("UICorner", Window["4"]);
		Window["6d"]["CornerRadius"] = UDim.new(0, 10);

	end
	
	--Top Bar
	
	do
		-- StarterWindow.MadbukLibrary.Main.Container.TopBar
		Window["5"] = Instance.new("Frame", Window["4"]);
		Window["5"]["BorderSizePixel"] = 0;
		Window["5"]["BackgroundColor3"] = Color3.fromRGB(37, 37, 37);
		Window["5"]["AnchorPoint"] = Vector2.new(1, 1);
		Window["5"]["Size"] = UDim2.new(0, 402, 0, 40);
		Window["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["5"]["Position"] = UDim2.new(1.0049999952316284, -1, 0.07999999821186066, 0);
		Window["5"]["Name"] = [[TopBar]];
		
		
		-- StarterWindow.MadbukLibrary.Main.Container.TopBar.UICorner
		Window["6"] = Instance.new("UICorner", Window["5"]);
		Window["6"]["CornerRadius"] = UDim.new(0, 10);

		-- StarterWindow.MadbukLibrary.Main.Container.TopBar.Hide
		Window["7"] = Instance.new("Frame", Window["5"]);
		Window["7"]["BorderSizePixel"] = 0;
		Window["7"]["BackgroundColor3"] = Color3.fromRGB(37, 37, 37);
		Window["7"]["AnchorPoint"] = Vector2.new(0, 1);
		Window["7"]["Size"] = UDim2.new(0, 402, 0, 10);
		Window["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["7"]["Position"] = UDim2.new(0, 0, 1, 0);
		Window["7"]["Name"] = [[Hide]];

		-- StarterWindow.MadbukLibrary.Main.Container.TopBar.Title
		Window["8"] = Instance.new("TextLabel", Window["5"]);
		Window["8"]["BorderSizePixel"] = 0;
		Window["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Window["8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		Window["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		Window["8"]["TextSize"] = 14;
		Window["8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		Window["8"]["Size"] = UDim2.new(0, 400, 0, 40);
		Window["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["8"]["Text"] = options["name"];
		Window["8"]["Name"] = [[Title]];
		Window["8"]["BackgroundTransparency"] = 1;

		-- StarterWindow.MadbukLibrary.Main.Container.TopBar.Title.UIPadding
		Window["9"] = Instance.new("UIPadding", Window["8"]);
		Window["9"]["PaddingLeft"] = UDim.new(0, 40);

		-- StarterWindow.MadbukLibrary.Main.Container.TopBar.Line
		Window["a"] = Instance.new("Frame", Window["5"]);
		Window["a"]["BorderSizePixel"] = 0;
		Window["a"]["BackgroundColor3"] = Color3.fromRGB(86, 86, 86);
		Window["a"]["AnchorPoint"] = Vector2.new(0, 1);
		Window["a"]["Size"] = UDim2.new(0, 0, 0, 1);
		Window["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["a"]["Position"] = UDim2.new(0, 0, 1, 0);
		Window["a"]["Name"] = [[Line]];
		
		

		-- StarterWindow.MadbukLibrary.Main.Container.TopBar.Minimize
		Window["b"] = Instance.new("ImageButton", Window["5"]);
		Window["b"]["BorderSizePixel"] = 0;
		Window["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Window["b"]["AnchorPoint"] = Vector2.new(0, 1);
		Window["b"]["Image"] = [[rbxassetid://13965504633]];
		Window["b"]["Size"] = UDim2.new(0, 15, 0, 15);
		Window["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["b"]["Name"] = [[Minimize]];
		Window["b"]["BackgroundTransparency"] = 1;
		Window["b"]["Position"] = UDim2.new(0, 350, 0.699999988079071, 0);
		
		-- StarterWindow.MadbukLibrary.Main.Container.TopBar.Menu
		Window["d"] = Instance.new("ImageButton", Window["5"]);
		Window["d"]["BorderSizePixel"] = 0;
		Window["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Window["d"]["AnchorPoint"] = Vector2.new(1, 1);
		Window["d"]["Image"] = [[rbxassetid://13976175386]];
		Window["d"]["Size"] = UDim2.new(0, 20, 0, 20);
		Window["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["d"]["Name"] = [[Menu]];
		Window["d"]["BackgroundTransparency"] = 1;
		Window["d"]["Position"] = UDim2.new(0.07999999821186066, 0, 0.7599999904632568, 0);
		Window["d"]["ImageColor3"] = Color3.fromRGB(255,255,255);

		--Minimize anim
		do
		-- StarterGui.Minimize.MinimizeFrame
		Window["2000"] = Instance.new("Frame", Window["1"]);
		Window["2000"]["BorderSizePixel"] = 0;
		Window["2000"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
		Window["2000"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		Window["2000"]["Size"] = UDim2.new(0, 400, 0, 500);
		Window["2000"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["2000"]["Position"] = UDim2.new(0,Window["4"].AbsolutePosition.X,0,Window["4"].AbsolutePosition.Y);
		Window["2000"]["Name"] = [[MinimizeFrame]];
		Window["2000"]["Visible"] = false

		-- Starte000rGui.Minimize.MinimizeFrame.UICorner
		Window["3000"] = Instance.new("UICorner", Window["2000"]);
		Window["3000"]["CornerRadius"] = UDim.new(0, 10);

		-- Starte000rGui.Minimize.MinimizeFrame.DropShadowHolder
		Window["4000"] = Instance.new("Frame", Window["2000"]);
		Window["4000"]["ZIndex"] = 0;
		Window["4000"]["BorderSizePixel"] = 0;
		Window["4000"]["AnchorPoint"] = Vector2.new(1, 1);
		Window["4000"]["BackgroundTransparency"] = 1;
		Window["4000"]["Size"] = UDim2.new(1, 0, 1, 0);
		Window["4000"]["Position"] = UDim2.new(1, 0, 1, 0);
		Window["4000"]["Name"] = [[DropShadowHolder]];

		-- Starte000rGui.Minimize.MinimizeFrame.DropShadowHolder.DropShadow
		Window["5000"] = Instance.new("ImageLabel", Window["4000"]);
		Window["5000"]["ZIndex"] = 0;
		Window["5000"]["BorderSizePixel"] = 0;
		Window["5000"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
		Window["5000"]["ScaleType"] = Enum.ScaleType.Slice;
		Window["5000"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
		Window["5000"]["ImageTransparency"] = 0.5099999904632568;
		Window["5000"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		Window["5000"]["Image"] = [[rbxassetid://6014261993]];
		Window["5000"]["Size"] = UDim2.new(1, 50, 1, 50);
		Window["5000"]["Name"] = [[DropShadow]];
		Window["5000"]["BackgroundTransparency"] = 1;
		Window["5000"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

		-- Starte000rGui.Minimize.TopBar
		Window["6000"] = Instance.new("Frame", Window["1"]);
		Window["6000"]["BorderSizePixel"] = 0;
		Window["6000"]["BackgroundColor3"] = Color3.fromRGB(37, 37, 37);
		Window["6000"]["AnchorPoint"] = Vector2.new(0.5, 0);
		Window["6000"]["Size"] = UDim2.new(0, 402, 0, 40);
		Window["6000"]["ClipsDescendants"] = true;
		Window["6000"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["6000"]["Position"] = Window["2000"].Position - UDim2.new(0,0,0,0);
		Window["6000"]["Name"] = [[TopBar]];
			Window["6000"]["Visible"] = false;
			
			-- StarterWindow.MadbukLibrary.Main.Container.TopBar.Menu
			Window["z"] = Instance.new("ImageButton", Window["6000"]);
			Window["z"]["BorderSizePixel"] = 0;
			Window["z"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Window["z"]["AnchorPoint"] = Vector2.new(1, 1);
			Window["z"]["Image"] = [[rbxassetid://13976175386]];
			Window["z"]["Size"] = UDim2.new(0, 20, 0, 20);
			Window["z"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Window["z"]["Name"] = [[Menu]];
			Window["z"]["Transparency"] = 1;
			Window["z"]["BackgroundTransparency"] = 1;
			Window["z"]["Position"] = UDim2.new(0.07999999821186066, 0, 0.7599999904632568, 0);
			Window["z"]["ImageColor3"] = Color3.fromRGB(255,255,255);

		-- Starte000rGui.Minimize.TopBar.UICorner
		Window["7000"] = Instance.new("UICorner", Window["6000"]);
		Window["7000"]["CornerRadius"] = UDim.new(0, 10);

		-- Starte000rGui.Minimize.TopBar.Hide
		Window["8000"] = Instance.new("Frame", Window["6000"]);
		Window["8000"]["BorderSizePixel"] = 0;
		Window["8000"]["BackgroundColor3"] = Color3.fromRGB(37, 37, 37);
		Window["8000"]["AnchorPoint"] = Vector2.new(0, 1);
		Window["8000"]["Size"] = UDim2.new(0, 402, 0, 10);
		Window["8000"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["8000"]["Position"] = UDim2.new(0, 0, 1, 0);
		Window["8000"]["Name"] = [[Hide]];

		-- Starte000rGui.Minimize.TopBar.Title
		Window["9000"] = Instance.new("TextLabel", Window["6000"]);
		Window["9000"]["BorderSizePixel"] = 0;
		Window["9000"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Window["9000"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		Window["9000"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		Window["9000"]["TextSize"] = 14;
		Window["9000"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		Window["9000"]["Size"] = UDim2.new(0, 400, 0, 40);
		Window["9000"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["9000"]["Text"] = options.name;
		Window["9000"]["Name"] = [[Title]];
		Window["9000"]["BackgroundTransparency"] = 1;

		-- Starte000rGui.Minimize.TopBar.Title.UIPadding
		Window["a000"] = Instance.new("UIPadding", Window["9000"]);
		Window["a000"]["PaddingLeft"] = UDim.new(0, 40);

		-- Starte000rGui.Minimize.TopBar.Line
		Window["b000"] = Instance.new("Frame", Window["6000"]);
		Window["b000"]["BorderSizePixel"] = 0;
		Window["b000"]["BackgroundColor3"] = Color3.fromRGB(86, 86, 86);
		Window["b000"]["AnchorPoint"] = Vector2.new(0, 1);
		Window["b000"]["Size"] = UDim2.new(0, 0, 0, 1);
		Window["b000"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["b000"]["Position"] = UDim2.new(0, 0, 1, 0);
		Window["b000"]["Name"] = [[Line]];
			
			

		-- Starte000rGui.Minimize.TopBar.Close
		Window["d000"] = Instance.new("ImageButton", Window["6000"]);
		Window["d000"]["Active"] = false;
		Window["d000"]["BorderSizePixel"] = 0;
		Window["d000"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Window["d000"]["Selectable"] = false;
		Window["d000"]["AnchorPoint"] = Vector2.new(0, 1);
		Window["d000"]["Image"] = [[rbxassetid://13965481321]];
		Window["d000"]["Size"] = UDim2.new(0, 15, 0, 15);
		Window["d000"]["Name"] = [[Close]];
		Window["d000"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["d000"]["Position"] = UDim2.new(0, 375, 0.699999988079071, 0);
		Window["d000"]["BackgroundTransparency"] = 1;

		-- Starte000rGui.Minimize.TopBar.Minimize
		Window["e000"] = Instance.new("ImageButton", Window["6000"]);
		Window["e000"]["Active"] = false;
		Window["e000"]["BorderSizePixel"] = 0;
		Window["e000"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Window["e000"]["Selectable"] = false;
		Window["e000"]["AnchorPoint"] = Vector2.new(0, 1);
		Window["e000"]["Image"] = [[rbxassetid://14153359185]];
		Window["e000"]["Size"] = UDim2.new(0, 15, 0, 15);
		Window["e000"]["Name"] = [[Minimize]];
		Window["e000"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["e000"]["Position"] = UDim2.new(0, 350, 0.699999988079071, 0);
		Window["e000"]["BackgroundTransparency"] = 1;
		end
		
		Window["d000"].MouseEnter:Connect(function()
			Window.Hover = true
			Library:tween(Window["d000"], 0.1, {
				ImageColor3 = Color3.fromRGB(255,10,10),
				Size = UDim2.new(0,20,0,20)})
			Library:tween(Window["d000"], 0.3, {Rotation = 90})
			Window["d000"].Position = UDim2.new(0, 373,0.7, 3)
		end)

		Window["d000"].MouseLeave:Connect(function()
			Window.Hover = false
			Library:tween(Window["d000"], 0.1, {
				ImageColor3 = Color3.fromRGB(255,255,255),
				Size = UDim2.new(0,15,0,15)})
			Library:tween(Window["d000"], 0.3, {Rotation = 0})
			Window["d000"].Position = UDim2.new(0, 375,0.7, 0)
		end)

		Window["d000"].MouseButton1Click:Connect(function()
			Window["2"].ClipsDescendants = true
			game.TweenService:Create(Window["2"], TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Size = UDim2.new(0,0,0,0),
				Position = UDim2.new(0, Window["2"].AbsolutePosition.X + (Window["2"].AbsoluteSize.X / 2), 0, Window["2"].AbsolutePosition.Y + (Window["2"].AbsoluteSize.Y / 2))
			}):Play()
			wait(0.1)
			Window["1"]:Destroy()
		end)
		
		Window["e000"].MouseEnter:Connect(function()
			Window.Hover = true
			Library:tween(Window["e000"], 0.1, {
				ImageColor3 = Color3.fromRGB(200,200,200)})
		end)

		Window["e000"].MouseLeave:Connect(function()
			Window.Hover = false
			Library:tween(Window["e000"], 0.1, {
				ImageColor3 = Color3.fromRGB(255,255,255)})
		end)

		Window["e000"].MouseButton1Click:Connect(function()
			Window["6000"]["Visible"] = true
			Window["2000"]["Visible"] = true
			Window["9"]["PaddingLeft"] = UDim.new(0,15)
			Library:tween(Window["9"], .8, {PaddingLeft = UDim.new(0, 40)})
			Library:tween(Window["2000"], .8, {Size = UDim2.new(0,402,0,500)})
			Library:tween(Window["6000"], .8, {Position = Window["2000"].Position  - UDim2.new(0,0,0,260)})
			Library:tween(Window["a000"], .8, {PaddingLeft = UDim.new(0, 40)})
			Library:tween(Window["z"], .8, {ImageTransparency = 0})
			wait(.65)
			Window["6000"]["Visible"] = false
			Window["2000"]["Visible"] = false
			Window["2"]["Visible"] = true
		end)
		
		Window["b"].MouseEnter:Connect(function()
			Window.Hover = true
			Library:tween(Window["b"], 0.1, {
				ImageColor3 = Color3.fromRGB(200,200,200)})
		end)

		Window["b"].MouseLeave:Connect(function()
			Window.Hover = false
			Library:tween(Window["b"], 0.1, {
				ImageColor3 = Color3.fromRGB(255,255,255)})
		end)

		Window["b"].MouseButton1Click:Connect(function()
			Window["6000"]["Position"] = UDim2.new(0, Window["4"].AbsolutePosition.X + (Window["4"].AbsoluteSize.X / 2), 0, Window["4"].AbsolutePosition.Y + (Window["4"].AbsoluteSize.Y / 2)) - UDim2.new(0,0,0,260)
			Window["2000"]["Position"] = UDim2.new(0, Window["4"].AbsolutePosition.X + (Window["4"].AbsoluteSize.X / 2), 0, Window["4"].AbsolutePosition.Y + (Window["4"].AbsoluteSize.Y / 2)) + UDim2.new(0,0,0,40)
			Window["2000"]["Visible"] = true
			Window["b000"]["Size"] = UDim2.new(0,0,0,1)
			Window["6000"]["Visible"] = true
			Window["2"]["Visible"] = false
			Window["a000"]["PaddingLeft"] = UDim.new(0,40)
			Library:tween(Window["b000"], 2, {Size = UDim2.new(0, 402, 0 ,1)})
			Library:tween(Window["a000"], .8, {PaddingLeft = UDim.new(0, 15)})
			Library:tween(Window["z"], .8, {ImageTransparency = 1})
			Library:tween(Window["2000"], .8, {Size = UDim2.new(0,402,0,40)})
			Library:tween(Window["6000"], .8, {Position = Window["2000"].Position - UDim2.new(0,0,0,20)})
		end)
		
		-- StarterWindow.MadbukLibrary.Main.Container.TopBar.Close
		Window["c"] = Instance.new("ImageButton", Window["5"]);
		Window["c"]["BorderSizePixel"] = 0;
		Window["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Window["c"]["AnchorPoint"] = Vector2.new(0, 1);
		Window["c"]["Size"] = UDim2.new(0,15,0,15)
		Window["c"]["Image"] = [[rbxassetid://13965481321]];
		Window["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["c"]["Name"] = [[Close]];
		Window["c"]["BackgroundTransparency"] = 1;
		Window["c"]["Position"] = UDim2.new(0, 375, 0.699999988079071, 0);
		
		Window["c"].MouseEnter:Connect(function()
			Window.Hover = true
			Library:tween(Window["c"], 0.1, {
				ImageColor3 = Color3.fromRGB(255,10,10),
				Size = UDim2.new(0,20,0,20)})
			Library:tween(Window["c"], 0.3, {Rotation = 90})
			Window["c"].Position = UDim2.new(0, 373,0.7, 3)
		Window["c"]["Size"] = UDim2.new(0, 15, 0, 15);
		end)

		Window["c"].MouseLeave:Connect(function()
			Window.Hover = false
			Library:tween(Window["c"], 0.1, {
				ImageColor3 = Color3.fromRGB(255,255,255),
				Size = UDim2.new(0,15,0,15)})
			Library:tween(Window["c"], 0.3, {Rotation = 0})
			Window["c"].Position = UDim2.new(0, 375,0.7, 0)
		end)

		Window["c"].MouseButton1Click:Connect(function()
			Window["2"].ClipsDescendants = true
			game.TweenService:Create(Window["2"], TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Size = UDim2.new(0,0,0,0),
				Position = UDim2.new(0, Window["2"].AbsolutePosition.X + (Window["2"].AbsoluteSize.X / 2), 0, Window["2"].AbsolutePosition.Y + (Window["2"].AbsoluteSize.Y / 2))
			}):Play()
			wait(0.1)
			Window["1"]:Destroy()
		end)
		
	
		
	end
	
	--Navigation
	
	do
		-- StarterWindow.MadbukLibrary.Main.Container.Navigation
		Window["e"] = Instance.new("Frame", Window["4"]);
		Window["e"]["ZIndex"] = 3;
		Window["e"]["BorderSizePixel"] = 0;
		Window["e"]["BackgroundColor3"] = Color3.fromRGB(62, 62, 62);
		Window["e"]["AnchorPoint"] = Vector2.new(1, 1);
		Window["e"]["Size"] = UDim2.new(0,0,0,460);
		Window["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["e"]["Position"] = UDim2.new(0,0,0.92,40);
		Window["e"]["Visible"] = true;
		Window["e"]["Name"] = [[Navigation]];
		Window["e"]["ClipsDescendants"] = true
		
		Window["d"].MouseEnter:Connect(function()
			Window.Hover = true
			Library:tween(Window["d"], 0.1, {
				ImageColor3 = Color3.fromRGB(200,200,200)})
		end)
		
		Window["d"].MouseLeave:Connect(function()
			Window.Hover = false
			Library:tween(Window["d"], 0.1, {
				ImageColor3 = Color3.fromRGB(255,255,255)})
		end)

		
		-- StarterWindow.MadbukLibrary.Main.Container.Navigation.UICorner
		Window["f"] = Instance.new("UICorner", Window["e"]);
		Window["f"]["CornerRadius"] = UDim.new(0, 10);

		-- StarterWindow.MadbukLibrary.Main.Container.Navigation.Hide
		Window["10"] = Instance.new("Frame", Window["e"]);
		Window["10"]["ZIndex"] = 3;
		Window["10"]["BorderSizePixel"] = 0;
		Window["10"]["BackgroundColor3"] = Color3.fromRGB(62, 62, 62);
		Window["10"]["AnchorPoint"] = Vector2.new(1, 0);
		Window["10"]["Size"] = UDim2.new(0, 9, 0, 460);
		Window["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["10"]["Position"] = UDim2.new(1, 0, 0, 0);
		Window["10"]["Name"] = [[Hide]];

		-- StarterWindow.MadbukLibrary.Main.Container.Navigation.Hide2
		Window["11"] = Instance.new("Frame", Window["e"]);
		Window["11"]["ZIndex"] = 3;
		Window["11"]["BorderSizePixel"] = 0;
		Window["11"]["BackgroundColor3"] = Color3.fromRGB(62, 62, 62);
		Window["11"]["AnchorPoint"] = Vector2.new(1, 0);
		Window["11"]["Size"] = UDim2.new(0, 140, 0, 9);
		Window["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["11"]["Position"] = UDim2.new(1, 0, 0, 0);
		Window["11"]["Name"] = [[Hide2]];

		-- StarterWindow.MadbukLibrary.Main.Container.Navigation.ButtonHolder
		Window["12"] = Instance.new("Frame", Window["e"]);
		Window["12"]["ZIndex"] = 3;
		Window["12"]["BorderSizePixel"] = 0;
		Window["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Window["12"]["BackgroundTransparency"] = 1;
		Window["12"]["Size"] = UDim2.new(0, 130, 0, 450);
		Window["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["12"]["Position"] = UDim2.new(0, 5, 0, 10);
		Window["12"]["Name"] = [[ButtonHolder]];

		-- StarterWindow.MadbukLibrary.Main.Container.Navigation.ButtonHolder.UIListLayout
		Window["13"] = Instance.new("UIListLayout", Window["12"]);
		Window["13"]["Padding"] = UDim.new(0, 4);
		Window["13"]["SortOrder"] = Enum.SortOrder.LayoutOrder;



		-- StarterWindow.MadbukLibrary.Main.Container.Navigation.Line
		Window["1e"] = Instance.new("Frame", Window["e"]);
		Window["1e"]["ZIndex"] = 3;
		Window["1e"]["BorderSizePixel"] = 0;
		Window["1e"]["BackgroundColor3"] = Color3.fromRGB(86, 86, 86);
		Window["1e"]["AnchorPoint"] = Vector2.new(1, 0);
		Window["1e"]["Size"] = UDim2.new(0, 1, 0, 0);
		Window["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["1e"]["Position"] = UDim2.new(1, 0, 0, 0);
		Window["1e"]["Name"] = [[Line]];
		
		Window["d"].MouseButton1Click:Connect(function()
			Window["e"].Active = not Window["e"].Active
			if Window["e"].Active == true then
				Library:tween(Window["1e"], 1.5, {Size = UDim2.new(0,1,0,460)})
				local uiTween = tweenService:Create(Window["e"], TweenInfo.new(0.3,Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = UDim2.new(0.35,0,0.92,40), Size = UDim2.new(0,140,0,460)})
				uiTween:Play()
			else
				Library:tween(Window["1e"], 0.1, {Size = UDim2.new(0,1,0,0)})
				local uiTween2 = tweenService:Create(Window["e"], TweenInfo.new(0.3,Enum.EasingStyle.Sine, Enum.EasingDirection.In), {Position = UDim2.new(0,0,0.92,40), Size = UDim2.new(0,0,0,460)})
				uiTween2:Play()
			end
		end)
		
		-- StarterWindow.MadbukLibrary.Main.Container.TabHolder
		Window["1f"] = Instance.new("Frame", Window["4"]);
		Window["1f"]["BorderSizePixel"] = 0;
		Window["1f"]["BackgroundColor3"] = Color3.fromRGB(55, 55, 55);
		Window["1f"]["AnchorPoint"] = Vector2.new(1, 1);
		Window["1f"]["Size"] = UDim2.new(0, 390, 0, 450);
		Window["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["1f"]["Position"] = UDim2.new(0.9750000238418579, 5, 0.8999999761581421, 45);
		Window["1f"]["Name"] = [[TabHolder]];

		-- StarterGUI.Window.MadbukLibrary.Main.Container.WindowHolder.Fade
		Window["69"] = Instance.new("Frame", Window["1f"]);
		Window["69"]["BorderSizePixel"] = 0;
		Window["69"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Window["69"]["AnchorPoint"] = Vector2.new(1, 1);
		Window["69"]["Size"] = UDim2.new(0, 400, 0, -35);
		Window["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["69"]["Position"] = UDim2.new(1, 5, 0, -5);
		Window["69"]["Name"] = [[Fade]];

		-- StarterWindow.MadbukLibrary.Main.Container.WindowHolder.Fade.UIGradient
		Window["6a"] = Instance.new("UIGradient", Window["69"]);
		Window["6a"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(0.55, 0.15),NumberSequenceKeypoint.new(1, 1)};
		Window["6a"]["Rotation"] = 90;
		Window["6a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(54,54,54)),ColorSequenceKeypoint.new(1, Color3.fromRGB(36,36,36))};

		
		-- StarterWindow.MadbukLibrary.Main.Container.WindowHolder.UICorner
		Window["20"] = Instance.new("UICorner", Window["1f"]);
		Window["20"]["CornerRadius"] = UDim.new(0, 10);

		-- StarterWindow.MadbukLibrary.Main.Container.WindowHolder.Hide
		Window["21"] = Instance.new("Frame", Window["1f"]);
		Window["21"]["BorderSizePixel"] = 0;
		Window["21"]["BackgroundColor3"] = Color3.fromRGB(55, 55, 55);
		Window["21"]["ZIndex"] = 0
		Window["21"]["Size"] = UDim2.new(0, 390, 0, 5);
		Window["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Window["21"]["Name"] = [[Hide]];

		
		
		if options.intro then
			
			-- StarterGui.Window.Main
			Window["200"] = Instance.new("Frame", Window["1"]);
			Window["200"]["BorderSizePixel"] = 0;
			Window["200"]["BackgroundColor3"] = Color3.fromRGB(50,50,50);
			Window["200"]["AnchorPoint"] = Vector2.new(0.5,0.5);
			Window["200"]["Size"] = UDim2.new(0, 400, 0, 250);
			Window["200"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Window["200"]["Position"] = UDim2.new(0.5,0,0.5,0);
			Window["200"]["Name"] = [[Intro]];
			Window["200"]["BackgroundTransparency"] = 1

			

			-- StarterGui.Window.Main.UICorner
			Window["300"] = Instance.new("UICorner", Window["200"]);
			Window["300"]["CornerRadius"] = UDim.new(0, 10);

			-- StarterGui.Window.Main.UIStroke
			Window["400"] = Instance.new("UIStroke", Window["200"]);
			Window["400"]["Color"] = Color3.fromRGB(255, 255, 255);
			Window["400"]["Transparency"] = 0.699999988079071;

			-- StarterGui.Window.Main.DropShadowHolder
			Window["500"] = Instance.new("Frame", Window["200"]);
			Window["500"]["ZIndex"] = 0;
			Window["500"]["BorderSizePixel"] = 0;
			Window["500"]["AnchorPoint"] = Vector2.new(1, 1);
			Window["500"]["BackgroundTransparency"] = 1;
			Window["500"]["Size"] = UDim2.new(1, 2, 1, 2);
			Window["500"]["Position"] = UDim2.new(1, 0, 1, 0);
			Window["500"]["Name"] = [[DropShadowHolder]];

			-- Starte00rGui.Window.Main.DropShadowHolder.DropShadow
			Window["600"] = Instance.new("ImageLabel", Window["500"]);
			Window["600"]["ZIndex"] = 0;
			Window["600"]["BorderSizePixel"] = 0;
			Window["600"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
			Window["600"]["ScaleType"] = Enum.ScaleType.Slice;
			Window["600"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
			Window["600"]["ImageTransparency"] = 0.5099999904632568;
			Window["600"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
			Window["600"]["Image"] = [[rbxassetid://6014261993]];
			Window["600"]["Size"] = UDim2.new(1, 50, 1, 50);
			Window["600"]["Name"] = [[DropShadow]];
			Window["600"]["BackgroundTransparency"] = 1;
			Window["600"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

			-- Starte00rGui.Window.Main.Name
			Window["700"] = Instance.new("TextLabel", Window["200"]);
			Window["700"]["TextWrapped"] = true;
			Window["700"]["BorderSizePixel"] = 0;
			Window["700"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Window["700"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			Window["700"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Window["700"]["TextSize"] = 12;
			Window["700"]["TextColor3"] = Color3.fromRGB(223, 223, 223);
			Window["700"]["AnchorPoint"] = Vector2.new(0, 0.5);
			Window["700"]["Size"] = UDim2.new(0, 400, 0, 50);
			Window["700"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Window["700"]["Text"] = [[Madbuk Scripts]];
			Window["700"]["Name"] = [[Name]];
			Window["700"]["TextTransparency"] = 1;
			Window["700"]["BackgroundTransparency"] = 1;
			Window["700"]["Position"] = UDim2.new(0, 0, 0.5, 0);

			

			-- Starte00rGui.Window.Main.Name.UIPadding
			Window["800"] = Instance.new("UIPadding", Window["700"]);
			Window["800"]["PaddingLeft"] = UDim.new(0, 20);

			-- Starte00rGui.Window.Main.Game
			Window["900"] = Instance.new("TextLabel", Window["200"]);
			Window["900"]["TextWrapped"] = true;
			Window["900"]["BorderSizePixel"] = 0;
			Window["900"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Window["900"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			Window["900"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			Window["900"]["TextSize"] = 15;
			Window["900"]["TextColor3"] = Color3.fromRGB(222, 222, 222);
			Window["900"]["AnchorPoint"] = Vector2.new(0, 0.5);
			Window["900"]["TextTransparency"] = 1;
			Window["900"]["Size"] = UDim2.new(0, 400, 0, 50);
			Window["900"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Window["900"]["Text"] = [[Button Simulator ]];
			Window["900"]["Name"] = [[Game]];
			Window["900"]["BackgroundTransparency"] = 1;
			Window["900"]["Position"] = UDim2.new(0, 0, 0.5, -20);

			

			-- Starte00rGui.Window.Main.Game.UIPadding
			Window["a00"] = Instance.new("UIPadding", Window["900"]);
			Window["a00"]["PaddingLeft"] = UDim.new(0, 20);

			-- Starte00rGui.Window.Main.Watermark
			Window["b00"] = Instance.new("TextLabel", Window["200"]);
			Window["b00"]["TextWrapped"] = true;
			Window["b00"]["BorderSizePixel"] = 0;
			Window["b00"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Window["b00"]["TextXAlignment"] = Enum.TextXAlignment.Right;
			Window["b00"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Window["b00"]["TextTransparency"] = 0.20000000298023224;
			Window["b00"]["TextSize"] = 11;
			Window["b00"]["TextColor3"] = Color3.fromRGB(110, 110, 110);
			Window["b00"]["AnchorPoint"] = Vector2.new(1, 1);
			Window["b00"]["Size"] = UDim2.new(0, 400, 0, 50);
			Window["b00"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Window["b00"]["Text"] = [[Madbuk Library]];
			Window["b00"]["Name"] = [[Watermark]];
			Window["b00"]["BackgroundTransparency"] = 1;
			Window["b00"]["Position"] = UDim2.new(1, 0, 1, 10);
			
			Window["c00"] = Instance.new("UIPadding", Window["b00"]);
			Window["c00"]["PaddingRight"] = UDim.new(0, 10);
			
			wait(1)
			
			tweenService:Create(Window["200"], TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
			tweenService:Create(Window["700"], TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
			tweenService:Create(Window["900"], TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
			tweenService:Create(Window["b00"], TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 0.2000000298023224}):Play()
			
			wait(2.2)
			
			tweenService:Create(Window["700"], TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
			tweenService:Create(Window["900"], TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
			tweenService:Create(Window["b00"], TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
			tweenService:Create(Window["200"], TweenInfo.new(1.5, Enum.EasingStyle.Quint), {Size = Window["2"].Size}):Play()
			wait(1.55)
			Window["200"]:Destroy()

			Window["69"].Parent = Window["e"]
			wait(0.1)
			Window["69"].Parent = Window["1f"]
			
			Library:tween(Window["a"], 2, {Size = UDim2.new(0, 402, 0 ,1)})
			Window["2"].Visible = true
		else
			Library:tween(Window["a"], 2, {Size = UDim2.new(0, 402, 0 ,1)})
			Window["2"].Visible = true

			Window["69"].Parent = Window["e"]
			wait(0.1)
			Window["69"].Parent = Window["1f"]
		end
		

	end
	

	
	function Window:CreateTab(options)
		local Tab = {
			Hover = false,
			Active = false
		}
		
		
		-- StarterGUI.Window.MadbukLibrary.Main.Container.Navigation.ButtonHolder.Window1
		Tab["14"] = Instance.new("TextButton", Window["12"]);
		Tab["14"]["ZIndex"] = 3;
		Tab["14"]["BorderSizePixel"] = 0;
		Tab["14"]["BackgroundColor3"] = Color3.fromRGB(61,61,61);
		Tab["14"]["Size"] = UDim2.new(0, 130, 0, 30);
		Tab["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Tab["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		Tab["14"]["Text"] = options.name;
		Tab["14"]["TextColor3"] = Color3.fromRGB(255,255,255);
		Tab["14"]["TextSize"] = 14;
		Tab["14"]["Name"] = options.name;
		Tab["14"]["AutoButtonColor"] = false;



		-- StarterTab.MadbukLibrary.Main.Container.Navigation.ButtonHolder.Tab1.Logo
		Tab["16"] = Instance.new("ImageLabel", Tab["14"]);
		Tab["16"]["ZIndex"] = 3;
		Tab["16"]["BorderSizePixel"] = 0;
		Tab["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Tab["16"]["Image"] = options.icon;
		Tab["16"]["Size"] = UDim2.new(0, 24, 0, 24);
		Tab["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Tab["16"]["Name"] = [[Logo]];
		Tab["16"]["BackgroundTransparency"] = 1;
		Tab["16"]["Position"] = UDim2.new(0, 6, 0, 3);
		
		-- StarterWindow.MadbukLibrary.Main.Container.WindowHolder.ContentContainer
		Tab["22"] = Instance.new("ScrollingFrame", Window["1f"]);
		Tab["22"]["Active"] = true;
		Tab["22"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
		Tab["22"]["BorderSizePixel"] = 0;
		Tab["22"]["ScrollBarImageTransparency"] = 1;
		Tab["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Tab["22"]["VerticalScrollBarInset"] = Enum.ScrollBarInset.Always;
		Tab["22"]["BackgroundTransparency"] = 1;
		Tab["22"]["Size"] = UDim2.new(0, 374, 0, 440);
		Tab["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Tab["22"]["ScrollBarThickness"] = 0;
		Tab["22"]["Position"] = UDim2.new(0, 8, 0, 5);
		Tab["22"]["Name"] = [[ContentContainer]];
		Tab["22"]["Visible"] = false

		-- StarterTab.MadbukLibrary.Main.Container.TabHolder.ContentContainer.UIPadding
		Tab["58"] = Instance.new("UIPadding", Tab["22"]);
		Tab["58"]["PaddingTop"] = UDim.new(0, 10);
		Tab["58"]["PaddingLeft"] = UDim.new(0, 3);

		-- StarterTab.MadbukLibrary.Main.Container.TabHolder.ContentContainer.UIListLayout
		Tab["23"] = Instance.new("UIListLayout", Tab["22"]);
		Tab["23"]["Padding"] = UDim.new(0, 6);
		Tab["23"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
		
		-- StarterTab.MadbukLibrary.Main.Container.Navigation.ButtonHolder.Tab1.UICorner
		Tab["18"] = Instance.new("UICorner", Tab["14"]);
		
		

		
		function Tab:Deactivate()
			if Tab.Active then
				Tab.Active = false
				Tab.Hover = false
				Library:tween(Tab["14"], 0.2, {BackgroundColor3 = Color3.fromRGB(61,61,61)})
				Library:tween(Tab["14"], 0.2, {BackgroundTransparency = 0.4})
				Library:tween(Tab["14"], 0.2, {TextColor3 = Color3.fromRGB(255,255,255)})
				
				Library:tween(Tab["22"], 0.8, {Size = UDim2.new(0,0,0,0)})
				Tab["22"].Visible = false
			end
		end
		
		function Tab:Activate()
			if not Tab.Active then
				if Window.CurrentTab ~= nil then  
					Window.CurrentTab:Deactivate()
				end
				Tab.Active = true
				
				Library:tween(Tab["14"], 0.2, {BackgroundColor3 = Color3.fromRGB(100,100,100)})
				Library:tween(Tab["14"], 0.2, {BackgroundTransparency = 0})
				
				Tab["22"].Visible = true
				Library:tween(Tab["22"], 0.8, {Size = UDim2.new(0, 374, 0, 440)})
				Window.CurrentTab = Tab
			end
		end
		
		Tab["14"].MouseEnter:Connect(function()
			Tab.Hover = true

			if not Tab.Active then
				Library:tween(Tab["16"], 0.2, {ImageColor3 = Color3.fromRGB(200,200,200)})
				Library:tween(Tab["14"], 0.2, {TextColor3 = Color3.fromRGB(200,200,200)})
			end
		end)
		Tab["14"].MouseLeave:Connect(function()
			Tab.Hover = false
			
			if not Tab.Active then
				Library:tween(Tab["16"], 0.2, {ImageColor3 = Color3.fromRGB(255,255,255)})
				Library:tween(Tab["14"], 0.2, {TextColor3 = Color3.fromRGB(255,255,255)})
			end
		end)

		Tab["14"].MouseButton1Click:Connect(function()
			Tab:Activate()
		end)
		
		
		if Window.CurrentTab == nil then
			Tab:Activate()
		end
		
		function Tab:CreateButton(options)
			local Button = {
				Hover = false,
				MouseDown = false
			}
			
			-- StarterTab.MadbukLibrary.Main.Container.TabHolder.ContentContainer.Button
			Button["24"] = Instance.new("TextButton", Tab["22"]);
			Button["24"]["BorderSizePixel"] = 0;
			Button["24"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28);
			Button["24"]["Size"] = UDim2.new(0, 370, 0, 40);
			Button["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Button["24"]["Name"] = [[Button]];
			Button["24"]["Text"] = options.name
			Button["24"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Button["24"]["TextColor3"] = Color3.fromRGB(255,255,255)
			Button["24"]["TextSize"] = 14;
			Button["24"]["TextXAlignment"] = "Left"
			Button["24"]["AutoButtonColor"] = false

			-- StarterButton.MadbukLibrary.Main.Container.ButtonHolder.ContentContainer.Button.UIStroke
			Button["25"] = Instance.new("UIStroke", Button["24"]);
			Button["25"]["Color"] = Color3.fromRGB(255, 255, 255);
			Button["25"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

			-- StarterButton.MadbukLibrary.Main.Container.ButtonHolder.ContentContainer.Button.UICorner
			Button["26"] = Instance.new("UICorner", Button["24"]);

			

			-- StarterButton.MadbukLibrary.Main.Container.ButtonHolder.ContentContainer.Button.UIPadding
			Button["28"] = Instance.new("UIPadding", Button["24"]);
			Button["28"]["PaddingLeft"] = UDim.new(0, 10);

			-- StarterButton.MadbukLibrary.Main.Container.ButtonHolder.ContentContainer.Button.Indicator
			Button["29"] = Instance.new("ImageLabel", Button["24"]);
			Button["29"]["BorderSizePixel"] = 0;
			Button["29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Button["29"]["ImageColor3"] = Color3.fromRGB(71, 71, 71);
			Button["29"]["AnchorPoint"] = Vector2.new(1, 0.5);
			Button["29"]["Image"] = [[rbxassetid://13965851117]];
			Button["29"]["Size"] = UDim2.new(0, 20, 0, 20);
			Button["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Button["29"]["Name"] = [[Indicator]];
			Button["29"]["BackgroundTransparency"] = 1;
			Button["29"]["Position"] = UDim2.new(1, -15, 0.5, 0);
			
			Button["24"].MouseEnter:Connect(function()
				Button.Hover = true

				Library:tween(Button["24"], 0.2, {BackgroundColor3 = Color3.fromRGB(33,33,33)})
				Library:tween(Button["24"], 0.2, {TextColor3 = Color3.fromRGB(222,222,222)})
				
			end)
			Button["24"].MouseLeave:Connect(function()
				Button.Hover = false

				Library:tween(Button["24"], 0.2, {BackgroundColor3 = Color3.fromRGB(27,27,27)})
				Library:tween(Button["24"], 0.2, {TextColor3 = Color3.fromRGB(255,255,255)})
				
			end)
			
			Button["24"].MouseButton1Click:Connect(function()
				options.callback()
			end)
			
			return Button
		end
		
		function Tab:CreateLabel(options)
			local Label = {
				Hover = false
			}
			
			
			-- StarterTab.MadbukLibrary.Main.Container.TabHolder.ContentContainer.TextLabel
			Label["2a"] = Instance.new("Frame", Tab["22"]);
			Label["2a"]["BorderSizePixel"] = 0;
			Label["2a"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28);
			Label["2a"]["Size"] = UDim2.new(0, 370, 0, 50);
			Label["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Label["2a"]["Name"] = [[TextLabel]];
			
			

			-- StarterLabel.MadbukLibrary.Main.Container.LabelHolder.ContentContainer.TextLabel.UIStroke
			Label["2b"] = Instance.new("UIStroke", Label["2a"]);
			Label["2b"]["Color"] = Color3.fromRGB(155, 155, 155);
			Label["2b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

			-- StarterLabel.MadbukLibrary.Main.Container.LabelHolder.ContentContainer.TextLabel.UICorner
			Label["2c"] = Instance.new("UICorner", Label["2a"]);


			-- StarterLabel.MadbukLibrary.Main.Container.LabelHolder.ContentContainer.TextLabel.Text
			Label["2d"] = Instance.new("TextLabel", Label["2a"]);
			Label["2d"]["TextWrapped"] = true;
			Label["2d"]["BorderSizePixel"] = 0;
			Label["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Label["2d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			Label["2d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Label["2d"]["TextSize"] = 14;
			Label["2d"]["Text"] = options.text;
			Label["2d"]["TextColor3"] = Color3.fromRGB(155, 155, 155);
			Label["2d"]["Size"] = UDim2.new(0, 370, 0, 50);
			Label["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Label["2d"]["Name"] = [[Text]];
			Label["2d"]["BackgroundTransparency"] = 1;

			-- StarterLabel.MadbukLibrary.Main.Container.LabelHolder.ContentContainer.TextLabel.Text.UIPadding
			Label["2e"] = Instance.new("UIPadding", Label["2d"]);
			Label["2e"]["PaddingLeft"] = UDim.new(0, 10);
			
			Label["2a"].MouseEnter:Connect(function()
				Library:tween(Label["2a"], 0.2, {BackgroundColor3 = Color3.fromRGB(32,32,32)})
				Library:tween(Label["2d"], 0.2, {TextColor3 = Color3.fromRGB(200,200,200)})
			end)
			Label["2a"].MouseLeave:Connect(function()
				Library:tween(Label["2a"], 0.3, {BackgroundColor3 = Color3.fromRGB(28,28,28)})
				Library:tween(Label["2d"], 0.2, {TextColor3 = Color3.fromRGB(155,155,155)})
			end)
			
			return Label
		end
		
		function Tab:CreateToggle(options)
			local Toggle = {
				Hover = false,
				State = false
			}
			

			-- StarterTab.MadbukLibrary.Main.Container.TabHolder.ContentContainer.ToggleOff
			Toggle["59"] = Instance.new("Frame", Tab["22"]);
			Toggle["59"]["BorderSizePixel"] = 0;
			Toggle["59"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28);
			Toggle["59"]["Size"] = UDim2.new(0, 370, 0, 40);
			Toggle["59"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Toggle["59"]["Name"] = [[ToggleOff]];
			
			Toggle["59"].MouseEnter:Connect(function()
				Library:tween(Toggle["59"], 0.2, {BackgroundColor3 = Color3.fromRGB(32,32,32)})
			end)
			
			Toggle["59"].MouseLeave:Connect(function()
				Library:tween(Toggle["59"], 0.3, {BackgroundColor3 = Color3.fromRGB(28,28,28)})
			end)

			-- StarterToggle.MadbukLibrary.Main.Container.ToggleHolder.ContentContainer.ToggleOff.UIStroke
			Toggle["5a"] = Instance.new("UIStroke", Toggle["59"]);
			Toggle["5a"]["Color"] = Color3.fromRGB(255, 255, 255);
			Toggle["5a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

			-- StarterToggle.MadbukLibrary.Main.Container.ToggleHolder.ContentContainer.ToggleOff.UICorner
			Toggle["5b"] = Instance.new("UICorner", Toggle["59"]);


			-- StarterToggle.MadbukLibrary.Main.Container.ToggleHolder.ContentContainer.ToggleOff.Button
			Toggle["5c"] = Instance.new("TextButton", Toggle["59"]);
			Toggle["5c"]["BorderSizePixel"] = 0;
			Toggle["5c"]["BackgroundColor3"] = Color3.fromRGB(55, 55, 55);
			Toggle["5c"]["AnchorPoint"] = Vector2.new(1, 0.5);
			Toggle["5c"]["Size"] = UDim2.new(0, 30, 0, 30);
			Toggle["5c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Toggle["5c"]["Position"] = UDim2.new(1, -10, 0.5, 0);
			Toggle["5c"]["Name"] = [[Button]];
			Toggle["5c"]["AutoButtonColor"] = false
			Toggle["5c"]["Text"] = ""
			
			Toggle["5c"].MouseEnter:Connect(function()
				Toggle.Hover = true
				
				if Toggle.State then
					Library:tween(Toggle["5c"], 0.2, {BackgroundColor3 = Color3.fromRGB(0,255,170)})
				else
					Library:tween(Toggle["5c"], 0.3, {BackgroundColor3 = Color3.fromRGB(66,66,66)})
				end
			end)
			Toggle["5c"].MouseLeave:Connect(function()
				Toggle.Hover = false
				
				if Toggle.State  then
					Library:tween(Toggle["5c"], 0.3, {BackgroundColor3 = Color3.fromRGB(0,255,127)})
				else
					Library:tween(Toggle["5c"], 0.2, {BackgroundColor3 = Color3.fromRGB(54,54,54)})
				end
			end)
			
			Toggle["5c"].MouseButton1Click:Connect(function()
				Toggle.State = not Toggle.State

				if Toggle.State then
					Library:tween(Toggle["5c"], 0.3, {BackgroundColor3 = Color3.fromRGB(0,255,127)})
				else
					Library:tween(Toggle["5c"], 0.3, {BackgroundColor3 = Color3.fromRGB(54,54,54)})
				end
				
				options.callback(Toggle.State)
			end)
			
			-- StarterToggle.MadbukLibrary.Main.Container.ToggleHolder.ContentContainer.ToggleOff.Button.UICorner
			Toggle["5d"] = Instance.new("UICorner", Toggle["5c"]);
			Toggle["5d"]["CornerRadius"] = UDim.new(0, 4);

			-- StarterToggle.MadbukLibrary.Main.Container.ToggleHolder.ContentContainer.ToggleOff.Button.UIStroke
			Toggle["5e"] = Instance.new("UIStroke", Toggle["5c"]);
			Toggle["5e"]["Color"] = Color3.fromRGB(255, 255, 255);

			-- StarterToggle.MadbukLibrary.Main.Container.ToggleHolder.ContentContainer.ToggleOff.Text
			Toggle["5f"] = Instance.new("TextLabel", Toggle["59"]);
			Toggle["5f"]["BorderSizePixel"] = 0;
			Toggle["5f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Toggle["5f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			Toggle["5f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Toggle["5f"]["TextSize"] = 14;
			Toggle["5f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
			Toggle["5f"]["Size"] = UDim2.new(0, 370, 0, 40);
			Toggle["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Toggle["5f"]["Text"] = options.name;
			Toggle["5f"]["Name"] = [[Text]];
			Toggle["5f"]["BackgroundTransparency"] = 1;

			-- StarterToggle.MadbukLibrary.Main.Container.ToggleHolder.ContentContainer.ToggleOff.Text.UIPadding
			Toggle["60"] = Instance.new("UIPadding", Toggle["5f"]);
			Toggle["60"]["PaddingLeft"] = UDim.new(0, 10);
			
			
			return Toggle
		end
		
		function Tab:CreateSlider(options)
			local Slider = {
				Hover = false,
				State = false,
				Connection = nil,
				MouseDown = false,
			}
			
			


			-- StarterTab.MadbukLibrary.Main.Container.TabHolder.ContentContainer.Slider
			Slider["2f"] = Instance.new("ImageButton", Tab["22"]);
			Slider["2f"]["BorderSizePixel"] = 0;
			Slider["2f"]["AutoButtonColor"] = false;
			Slider["2f"]["ImageTransparency"] = 1;
			Slider["2f"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28);
			Slider["2f"]["Size"] = UDim2.new(0, 370, 0, 60);
			Slider["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Slider["2f"]["Name"] = [[Slider]];

			-- StarterSlider.MadbukLibrary.Main.Container.SliderHolder.ContentContainer.Slider.UIStroke
			Slider["30"] = Instance.new("UIStroke", Slider["2f"]);
			Slider["30"]["Color"] = Color3.fromRGB(255, 255, 255);
			Slider["30"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

			-- StarterSlider.MadbukLibrary.Main.Container.SliderHolder.ContentContainer.Slider.UICorner
			Slider["31"] = Instance.new("UICorner", Slider["2f"]);


			-- StarterSlider.MadbukLibrary.Main.Container.SliderHolder.ContentContainer.Slider.Text
			Slider["32"] = Instance.new("TextLabel", Slider["2f"]);
			Slider["32"]["BorderSizePixel"] = 0;
			Slider["32"]["TextYAlignment"] = Enum.TextYAlignment.Top;
			Slider["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Slider["32"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			Slider["32"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Slider["32"]["TextSize"] = 14;
			Slider["32"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
			Slider["32"]["Size"] = UDim2.new(0, 370, 0, 40);
			Slider["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Slider["32"]["Text"] = options.name;
			Slider["32"]["Name"] = [[Text]];
			Slider["32"]["BackgroundTransparency"] = 1;

			-- StarterSlider.MadbukLibrary.Main.Container.SliderHolder.ContentContainer.Slider.Text.UIPadding
			Slider["33"] = Instance.new("UIPadding", Slider["32"]);
			Slider["33"]["PaddingTop"] = UDim.new(0, 12);
			Slider["33"]["PaddingLeft"] = UDim.new(0, 10);

			-- StarterSlider.MadbukLibrary.Main.Container.SliderHolder.ContentContainer.Slider.Value
			Slider["34"] = Instance.new("TextLabel", Slider["2f"]);
			Slider["34"]["BorderSizePixel"] = 0;
			Slider["34"]["TextYAlignment"] = Enum.TextYAlignment.Top;
			Slider["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Slider["34"]["TextXAlignment"] = Enum.TextXAlignment.Right;
			Slider["34"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Slider["34"]["TextSize"] = 12;
			Slider["34"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
			Slider["34"]["Size"] = UDim2.new(0, 370, 0, 40);
			Slider["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Slider["34"]["Text"] = tostring(options.default);
			Slider["34"]["Name"] = [[Value]];
			Slider["34"]["BackgroundTransparency"] = 1;

			-- StarterSlider.MadbukLibrary.Main.Container.SliderHolder.ContentContainer.Slider.Value.UIPadding
			Slider["35"] = Instance.new("UIPadding", Slider["34"]);
			Slider["35"]["PaddingTop"] = UDim.new(0, 4);
			Slider["35"]["PaddingRight"] = UDim.new(0, 10);

			-- StarterSlider.MadbukLibrary.Main.Container.SliderHolder.ContentContainer.Slider.Slider
			Slider["36"] = Instance.new("ImageButton", Slider["2f"]);
			Slider["36"]["BorderSizePixel"] = 0;
			Slider["36"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28);
			Slider["36"]["AnchorPoint"] = Vector2.new(0, 1);
			Slider["36"]["ImageTransparency"] = 1;
			Slider["36"]["AutoButtonColor"] = false;
			Slider["36"]["Size"] = UDim2.new(0, 350, 0, 7);
			Slider["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Slider["36"]["Position"] = UDim2.new(0.029999999329447746, 0, 0.699999988079071, 0);
			Slider["36"]["Name"] = [[Slider]];

			-- StarterSlider.MadbukLibrary.Main.Container.SliderHolder.ContentContainer.Slider.Slider.UIStroke
			Slider["37"] = Instance.new("UIStroke", Slider["36"]);
			Slider["37"]["Color"] = Color3.fromRGB(255, 255, 255);
			Slider["37"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

			-- StarterSlider.MadbukLibrary.Main.Container.SliderHolder.ContentContainer.Slider.Slider.Draggable
			Slider["38"] = Instance.new("ImageButton", Slider["36"]);
			Slider["38"]["BorderSizePixel"] = 0;
			Slider["38"]["ImageTransparency"] = 1;
			Slider["38"]["AutoButtonColor"] = false;
			Slider["38"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Slider["38"]["Size"] = UDim2.new(0, 1, 0, 7);
			Slider["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Slider["38"]["Name"] = [[Draggable]];

			-- StarterSlider.MadbukLibrary.Main.Container.SliderHolder.ContentContainer.Slider.Slider.Draggable.UICorner
			Slider["39"] = Instance.new("UICorner", Slider["38"]);


			-- StarterSlider.MadbukLibrary.Main.Container.SliderHolder.ContentContainer.Slider.Slider.UICorner
			Slider["3a"] = Instance.new("UICorner", Slider["36"]);

			function Slider:SetValue(v)
				if v == nil then
					local percentage = math.clamp((mouse.X - Slider["36"].AbsolutePosition.X) / (Slider["36"].AbsoluteSize.X), 0, 1)
					local value = ((options.max - options.min) * percentage) + options.min
					
					Slider["34"].Text = tostring(math.ceil(value))
					Library:tween(Slider["38"], 0.2, {Size = UDim2.fromScale(percentage, 1)})
				else
					Slider["34"].Text = tostring(math.ceil(v))
					Library:tween(Slider["38"], 0.2, {Size = UDim2.fromScale(((v - options.min) / (options.max - options.min)), 1)})
				end
				options.callback(Slider:GetValue())
			end
			
			function Slider:GetValue()
				return math.ceil(tonumber(Slider["34"].Text))
			end
			
			--Logic
			
			do
				Slider["2f"].MouseEnter:Connect(function()
					Slider.Hover = true

					Library:tween(Slider["36"], 0.2, {BackgroundColor3 = Color3.fromRGB(45,45,45)})
					Library:tween(Slider["38"], 0.2, {BackgroundColor3 = Color3.fromRGB(180,180,180)})
					Library:tween(Slider["2f"], 0.2, {BackgroundColor3 = Color3.fromRGB(32,32,32)})
				end)
				Slider["2f"].MouseLeave:Connect(function()
					Slider.Hover = false

					Library:tween(Slider["36"], 0.2, {BackgroundColor3 = Color3.fromRGB(27,27,27)})
					Library:tween(Slider["38"], 0.2, {BackgroundColor3 = Color3.fromRGB(255,255,255)})
					Library:tween(Slider["2f"], 0.2, {BackgroundColor3 = Color3.fromRGB(28,28,28)})
				end)
				
				Slider["2f"].MouseButton1Down:Connect(function()
					Slider.MouseDown = true
					
					if not Slider.Connection then
						Slider.Connection = runService.RenderStepped:Connect(function()
							Slider:SetValue()
						end)
					end
				end)
				


				Slider["2f"].MouseButton1Up:Connect(function()
					Slider.MouseDown = false
					
					if Slider.Connection then Slider.Connection:Disconnect() end
					Slider.Connection = nil
				end)
				
				Slider["36"].MouseButton1Down:Connect(function()
					Slider.MouseDown = true

					if not Slider.Connection then
						Slider.Connection = runService.RenderStepped:Connect(function()
							Slider:SetValue()
						end)
					end
				end)



				Slider["36"].MouseButton1Up:Connect(function()
					Slider.MouseDown = false

					if Slider.Connection then Slider.Connection:Disconnect() end
					Slider.Connection = nil
				end)
				Slider["38"].MouseButton1Down:Connect(function()
					Slider.MouseDown = true

					if not Slider.Connection then
						Slider.Connection = runService.RenderStepped:Connect(function()
							Slider:SetValue()
						end)
					end
				end)



				Slider["38"].MouseButton1Up:Connect(function()
					Slider.MouseDown = false

					if Slider.Connection then Slider.Connection:Disconnect() end
					Slider.Connection = nil
				end)
				
				
			end
			
			return Slider
		end
		
		function Tab:CreateDropdown(options)
			local Dropdown = {
				Items = {
					["id"] = {

						"value"
					}
				},
				Active = false
			}
			
			-- StarterTab.MadbukLibrary.Main.Container.TabHolder.ContentContainer.Dropdown
			Dropdown["3b"] = Instance.new("Frame", Tab["22"]);
			Dropdown["3b"]["BorderSizePixel"] = 0;
			Dropdown["3b"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28);
			Dropdown["3b"]["Size"] = UDim2.new(0, 370, 0, 30);
			Dropdown["3b"]["ClipsDescendants"] = false;
			Dropdown["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Dropdown["3b"]["Position"] = UDim2.new(0.008021390065550804, 0, 0.48636364936828613, 0);
			Dropdown["3b"]["Name"] = [[Dropdown]];

			-- StarterDropdown.MadbukLibrary.Main.Container.DropdownHolder.ContentContainer.Dropdown.UIStroke
			Dropdown["3c"] = Instance.new("UIStroke", Dropdown["3b"]);
			Dropdown["3c"]["Color"] = Color3.fromRGB(255, 255, 255);
			Dropdown["3c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

			-- StarterDropdown.MadbukLibrary.Main.Container.DropdownHolder.ContentContainer.Dropdown.UICorner
			Dropdown["3d"] = Instance.new("UICorner", Dropdown["3b"]);


			-- StarterDropdown.MadbukLibrary.Main.Container.DropdownHolder.ContentContainer.Dropdown.OptionHolder
			Dropdown["3e"] = Instance.new("Frame", Dropdown["3b"]);
			Dropdown["3e"]["BorderSizePixel"] = 0;
			Dropdown["3e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Dropdown["3e"]["AnchorPoint"] = Vector2.new(0, 1);
			Dropdown["3e"]["BackgroundTransparency"] = 1;
			Dropdown["3e"]["Size"] = UDim2.new(0, 360, 0, 27);
			Dropdown["3e"]["Visible"] = false
			Dropdown["3e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Dropdown["3e"]["Position"] = UDim2.new(0, 5, 0.92, 0);
			Dropdown["3e"]["Name"] = [[OptionHolder]];

			
			-- StarterDropdown.MadbukLibrary.Main.Container.DropdownHolder.ContentContainer.Dropdown.TextHolder
			Dropdown["52"] = Instance.new("ImageButton", Dropdown["3b"]);
			Dropdown["52"]["ZIndex"] = 2;
			Dropdown["52"]["BorderSizePixel"] = 0;
			Dropdown["52"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28);
			Dropdown["52"]["Size"] = UDim2.new(0, 370, 0, 30);
			Dropdown["52"]["ClipsDescendants"] = false;
			Dropdown["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Dropdown["52"]["Name"] = [[TextHolder]];
			Dropdown["52"]["ImageTransparency"] = 1;
			Dropdown["52"]["AutoButtonColor"] = false;

			-- StarterDropdown.MadbukLibrary.Main.Container.DropdownHolder.ContentContainer.Dropdown.TextHolder.Indicator
			Dropdown["53"] = Instance.new("ImageLabel", Dropdown["52"]);
			Dropdown["53"]["ZIndex"] = 2;
			Dropdown["53"]["BorderSizePixel"] = 0;
			Dropdown["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Dropdown["53"]["ImageColor3"] = Color3.fromRGB(71, 71, 71);
			Dropdown["53"]["AnchorPoint"] = Vector2.new(1, 0.5);
			Dropdown["53"]["Image"] = [[rbxassetid://13966204590]];
			Dropdown["53"]["Size"] = UDim2.new(0, 20, 0, 20);
			Dropdown["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Dropdown["53"]["Name"] = [[Indicator]];
			Dropdown["53"]["BackgroundTransparency"] = 1;
			Dropdown["53"]["Position"] = UDim2.new(1, -15, 0, 15);

			-- StarterDropdown.MadbukLibrary.Main.Container.DropdownHolder.ContentContainer.Dropdown.TextHolder.Text
			Dropdown["54"] = Instance.new("TextLabel", Dropdown["52"]);
			Dropdown["54"]["ZIndex"] = 2;
			Dropdown["54"]["BorderSizePixel"] = 0;
			Dropdown["54"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Dropdown["54"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			Dropdown["54"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Dropdown["54"]["TextSize"] = 14;
			Dropdown["54"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
			Dropdown["54"]["Size"] = UDim2.new(0, 370, 0, 30);
			Dropdown["54"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Dropdown["54"]["Text"] = options.name;
			Dropdown["54"]["Name"] = [[Text]];
			Dropdown["54"]["BackgroundTransparency"] = 1;

			-- StarterDropdown.MadbukLibrary.Main.Container.DropdownHolder.ContentContainer.Dropdown.TextHolder.Text.UIPadding
			Dropdown["55"] = Instance.new("UIPadding", Dropdown["54"]);
			Dropdown["55"]["PaddingLeft"] = UDim.new(0, 10);

			-- StarterDropdown.MadbukLibrary.Main.Container.DropdownHolder.ContentContainer.Dropdown.TextHolder.UICorner
			Dropdown["56"] = Instance.new("UICorner", Dropdown["52"]);


			-- StarterDropdown.MadbukLibrary.Main.Container.DropdownHolder.ContentContainer.Dropdown.TextHolder.UIStroke
			Dropdown["57"] = Instance.new("UIStroke", Dropdown["52"]);
			Dropdown["57"]["Color"] = Color3.fromRGB(255, 255, 255);
			Dropdown["57"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
			

			-- StarterDropdown.MadbukLibrary.Main.Container.DropdownHolder.ContentContainer.Dropdown.OptionHolder.UIListLayout
			Dropdown["45"] = Instance.new("UIListLayout", Dropdown["3e"]);
			Dropdown["45"]["Padding"] = UDim.new(0, 6);
			Dropdown["45"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

		
			
			
			
			function Dropdown:Add(id, value)
				if Dropdown.Items[id] ~= nil then
					return
				end
				
				Dropdown.Items[id] ={
					instance = {},
					value = value
				}
				-- StarterDropdown.MadbukLibrary.Main.Container.DropdownHolder.ContentContainer.Dropdown.OptionHolder.InactiveOption
				Dropdown.Items[id].instance["4c"] = Instance.new("ImageButton", Dropdown["3e"]);
				Dropdown.Items[id].instance["4c"]["BorderSizePixel"] = 0;
				Dropdown.Items[id].instance["4c"]["ImageTransparency"] = 1;
				Dropdown.Items[id].instance["4c"]["AutoButtonColor"] = false;
				Dropdown.Items[id].instance["4c"]["BackgroundColor3"] = Color3.fromRGB(37, 37, 37);
				Dropdown.Items[id].instance["4c"]["Size"] = UDim2.new(0, 360, 0, 25);
				Dropdown.Items[id].instance["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Dropdown.Items[id].instance["4c"]["Name"] = [[InactiveOption]];

				-- StarterDropdown.MadbukLibrary.Main.Container.DropdownHolder.ContentContainer.Dropdown.OptionHolder.InactiveOption.UIStroke
				Dropdown.Items[id].instance["4d"] = Instance.new("UIStroke", Dropdown.Items[id].instance["4c"]);
				Dropdown.Items[id].instance["4d"]["Color"] = Color3.fromRGB(255, 255, 255);
				Dropdown.Items[id].instance["4d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterDropdown.MadbukLibrary.Main.Container.DropdownHolder.ContentContainer.Dropdown.OptionHolder.InactiveOption.UICorner
				Dropdown.Items[id].instance["4e"] = Instance.new("UICorner", Dropdown.Items[id].instance["4c"]);


				-- StarterDropdown.MadbukLibrary.Main.Container.DropdownHolder.ContentContainer.Dropdown.OptionHolder.InactiveOption.Indicator
				Dropdown.Items[id].instance["4f"] = Instance.new("ImageLabel", Dropdown.Items[id].instance["4c"]);
				Dropdown.Items[id].instance["4f"]["BorderSizePixel"] = 0;
				Dropdown.Items[id].instance["4f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Dropdown.Items[id].instance["4f"]["ImageColor3"] = Color3.fromRGB(71, 71, 71);
				Dropdown.Items[id].instance["4f"]["AnchorPoint"] = Vector2.new(1, 0.5);
				Dropdown.Items[id].instance["4f"]["Image"] = [[rbxassetid://13965851117]];
				Dropdown.Items[id].instance["4f"]["Size"] = UDim2.new(0, 20, 0, 20);
				Dropdown.Items[id].instance["4f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Dropdown.Items[id].instance["4f"]["Name"] = [[Indicator]];
				Dropdown.Items[id].instance["4f"]["BackgroundTransparency"] = 1;
				Dropdown.Items[id].instance["4f"]["Position"] = UDim2.new(1, -15, 0.5, 0);

				-- StarterDropdown.MadbukLibrary.Main.Container.DropdownHolder.ContentContainer.Dropdown.OptionHolder.InactiveOption.Text
				Dropdown.Items[id].instance["50"] = Instance.new("TextLabel", Dropdown.Items[id].instance["4c"]);
				Dropdown.Items[id].instance["50"]["BorderSizePixel"] = 0;
				Dropdown.Items[id].instance["50"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Dropdown.Items[id].instance["50"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Dropdown.Items[id].instance["50"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Dropdown.Items[id].instance["50"]["TextSize"] = 14;
				Dropdown.Items[id].instance["50"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Dropdown.Items[id].instance["50"]["Size"] = UDim2.new(0, 370, 0, 40);
				Dropdown.Items[id].instance["50"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Dropdown.Items[id].instance["50"]["Text"] = id;
				Dropdown.Items[id].instance["50"]["Name"] = [[Text]];
				Dropdown.Items[id].instance["50"]["BackgroundTransparency"] = 1;
				Dropdown.Items[id].instance["50"]["Position"] = UDim2.new(0, 0, -0.30000001192092896, 0);

				-- StarterDropdown.MadbukLibrary.Main.Container.DropdownHolder.ContentContainer.Dropdown.OptionHolder.InactiveOption.Text.UIPadding
				Dropdown.Items[id].instance["51"] = Instance.new("UIPadding", Dropdown.Items[id].instance["50"]);
				Dropdown.Items[id].instance["51"]["PaddingLeft"] = UDim.new(0, 10);

				Dropdown.Items[id].instance["4c"].MouseEnter:Connect(function()
					Library:tween(Dropdown["52"],0.3,{BackgroundColor3 = Color3.fromRGB(32,32,32)})
				end)

				Dropdown.Items[id].instance["4c"].MouseLeave:Connect(function()
					Library:tween(Dropdown["52"],0.3,{BackgroundColor3 = Color3.fromRGB(28,28,28)})
				end)


				Dropdown.Items[id].instance["4c"].MouseButton1Click:Connect(function()
					options.callback(value)
					Dropdown:Toggle()
				end)
				
			end
			
			function Dropdown:Remove(id)
				if Dropdown.Items[id] ~= nil then
					if #Dropdown.Items[id].instance ~= nil then
						for i,v in next, Dropdown.Items[id].instance do
						v:Destroy()
						end
					end
					Dropdown.Items[id] = nil
				end
			end
			
			function Dropdown:Clear()
				for i,v in next, Dropdown.Items do
					Dropdown:Remove(i)
				end
			end
			
			function Dropdown:Toggle()
				Dropdown.Active = not Dropdown.Active
				if Dropdown.Active == false then
					Dropdown["3e"]["Visible"] = false
					Library:tween(Dropdown["3b"], 0.4, {Size = UDim2.new(0,370,0,30)})
				else
					local count = -1
					for i,v in next, Dropdown.Items do
						if v ~= nil then
							count += 1
						end
					end
					print(count)
					
					Dropdown["3e"]["Size"] = UDim2.new(0,360,0,0)
					Dropdown["3b"]["Size"] = UDim2.new(0,370,0,0)
					Dropdown["3e"]["Visible"] = true
					if count == 1 then
						Library:tween(Dropdown["3b"], 0.4, {Size = UDim2.new(0,370,0,30 + (count*35))})
						Library:tween(Dropdown["3e"], 0.4, {Size = UDim2.new(0,360,0,27 + (count*27)) - UDim2.new(0,0,0,27)})
					elseif count == 2 then
						Library:tween(Dropdown["3b"], 0.4, {Size = UDim2.new(0,370,0,30 + (count*33))})
						Library:tween(Dropdown["3e"], 0.4, {Size = UDim2.new(0,360,0,27 + (count*27)) - UDim2.new(0,0,0,27)})
					else
						Library:tween(Dropdown["3b"], 0.4, {Size = UDim2.new(0,370,0,30 + (count*31))})
						Library:tween(Dropdown["3e"], 0.4, {Size = UDim2.new(0,360,0,27 + (count*27)) - UDim2.new(0,0,0,27)})
					end
				end
			end
			
			Dropdown["52"].MouseEnter:Connect(function()
				Library:tween(Dropdown["52"],0.3,{BackgroundColor3 = Color3.fromRGB(32,32,32)})
			end)

			Dropdown["52"].MouseLeave:Connect(function()
				Library:tween(Dropdown["52"],0.3,{BackgroundColor3 = Color3.fromRGB(28,28,28)})
			end)

			
			Dropdown["52"].MouseButton1Click:Connect(function()
				Dropdown:Toggle()
			end)
			
			
			return Dropdown
		end
		
		function Tab:CreateTextbox(options)
			local Textbox = {
				
			}
			
			-- StarterGui.MadbukLibraryT.Main.Container.TabHolder.ContentContainer.Textbox
			Textbox["52"] = Instance.new("Frame", Tab["22"]);
			Textbox["52"]["BorderSizePixel"] = 0;
			Textbox["52"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28);
			Textbox["52"]["Size"] = UDim2.new(0, 370, 0, 50);
			Textbox["52"]["ClipsDescendants"] = true;
			Textbox["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Textbox["52"]["Name"] = [[Textbox]];

			-- StarterGui.MadbukLibraryT.Main.Container.TabHolder.ContentContainer.Textbox.UIStroke
			Textbox["53"] = Instance.new("UIStroke", Textbox["52"]);
			Textbox["53"]["Color"] = Color3.fromRGB(255, 255, 255);
			Textbox["53"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

			-- StarterGui.MadbukLibraryT.Main.Container.TabHolder.ContentContainer.Textbox.UICorner
			Textbox["54"] = Instance.new("UICorner", Textbox["52"]);


			-- StarterGui.MadbukLibraryT.Main.Container.TabHolder.ContentContainer.Textbox.Text
			Textbox["55"] = Instance.new("TextLabel", Textbox["52"]);
			Textbox["55"]["BorderSizePixel"] = 0;
			Textbox["55"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Textbox["55"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			Textbox["55"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Textbox["55"]["TextSize"] = 14;
			Textbox["55"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
			Textbox["55"]["Size"] = UDim2.new(0, 370, 0, 50);
			Textbox["55"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Textbox["55"]["Text"] = options.name;
			Textbox["55"]["Name"] = [[Text]];
			Textbox["55"]["BackgroundTransparency"] = 1;

			-- StarterGui.MadbukLibraryT.Main.Container.TabHolder.ContentContainer.Textbox.Text.UIPadding
			Textbox["56"] = Instance.new("UIPadding", Textbox["55"]);
			Textbox["56"]["PaddingLeft"] = UDim.new(0, 10);

			-- StarterGui.MadbukLibraryT.Main.Container.TabHolder.ContentContainer.Textbox.Input
			Textbox["57"] = Instance.new("TextBox", Textbox["52"]);
			Textbox["57"]["BorderSizePixel"] = 0;
			Textbox["57"]["TextSize"] = 14;
			Textbox["57"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			Textbox["57"]["TextWrapped"] = false;
			Textbox["57"]["BackgroundColor3"] = Color3.fromRGB(55, 55, 55);
			Textbox["57"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
			Textbox["57"]["ClearTextOnFocus"] = false;
			Textbox["57"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Textbox["57"]["AnchorPoint"] = Vector2.new(1, 0);
			Textbox["57"]["PlaceholderText"] = "";
			Textbox["57"]["Size"] = UDim2.new(0, 25, 0, 35);
			Textbox["57"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Textbox["57"]["Text"] = "";
			Textbox["57"]["Position"] = UDim2.new(1, -10, 0, 7);
			Textbox["57"]["Name"] = [[Input]];

			-- StarterGui.MadbukLibraryT.Main.Container.TabHolder.ContentContainer.Textbox.Input.UIStroke
			Textbox["58"] = Instance.new("UIStroke", Textbox["57"]);
			Textbox["58"]["Color"] = Color3.fromRGB(255, 255, 255);
			Textbox["58"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

			-- StarterGui.MadbukLibraryT.Main.Container.TabHolder.ContentContainer.Textbox.Input.UICorner
			Textbox["59"] = Instance.new("UICorner", Textbox["57"]);


			-- StarterGui.MadbukLibraryT.Main.Container.TabHolder.ContentContainer.Textbox.Input.UIPadding
			Textbox["5a"] = Instance.new("UIPadding", Textbox["57"]);
			Textbox["5a"]["PaddingLeft"] = UDim.new(0, 6);
			
			Textbox["57"].FocusLost:Connect(function()
				local txt = Textbox["57"].text
				options.callback(txt)
			end)
			
			Textbox["57"]:GetPropertyChangedSignal("Text"):Connect(function()
				if Textbox["57"].CursorPosition == -1 then return end
				local letters = tonumber(Textbox["57"].CursorPosition)
				 
				
				if letters >= 10 then
					Textbox["57"].Size = UDim2.new(0,25,0,35) + UDim2.new(0,letters*5.4,0,0) - UDim2.new(0,5,0,0) 
				else
					Textbox["57"].Size = UDim2.new(0,25,0,35) + UDim2.new(0,letters*5.1,0,0) - UDim2.new(0,5,0,0)
				end
			end)

			return Textbox
		end
		return Tab
	end

	return Window
end

