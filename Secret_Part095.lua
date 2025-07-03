140586853, 0)
        obj812018.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
        obj812018.Parent = obj175928
            local obj388708 = Instance.new("Frame")
            obj388708.Name = "bar"
            obj388708.Size = UDim2.new(1, 0, 0, 0)
            obj388708.BackgroundColor3 = Color3.new(1, 1, 1)
            obj388708.Parent = obj812018
        local obj590596 = Instance.new("UIAspectRatioConstraint")
        obj590596.Name = "UIAspectRatioConstraint"
        obj590596.Parent = obj175928
        local obj730480 = Instance.new("TextButton")
        obj730480.Name = "TextButton"
        obj730480.Text = "RELEASE"
        obj730480.TextSize = 14
        obj730480.Size = UDim2.new(0.49142682552337646, 0, 0.10054600983858109, 0)
        obj730480.BackgroundColor3 = Color3.new(0, 0, 0)
        obj730480.Parent = obj175928
            local obj743032 = Instance.new("LocalScript")
            obj743032.Name = "LocalScript"
            obj743032.Source = "script.Parent.MouseButton1Down:Connect(function()
	game.Players.LocalPlayer.PlayerGui.rep.input:FireServer(\"rel\")
end)"
            obj743032.Parent = obj730480
    local obj336735 = Instance.new("Frame")
    obj336735.Name = "spd"
    obj336735.Size = UDim2.new(0.03787392005324364, 0, 0.3812381327152252, 0)
    obj336735.BackgroundColor3 = Color3.new(0, 0, 0)
    obj336735.Parent = obj665777
        local obj422016 = Instance.new("TextLabel")
        obj422016.Name = "Title"
        obj422016.Text = "Speed"
        obj422016.TextSize = 14
        obj422016.Size = UDim2.new(1, 0, 0.10000000149011612, 0)
        obj422016.BackgroundColor3 = Color3.new(1, 1, 1)
        obj422016.Parent = obj336735
        local obj917541 = Instance.new("TextLabel")
        obj917541.Name = "value"
        obj917541.Text = "1"
        obj917541.TextSize = 14
        obj917541.Size = UDim2.new(1, 0, 0.10000000149011612, 0)
        obj917541.BackgroundColor3 = Color3.new(1, 1, 1)
        obj917541.Parent = obj336735
        local obj777854 = Instance.new("Frame")
        obj777854.Name = "Slider"
        obj777854.Size = UDim2.new(0.009999999776482582, 0, 0.699999988079071, 0)
        obj777854.BackgroundColor3 = Color3.new(1, 1, 1)
        obj777854.Parent = obj336735
            local obj307617 = Instance.new("Frame")
            obj307617.Name = "Knob"
            obj307617.Size = UDim2.new(40.645164489746094, 0, 0.13368558883666992, 0)
            obj307617.BackgroundColor3 = Color3.new(1, 1, 1)
            obj307617.Parent = obj777854
        local obj141929 = Instance.new("LocalScript")
        obj141929.Name = "slider"
        obj141929.Source = "local UIS = game:GetService(\"UserInputService\")

wait(1)

local P = script.Parent
local slider = P.Slider
local knob = slider.Knob
local FOVLabel = P.value
local knobGrabbed = false

local camera = workspace.CurrentCamera

function GrabFOVKnob()
	knobGrabbed = true
end

function round(val, decimal)
	if (decimal) then
		return math.floor( (val * 10^decimal) + 0.5) / (10^decimal)
	else
		return math.floor(val+0.5)
	end
end

local val = 1

function MoveFOVKnob(screenPosition)
	local yDiff = screenPosition.Y - slider.AbsolutePosition.y
	local knobPositionRatio = math.min(math.max(yDiff / slider.AbsoluteSize.y, 0), 1)
	
	local newFOV = 3.5 * (1 - knobPositionRatio)
	val = newFOV
	script.Parent.input:FireServer(val)	

	knob.Position = UDim2.new(-knob.Size.X.Scale / 2, 0, knobPositionRatio - knob.Size.Y.Scale / 2, 0)
	FOVLabel.Text = round(newFOV, 2)
end

function ReleaseFOVKnob()
	knobGrabbed = false
end

knob.InputBegan:connect(function(input)
	if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
		GrabFOVKnob()
	end
end)

UIS.InputChanged:connect(function(input, gameProcessedEvent)
	if (not gameProcessedEvent and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and knobGrabbed) then
		MoveFOVKnob(input.Position)
	end
end)

UIS.InputEnded:connect(function(input, gameProcessedEvent)
	if (not gameProcessedEvent and input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
		ReleaseFOVKnob()
	end
end)"
        obj141929.Parent = obj336735
        local obj849757 = Instance.new("RemoteEvent")
        obj849757.Name = "input"
        obj849757.Parent = obj336735
    local obj230210 = Instance.new("TextButton")
    obj230210.Name = "TextButton"
    obj230210.Text = "Controls"
    obj230210.TextSize = 14
    obj230210.Size = UDim2.new(0.11255490034818649, 0, 0.040704891085624695, 0)
    obj230210.BackgroundColor3 = Color3.new(0, 0, 0)
    obj230210.Parent = obj665777
        local obj655257 = Instance.new("LocalScript")
        obj655257.Name = "LocalScript"
        obj655257.Source = "script.Parent.MouseButton1Down:Connect(function()
	for i,v in next, script.Parent:GetChildren() do 
		if v:IsA(\"TextButton\")then
			v.Visible = not v.Visible
		end
	end
end)"
        obj655257.Parent = obj230210
        local obj168140 = Instance.new("TextButton")
        obj168140.Name = "TextButton"
        obj168140.Text = "C - Close up camera"
        obj168140.TextSize = 14
        obj168140.Size = UDim2.new(1, 0, 0.5827395915985107, 0)
        obj168140.BackgroundColor3 = Color3.new(1, 1, 1)
        obj168140.Parent = obj230210
        local obj313405 = Instance.new("TextButton")
        obj313405.Name = "TextButton"
        obj313405.Text = "One - Cowgirl"
        obj313405.TextSize = 14
        obj313405.Size = UDim2.new(1, 0, 0.5827395915985107, 0)
        obj313405.BackgroundColor3 = Color3.new(1, 1, 1)
        obj313405.Parent = obj230210
        local obj162676 = Instance.new("TextButton")
        obj162676.Name = "TextButton"
        obj162676.Text = "Two - Carry"
        obj162676.TextSize = 14
        obj162676.Size = UDim2.new(1, 0, 0.5827395915985107, 0)
        obj162676.BackgroundColor3 = Color3.new(1, 1, 1)
        obj162676.Parent = obj230210
        local obj539263 = Instance.new("TextButton")
        obj539263.Name = "TextButton"
        obj539263.Text = "Three - Doggy"
        obj539263.TextSize = 14
        obj539263.Size = UDim2.new(1, 0, 0.5827395915985107, 0)
        obj539263.BackgroundColor3 = Color3.new(1, 1, 1)
        obj539263.Parent = obj230210
        local obj603738 = Instance.new("TextButton")
        obj603738.Name = "TextButton"
        obj603738.Text = "Four - Blow"
        obj603738.TextSize = 14
        obj603738.Size = UDim2.new(1, 0, 0.5827395915985107, 0)
        obj603738.BackgroundColor3 = Color3.new(1, 1, 1)
        obj603738.Parent = obj230210
        local obj345877 = Instance.new("TextButton")
        obj345877.Name = "TextButton"
        obj345877.Text = "Five - Boob"
        obj345877.TextSize = 14
        obj345877.Size = UDim2.new(1, 0, 0.5827395915985107, 0)
        obj345877.BackgroundColor3 = Color3.new(1, 1, 1)
        obj345877.Parent = obj230210
        local obj390547 = Instance.new("TextButton")
        obj390547.Name = "TextButton"
        obj390547.Text = "H - Toggle interface visibility"
        obj390547.TextSize = 14
        obj390547.Size = UDim2.new(1, 0, 0.5827395915985107, 0)
        obj390547.BackgroundColor3 = Color3.new(1, 1, 1)
        obj390547.Parent = obj230210
    local obj150105 = Instance.new("TextBox")
    obj150105.Name = "user"
    obj150105.Text = "Username"
    obj150105.TextSize = 14
    obj150105.Size = UDim2.new(0.1125548928976059, 0, 0.029496531933546066, 0)
    obj150105.BackgroundColor3 = Color3.new(0, 0, 0)
    obj150105.Parent = obj665777
        local obj493444 = Instance.new("LocalScript")
        obj493444.Name = "LocalScript"
        obj493444.Source = "script.Parent.FocusLost:Connect(function()
	game.Players.LocalPlayer.PlayerGui.rep.input:FireServer(\"appearance\", script.Parent.Text)
end)"
        obj493444.Parent = obj150105
    local obj468564 = Instance.new("LocalScript")
    obj468564.Name = "LocalScript"
    obj468564.Source = "game:GetService(\"UserInputService\").InputBegan:Connect(function(i, gp)
	if i.KeyCode== Enum.KeyCode.H and not gp then
		for i,v in next, script.Parent:GetChildren() do 
			if (v:IsA(\"TextButton\") or v:IsA(\"Frame\") or v:IsA(\"TextBox\")) and v.Name ~= \"tog\" and v.Name ~= \"user\" then
				v.Visible = not v.Visible
			end
		end
	end
end)"
    obj468564.Parent = obj665777
    local obj377566 = Instance.new("TextButton")
    obj377566.Name = "r"
    obj377566.Text = "Female view"
    obj377566.TextSize = 14
    obj377566.Size = UDim2.new(0.1125548928976059, 0, 0.029496531933546066, 0)
    obj377566.BackgroundColor3 = Color3.new(0, 0, 0)
    obj377566.Parent = obj665777
        local obj522693 = Instance.new("LocalScript")
        obj522693.Name = "LocalScript"
        obj522693.Source = "script.Parent.MouseButton1Down:Connect(function()
	game.Players.LocalPlayer.PlayerGui.rep.input:FireServer(\"view\")
end)"
        obj522693.Parent = obj377566
    local obj167694 = Instance.new("TextBu