if not game.Players.LocalPlayer.PlayerGui:FindFirstChild("Atom") then
	game.Players.LocalPlayer.PlayerGui:WaitForChild("Atom"):Destroy()
end

local Gui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
local value = nil
Gui.ResetOnSpawn = false
Gui.IgnoreGuiInset = true
Gui.Name = "Atom"

function SendNotificationText(text)
	local NotificationBar = Instance.new("Frame")
	local NotificationWindow = Instance.new("Frame")
	local NotificationText = Instance.new("TextLabel")
	local Close = Instance.new("ImageButton")
	local Closing = Instance.new("BoolValue",NotificationBar)
	local openedPos = UDim2.new(1, 0, 0.839599013, 0)
	local closedPos = UDim2.new(1,0,1.03,0)
	
	Closing.Name = "Closing"
	Closing.Value = false

	NotificationBar.Name = "NotificationBar"
	NotificationBar.Parent = Gui
	NotificationBar.AnchorPoint = Vector2.new(1, 1)
	NotificationBar.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
	NotificationBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NotificationBar.BorderSizePixel = 0
	NotificationBar.Position = closedPos
	NotificationBar.Size = UDim2.new(0.199200004, 0, 0.0200501252, 0)

	NotificationWindow.Name = "NotificationWindow"
	NotificationWindow.Parent = NotificationBar
	NotificationWindow.AnchorPoint = Vector2.new(1, 1)
	NotificationWindow.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	NotificationWindow.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NotificationWindow.BorderSizePixel = 0
	NotificationWindow.Position = UDim2.new(1, 0, 9, 0)
	NotificationWindow.Size = UDim2.new(1, 0, 8, 0)

	NotificationText.Name = "NotificationText"
	NotificationText.Parent = NotificationWindow
	NotificationText.AnchorPoint = Vector2.new(0.5, 0.5)
	NotificationText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NotificationText.BackgroundTransparency = 1.000
	NotificationText.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NotificationText.BorderSizePixel = 0
	NotificationText.Position = UDim2.new(0.497991979, 0, 0.5, 0)
	NotificationText.Size = UDim2.new(0.87550199, 0, 0.6796875, 0)
	NotificationText.Font = Enum.Font.Gotham
	NotificationText.Text = text
	NotificationText.TextColor3 = Color3.fromRGB(255, 255, 255)
	NotificationText.TextSize = 34.000
	NotificationText.TextWrapped = true

	Close.Name = "Close"
	Close.Parent = NotificationBar
	Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Close.BackgroundTransparency = 1.000
	Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Close.BorderSizePixel = 0
	Close.Size = UDim2.new(0, 15, 0, 15)
	Close.Image = "rbxassetid://10002373478"
	
	local ts = game:GetService("TweenService")
	local info = TweenInfo.new(1,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut)
	ts:Create(NotificationBar,info,{Position = openedPos}):Play()
	
	Close.MouseButton1Click:Connect(function()
		if Closing.Value == false then
			Closing.Value = true
			local ts = game:GetService("TweenService")
			local info = TweenInfo.new(1,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut)
			ts:Create(NotificationBar,info,{Position = UDim2.new(1,0,1.03,0)}):Play()
		end
	end)
end

function SendNotificationButton(text,buttontext,call)
	local NotificationBar = Instance.new("Frame")
	local NotificationWindow = Instance.new("Frame")
	local NotificationText = Instance.new("TextLabel")
	local Close = Instance.new("ImageButton")
	local Closing = Instance.new("BoolValue",NotificationBar)
	local openedPos = UDim2.new(1, 0, 0.839599013, 0)
	local closedPos = UDim2.new(1,0,1.03,0)
	local Button = Instance.new("TextButton")

	Closing.Name = "Closing"
	Closing.Value = false

	NotificationBar.Name = "NotificationBar"
	NotificationBar.Parent = Gui
	NotificationBar.AnchorPoint = Vector2.new(1, 1)
	NotificationBar.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
	NotificationBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NotificationBar.BorderSizePixel = 0
	NotificationBar.Position = closedPos
	NotificationBar.Size = UDim2.new(0.199200004, 0, 0.0200501252, 0)

	Button.Name = "Button"
	Button.Parent = NotificationWindow
	Button.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button.BorderSizePixel = 0
	Button.Position = UDim2.new(0.0963855386, 0, 0.71875, 0)
	Button.Size = UDim2.new(0.803212881, 0, 0.2109375, 0)
	Button.Font = Enum.Font.SourceSans
	Button.Text = buttontext
	Button.TextColor3 = Color3.fromRGB(255, 255, 255)
	Button.TextSize = 14.000

	NotificationWindow.Name = "NotificationWindow"
	NotificationWindow.Parent = NotificationBar
	NotificationWindow.AnchorPoint = Vector2.new(1, 1)
	NotificationWindow.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	NotificationWindow.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NotificationWindow.BorderSizePixel = 0
	NotificationWindow.Position = UDim2.new(1, 0, 9, 0)
	NotificationWindow.Size = UDim2.new(1, 0, 8, 0)

	NotificationText.Name = "NotificationText"
	NotificationText.Parent = NotificationWindow
	NotificationText.AnchorPoint = Vector2.new(0.5, 0.5)
	NotificationText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NotificationText.BackgroundTransparency = 1.000
	NotificationText.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NotificationText.BorderSizePixel = 0
	NotificationText.Position = UDim2.new(0.497991979, 0, 0.5, 0)
	NotificationText.Size = UDim2.new(0.87550199, 0, 0.6796875, 0)
	NotificationText.Font = Enum.Font.Gotham
	NotificationText.Text = text
	NotificationText.TextColor3 = Color3.fromRGB(255, 255, 255)
	NotificationText.TextSize = 34.000
	NotificationText.TextWrapped = true

	Close.Name = "Close"
	Close.Parent = NotificationBar
	Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Close.BackgroundTransparency = 1.000
	Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Close.BorderSizePixel = 0
	Close.Size = UDim2.new(0, 15, 0, 15)
	Close.Image = "rbxassetid://10002373478"

	local ts = game:GetService("TweenService")
	local info = TweenInfo.new(1,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut)
	ts:Create(NotificationBar,info,{Position = openedPos}):Play()

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
		if Closing.Value == false then
			Closing.Value = true
			local ts = game:GetService("TweenService")
			local info = TweenInfo.new(1,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut)
			ts:Create(NotificationBar,info,{Position = UDim2.new(1,0,1.03,0)}):Play()
		end
	end)
end

function SendNotificationInput(text,buttontext,call)
	local NotificationBar = Instance.new("Frame")
	local NotificationWindow = Instance.new("Frame")
	local NotificationText = Instance.new("TextLabel")
	local Close = Instance.new("ImageButton")
	local Closing = Instance.new("BoolValue",NotificationBar)
	local openedPos = UDim2.new(1, 0, 0.839599013, 0)
	local closedPos = UDim2.new(1,0,1.03,0)
	local Button = Instance.new("TextButton")
	local ValueInput = Instance.new("TextBox")

	Closing.Name = "Closing"
	Closing.Value = false

	NotificationBar.Name = "NotificationBar"
	NotificationBar.Parent = Gui
	NotificationBar.AnchorPoint = Vector2.new(1, 1)
	NotificationBar.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
	NotificationBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NotificationBar.BorderSizePixel = 0
	NotificationBar.Position = closedPos
	NotificationBar.Size = UDim2.new(0.199200004, 0, 0.0200501252, 0)

	Button.Name = "Button"
	Button.Parent = NotificationWindow
	Button.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button.BorderSizePixel = 0
	Button.Position = UDim2.new(0.0963855386, 0, 0.71875, 0)
	Button.Size = UDim2.new(0.803212881, 0, 0.2109375, 0)
	Button.Font = Enum.Font.SourceSans
	Button.Text = buttontext
	Button.TextColor3 = Color3.fromRGB(255, 255, 255)
	Button.TextSize = 14.000
	
	ValueInput.Name = "ValueInput"
	ValueInput.Parent = NotificationWindow
	ValueInput.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	ValueInput.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ValueInput.BorderSizePixel = 0
	ValueInput.Position = UDim2.new(0.0963855386, 0, 0.390625, 0)
	ValueInput.Size = UDim2.new(0.803212881, 0, 0.2109375, 0)
	ValueInput.Font = Enum.Font.SourceSans
	ValueInput.PlaceholderText = "Inputbox..."
	ValueInput.Text = ""
	ValueInput.TextColor3 = Color3.fromRGB(255, 255, 255)
	ValueInput.TextSize = 14.000

	NotificationWindow.Name = "NotificationWindow"
	NotificationWindow.Parent = NotificationBar
	NotificationWindow.AnchorPoint = Vector2.new(1, 1)
	NotificationWindow.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	NotificationWindow.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NotificationWindow.BorderSizePixel = 0
	NotificationWindow.Position = UDim2.new(1, 0, 9, 0)
	NotificationWindow.Size = UDim2.new(1, 0, 8, 0)

	NotificationText.Name = "NotificationText"
	NotificationText.Parent = NotificationWindow
	NotificationText.AnchorPoint = Vector2.new(0.5, 0.5)
	NotificationText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NotificationText.BackgroundTransparency = 1.000
	NotificationText.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NotificationText.BorderSizePixel = 0
	NotificationText.Position = UDim2.new(0.497991979, 0, 0.125, 0)
	NotificationText.Size = UDim2.new(0.87550199, 0, 0.2578125, 0)
	NotificationText.Font = Enum.Font.Gotham
	NotificationText.Text = text
	NotificationText.TextColor3 = Color3.fromRGB(255, 255, 255)
	NotificationText.TextSize = 34.000
	NotificationText.TextWrapped = true

	Close.Name = "Close"
	Close.Parent = NotificationBar
	Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Close.BackgroundTransparency = 1.000
	Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Close.BorderSizePixel = 0
	Close.Size = UDim2.new(0, 15, 0, 15)
	Close.Image = "rbxassetid://10002373478"

	local ts = game:GetService("TweenService")
	local info = TweenInfo.new(1,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut)
	ts:Create(NotificationBar,info,{Position = openedPos}):Play()

	Close.MouseButton1Click:Connect(function()
		if Closing.Value == false then
			Closing.Value = true
			local ts = game:GetService("TweenService")
			local info = TweenInfo.new(1,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut)
			ts:Create(NotificationBar,info,{Position = UDim2.new(1,0,1.03,0)}):Play()
		end
	end)

	Button.MouseButton1Click:Connect(function()
		value = ValueInput.Text
		pcall(call)
		if Closing.Value == false then
			Closing.Value = true
			local ts = game:GetService("TweenService")
			local info = TweenInfo.new(1,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut)
			ts:Create(NotificationBar,info,{Position = UDim2.new(1,0,1.03,0)}):Play()
		end
	end)
end
