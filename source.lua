if not game.CoreGui:FindFirstChild("Atom") then
	local Atom = Instance.new("ScreenGui")
	Atom.Name = "Atom"
	Atom.Parent = game.CoreGui
	Atom.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Atom.ResetOnSpawn = false
end

Atom = game.CoreGui:WaitForChild("Atom")
local inputBoxValue = nil

function InputButtonText(text,placeholder,buttontext,call)
	local NotificationBar = Instance.new("Frame")
	local Close = Instance.new("ImageButton")
	local NotificationWindow = Instance.new("Frame")
	local ValueInput = Instance.new("TextBox")
	local NotificationText = Instance.new("TextLabel")
	local Button = Instance.new("TextButton")
	local openedPos = UDim2.new(1, 0,1, -167)
	local closedPos = UDim2.new(1,0,1.03,0)
	local Closing = Instance.new("BoolValue",NotificationBar)

	NotificationBar.Name = "NotificationBar"
	NotificationBar.Parent = Atom
	NotificationBar.AnchorPoint = Vector2.new(1, 1)
	NotificationBar.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
	NotificationBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NotificationBar.BorderSizePixel = 0
	NotificationBar.Position = UDim2.new(1, 0, 0.79072684, 0)
	NotificationBar.Size = UDim2.new(0, 293, 0, 16)

	Close.Name = "Close"
	Close.Parent = NotificationBar
	Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Close.BackgroundTransparency = 1.000
	Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Close.BorderSizePixel = 0
	Close.Size = UDim2.new(0, 15, 0, 15)
	Close.Image = "rbxassetid://10002373478"

	NotificationWindow.Name = "NotificationWindow"
	NotificationWindow.Parent = NotificationBar
	NotificationWindow.AnchorPoint = Vector2.new(1, 1)
	NotificationWindow.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	NotificationWindow.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NotificationWindow.BorderSizePixel = 0
	NotificationWindow.Position = UDim2.new(1, 0, 11.4375, 0)
	NotificationWindow.Size = UDim2.new(0, 293, 0, 167)

	ValueInput.Name = "ValueInput"
	ValueInput.Parent = NotificationWindow
	ValueInput.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	ValueInput.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ValueInput.BorderSizePixel = 0
	ValueInput.Position = UDim2.new(0.0963855535, 0, 0.504397452, 0)
	ValueInput.Size = UDim2.new(0.803212881, 0, 0.2109375, 0)
	ValueInput.Font = Enum.Font.SourceSans
	ValueInput.PlaceholderText = placeholder
	ValueInput.Text = ""
	ValueInput.TextColor3 = Color3.fromRGB(255, 255, 255)
	ValueInput.TextSize = 14.000

	NotificationText.Name = "NotificationText"
	NotificationText.Parent = NotificationWindow
	NotificationText.AnchorPoint = Vector2.new(0.5, 0.5)
	NotificationText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NotificationText.BackgroundTransparency = 1.000
	NotificationText.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NotificationText.BorderSizePixel = 0
	NotificationText.Position = UDim2.new(0.49799189, 0, 0.250245601, 0)
	NotificationText.Size = UDim2.new(0.87550205, 0, 0.508303702, 0)
	NotificationText.Font = Enum.Font.Gotham
	NotificationText.Text = text
	NotificationText.TextColor3 = Color3.fromRGB(255, 255, 255)
	NotificationText.TextSize = 34.000
	NotificationText.TextWrapped = true

	Button.Name = "Button"
	Button.Parent = NotificationWindow
	Button.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button.BorderSizePixel = 0
	Button.Position = UDim2.new(0.0963853449, 0, 0.71875, 0)
	Button.Size = UDim2.new(0.803212941, 0, 0.2109375, 0)
	Button.Font = Enum.Font.SourceSans
	Button.TextColor3 = Color3.fromRGB(255, 255, 255)
	Button.TextSize = 14.000
	Button.Text = buttontext

	Closing.Value = true
	NotificationBar.Position = closedPos
	local ts = game:GetService("TweenService")
	local info = TweenInfo.new(1,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut)
	ts:Create(NotificationBar,info,{Position = openedPos}):Play()
	wait(1)
	Closing.Value = false

	Close.MouseButton1Click:Connect(function()
		inputBoxValue = ValueInput.Text
		if Closing.Value == false then
			Closing.Value = true
			local ts = game:GetService("TweenService")
			local info = TweenInfo.new(1,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut)
			ts:Create(NotificationBar,info,{Position = UDim2.new(1,0,1.03,0)}):Play()
		end
	end)
	
	Button.MouseButton1Click:Connect(function()
		inputBoxValue = ValueInput.Text
		pcall(call)
		Closing.Value = true
		local ts = game:GetService("TweenService")
		local info = TweenInfo.new(1,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut)
		ts:Create(NotificationBar,info,{Position = UDim2.new(1,0,1.03,0)}):Play()
	end)
end

function ButtonText(text,buttontext,call)
	local NotificationBar = Instance.new("Frame")
	local Close = Instance.new("ImageButton")
	local NotificationWindow = Instance.new("Frame")
	local NotificationText = Instance.new("TextLabel")
	local Button = Instance.new("TextButton")
	local openedPos = UDim2.new(1, 0,1, -167)
	local closedPos = UDim2.new(1,0,1.03,0)
	local Closing = Instance.new("BoolValue",NotificationBar)

	NotificationBar.Name = "NotificationBar"
	NotificationBar.Parent = Atom
	NotificationBar.AnchorPoint = Vector2.new(1, 1)
	NotificationBar.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
	NotificationBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NotificationBar.BorderSizePixel = 0
	NotificationBar.Position = UDim2.new(1, 0, 0.79072684, 0)
	NotificationBar.Size = UDim2.new(0, 293, 0, 16)

	Close.Name = "Close"
	Close.Parent = NotificationBar
	Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Close.BackgroundTransparency = 1.000
	Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Close.BorderSizePixel = 0
	Close.Size = UDim2.new(0, 15, 0, 15)
	Close.Image = "rbxassetid://10002373478"

	NotificationWindow.Name = "NotificationWindow"
	NotificationWindow.Parent = NotificationBar
	NotificationWindow.AnchorPoint = Vector2.new(1, 1)
	NotificationWindow.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	NotificationWindow.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NotificationWindow.BorderSizePixel = 0
	NotificationWindow.Position = UDim2.new(1, 0, 11.4375, 0)
	NotificationWindow.Size = UDim2.new(0, 293, 0, 167)

	NotificationText.Name = "NotificationText"
	NotificationText.Parent = NotificationWindow
	NotificationText.AnchorPoint = Vector2.new(0.5, 0.5)
	NotificationText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NotificationText.BackgroundTransparency = 1.000
	NotificationText.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NotificationText.BorderSizePixel = 0
	NotificationText.Position = UDim2.new(0.49799189, 0, 0.357421845, 0)
	NotificationText.Size = UDim2.new(0.87550205, 0, 0.72265619, 0)
	NotificationText.Font = Enum.Font.Gotham
	NotificationText.Text = text
	NotificationText.TextColor3 = Color3.fromRGB(255, 255, 255)
	NotificationText.TextSize = 34.000
	NotificationText.TextWrapped = true

	Button.Name = "Button"
	Button.Parent = NotificationWindow
	Button.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button.BorderSizePixel = 0
	Button.Position = UDim2.new(0.0963853449, 0, 0.71875, 0)
	Button.Size = UDim2.new(0.803212941, 0, 0.2109375, 0)
	Button.Font = Enum.Font.SourceSans
	Button.TextColor3 = Color3.fromRGB(255, 255, 255)
	Button.TextSize = 14.000
	Button.Text = buttontext

	Closing.Value = true
	NotificationBar.Position = closedPos
	local ts = game:GetService("TweenService")
	local info = TweenInfo.new(1,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut)
	ts:Create(NotificationBar,info,{Position = openedPos}):Play()
	wait(1)
	Closing.Value = false

	Close.MouseButton1Click:Connect(function()
		if Closing.Value == false then
			Closing.Value = true
			local ts = game:GetService("TweenService")
			local info = TweenInfo.new(1,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut)
			ts:Create(NotificationBar,info,{Position = UDim2.new(1,0,1.03,0)}):Play()
		end
	end)
	
	Button.MouseButton1Click:Connect(function()
		pcall(call)
		Closing.Value = true
		local ts = game:GetService("TweenService")
		local info = TweenInfo.new(1,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut)
		ts:Create(NotificationBar,info,{Position = UDim2.new(1,0,1.03,0)}):Play()
	end)
end

function DoubleButtonText(text,button1text,button2text,call,call2)
	local NotificationBar = Instance.new("Frame")
	local Close = Instance.new("ImageButton")
	local NotificationWindow = Instance.new("Frame")
	local NotificationText = Instance.new("TextLabel")
	local Button1 = Instance.new("TextButton")
	local Button2 = Instance.new("TextButton")
	local openedPos = UDim2.new(1, 0,1, -167)
	local closedPos = UDim2.new(1,0,1.03,0)
	local Closing = Instance.new("BoolValue",NotificationBar)

	NotificationBar.Name = "NotificationBar"
	NotificationBar.Parent = Atom
	NotificationBar.AnchorPoint = Vector2.new(1, 1)
	NotificationBar.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
	NotificationBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NotificationBar.BorderSizePixel = 0
	NotificationBar.Position = UDim2.new(1, 0, 0.79072684, 0)
	NotificationBar.Size = UDim2.new(0, 293, 0, 16)

	Close.Name = "Close"
	Close.Parent = NotificationBar
	Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Close.BackgroundTransparency = 1.000
	Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Close.BorderSizePixel = 0
	Close.Size = UDim2.new(0, 15, 0, 15)
	Close.Image = "rbxassetid://10002373478"

	NotificationWindow.Name = "NotificationWindow"
	NotificationWindow.Parent = NotificationBar
	NotificationWindow.AnchorPoint = Vector2.new(1, 1)
	NotificationWindow.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	NotificationWindow.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NotificationWindow.BorderSizePixel = 0
	NotificationWindow.Position = UDim2.new(1, 0, 11.4375, 0)
	NotificationWindow.Size = UDim2.new(0, 293, 0, 167)

	NotificationText.Name = "NotificationText"
	NotificationText.Parent = NotificationWindow
	NotificationText.AnchorPoint = Vector2.new(0.5, 0.5)
	NotificationText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NotificationText.BackgroundTransparency = 1.000
	NotificationText.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NotificationText.BorderSizePixel = 0
	NotificationText.Position = UDim2.new(0.49799189, 0, 0.357421845, 0)
	NotificationText.Size = UDim2.new(0.87550205, 0, 0.72265619, 0)
	NotificationText.Font = Enum.Font.Gotham
	NotificationText.Text = text
	NotificationText.TextColor3 = Color3.fromRGB(255, 255, 255)
	NotificationText.TextSize = 34.000
	NotificationText.TextWrapped = true

	Button1.Name = "Button1"
	Button1.Parent = NotificationWindow
	Button1.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	Button1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button1.BorderSizePixel = 0
	Button1.Position = UDim2.new(0.0588424727, 0, 0.71875, 0)
	Button1.Size = UDim2.new(0.415724665, 0, 0.2109375, 0)
	Button1.Font = Enum.Font.SourceSans
	Button1.TextColor3 = Color3.fromRGB(255, 255, 255)
	Button1.TextSize = 14.000
	Button1.Text = button1text

	Button2.Name = "Button2"
	Button2.Parent = NotificationWindow
	Button2.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	Button2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button2.BorderSizePixel = 0
	Button2.Position = UDim2.new(0.518003106, 0, 0.71875, 0)
	Button2.Size = UDim2.new(0.415724605, 0, 0.2109375, 0)
	Button2.Font = Enum.Font.SourceSans
	Button2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Button2.TextSize = 14.000
	Button2.Text = button2text

	Closing.Value = true
	NotificationBar.Position = closedPos
	local ts = game:GetService("TweenService")
	local info = TweenInfo.new(1,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut)
	ts:Create(NotificationBar,info,{Position = openedPos}):Play()
	wait(1)
	Closing.Value = false
	
	Close.MouseButton1Click:Connect(function()
		if Closing.Value == false then
			Closing.Value = true
			local ts = game:GetService("TweenService")
			local info = TweenInfo.new(1,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut)
			ts:Create(NotificationBar,info,{Position = UDim2.new(1,0,1.03,0)}):Play()
		end
	end)
	
	Button1.MouseButton1Click:Connect(function()
		pcall(call)
		Closing.Value = true
		local ts = game:GetService("TweenService")
		local info = TweenInfo.new(1,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut)
		ts:Create(NotificationBar,info,{Position = UDim2.new(1,0,1.03,0)}):Play()
	end)
	
	Button2.MouseButton1Click:Connect(function()
		pcall(call2)
		Closing.Value = true
		local ts = game:GetService("TweenService")
		local info = TweenInfo.new(1,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut)
		ts:Create(NotificationBar,info,{Position = UDim2.new(1,0,1.03,0)}):Play()
	end)
end
