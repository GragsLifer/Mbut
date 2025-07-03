tton")
    obj167694.Name = "cg"
    obj167694.Text = "Cowgirl"
    obj167694.TextSize = 14
    obj167694.Size = UDim2.new(0.03244419023394585, 0, 0.05864846333861351, 0)
    obj167694.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj167694.Parent = obj665777
        local obj246417 = Instance.new("UIAspectRatioConstraint")
        obj246417.Name = "UIAspectRatioConstraint"
        obj246417.Parent = obj167694
    local obj862624 = Instance.new("TextButton")
    obj862624.Name = "cy"
    obj862624.Text = "Carry"
    obj862624.TextSize = 14
    obj862624.Size = UDim2.new(0.033741552382707596, 0, 0.05864845961332321, 0)
    obj862624.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj862624.Parent = obj665777
        local obj224557 = Instance.new("UIAspectRatioConstraint")
        obj224557.Name = "UIAspectRatioConstraint"
        obj224557.Parent = obj862624
    local obj482872 = Instance.new("TextButton")
    obj482872.Name = "dg"
    obj482872.Text = "Doggy"
    obj482872.TextSize = 14
    obj482872.Size = UDim2.new(0.03318219259381294, 0, 0.05864844471216202, 0)
    obj482872.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj482872.Parent = obj665777
        local obj772982 = Instance.new("UIAspectRatioConstraint")
        obj772982.Name = "UIAspectRatioConstraint"
        obj772982.Parent = obj482872
    local obj947954 = Instance.new("TextButton")
    obj947954.Name = "bj"
    obj947954.Text = "Blow"
    obj947954.TextSize = 14
    obj947954.Size = UDim2.new(0.03498165309429169, 0, 0.058648426085710526, 0)
    obj947954.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj947954.Parent = obj665777
        local obj781315 = Instance.new("UIAspectRatioConstraint")
        obj781315.Name = "UIAspectRatioConstraint"
        obj781315.Parent = obj947954
    local obj523588 = Instance.new("TextButton")
    obj523588.Name = "bbj"
    obj523588.Text = "Boob"
    obj523588.TextSize = 14
    obj523588.Size = UDim2.new(0.03174786642193794, 0, 0.05864843726158142, 0)
    obj523588.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj523588.Parent = obj665777
        local obj425469 = Instance.new("UIAspectRatioConstraint")
        obj425469.Name = "UIAspectRatioConstraint"
        obj425469.Parent = obj523588
    local obj887028 = Instance.new("TextButton")
    obj887028.Name = "tog"
    obj887028.Text = "Hide GUI"
    obj887028.TextSize = 14
    obj887028.Size = UDim2.new(0.02774455025792122, 0, 0.052055004984140396, 0)
    obj887028.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj887028.Parent = obj665777
        local obj289269 = Instance.new("LocalScript")
        obj289269.Name = "LocalScript"
        obj289269.Source = "script.Parent.MouseButton1Down:Connect(function()
	for i,v in next, script.Parent.Parent:GetChildren() do 
		if v ~= script.Parent then
			v.Visible = not v.Visible
		end
	end
end)"
        obj289269.Parent = obj887028
        local obj983611 = Instance.new("UIAspectRatioConstraint")
        obj983611.Name = "UIAspectRatioConstraint"
        obj983611.Parent = obj887028
    local obj320228 = Instance.new("TextButton")
    obj320228.Name = "anl"
    obj320228.Text = "Anal"
    obj320228.TextSize = 14
    obj320228.Size = UDim2.new(0.03303753584623337, 0, 0.059655312448740005, 0)
    obj320228.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj320228.Parent = obj665777
        local obj184516 = Instance.new("UIAspectRatioConstraint")
        obj184516.Name = "UIAspectRatioConstraint"
        obj184516.Parent = obj320228
    local obj653610 = Instance.new("TextButton")
    obj653610.Name = "dga"
    obj653610.Text = "Doggy Anal"
    obj653610.TextSize = 14
    obj653610.Size = UDim2.new(0.03599042817950249, 0, 0.058695536106824875, 0)
    obj653610.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj653610.Parent = obj665777
        local obj834710 = Instance.new("UIAspectRatioConstraint")
        obj834710.Name = "UIAspectRatioConstraint"
        obj834710.Parent = obj653610
    local obj810353 = Instance.new("TextButton")
    obj810353.Name = "del"
    obj810353.Text = "Del Shirt"
    obj810353.TextSize = 14
    obj810353.Size = UDim2.new(0.03498165309429169, 0, 0.058648426085710526, 0)
    obj810353.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj810353.Parent = obj665777
        local obj388119 = Instance.new("UIAspectRatioConstraint")
        obj388119.Name = "UIAspectRatioConstraint"
        obj388119.Parent = obj810353
        local obj610491 = Instance.new("LocalScript")
        obj610491.Name = "LocalScript"
        obj610491.Source = "script.Parent.MouseButton1Down:Connect(function()
	for _, Object in pairs(workspace:GetDescendants()) do -- GetDescendants returns a table with all the objects descendants
		if Object:IsA(\"Shirt\") then 
			Object:Destroy() -- Change this to whatever you want to delete 
		end
	end
end)
"
        obj610491.Parent = obj810353
    local obj723011 = Instance.new("TextButton")
    obj723011.Name = "del2"
    obj723011.Text = "Del pants"
    obj723011.TextSize = 14
    obj723011.Size = UDim2.new(0.03498165309429169, 0, 0.058648426085710526, 0)
    obj723011.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj723011.Parent = obj665777
        local obj547460 = Instance.new("UIAspectRatioConstraint")
        obj547460.Name = "UIAspectRatioConstraint"
        obj547460.Parent = obj723011
        local obj294535 = Instance.new("LocalScript")
        obj294535.Name = "LocalScript"
        obj294535.Source = "script.Parent.MouseButton1Down:Connect(function()
	for _, Object in pairs(workspace:GetDescendants()) do -- GetDescendants returns a table with all the objects descendants
		if Object:IsA(\"Pants\") then 
			Object:Destroy() -- Change this to whatever you want to delete 
		end
	end
end)"
        obj294535.Parent = obj723011
    local obj465387 = Instance.new("TextButton")
    obj465387.Name = "cl"
    obj465387.Text = "Clean up"
    obj465387.TextSize = 14
    obj465387.Size = UDim2.new(0.03498165309429169, 0, 0.058648426085710526, 0)
    obj465387.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj465387.Parent = obj665777
        local obj712535 = Instance.new("UIAspectRatioConstraint")
        obj712535.Name = "UIAspectRatioConstraint"
        obj712535.Parent = obj465387
        local obj901565 = Instance.new("LocalScript")
        obj901565.Name = "LocalScript"
        obj901565.Source = "script.Parent.MouseButton1Down:Connect(function()
	for _, Object in pairs(workspace:GetDescendants()) do -- GetDescendants returns a table with all the objects descendants
		if Object.Name== \"d\" and Object:IsA(\"BasePart\") then 
			Object.Transparency = 1 -- Change this to whatever you want to delete 
		end
	end
end)
"
        obj901565.Parent = obj465387
local obj675893 = Instance.new("Script")
obj675893.Name = "Script"
obj675893.Source = "-- Plugin: Full Game Exporter (Split Version)
-- Auto-splits output into multiple scripts to avoid Source size limit

local toolbar = plugin:CreateToolbar(\"Exporter\")
local button = toolbar:CreateButton(\"Export Game (Split)\", \"Export full game and split if needed\", \"\")

local function quote(str)
	return string.format(\"%q\", str)
end

local function escapeSource(src)
	return src and (src:gsub(\"\\\\\", \"\\\\\\\\\"):gsub(\"\\\"\", \"\\\\\\\"\"):gsub(\"\\n\", \"\\\\n\"):gsub(\"\\r\", \"\\\\r\")) or \"\"
end

local function vector3Str(v)
	return string.format(\"Vector3.new(%s, %s, %s)\", v.X, v.Y, v.Z)
end

local function color3Str(c)
	return string.format(\"Color3.new(%s, %s, %s)\", c.R, c.G, c.B)
end

local function udim2Str(u)
	return string.format(\"UDim2.new(%s, %s, %s, %s)\", u.X.Scale, u.X.Offset, u.Y.Scale, u.Y.Offset)
end

local function serializeInstance(inst, parentVar, depth)
	depth = depth or 0
	local indent = string.rep(\"    \", depth)
	local lines = {}
	local varName = \"obj\" .. tostring(math.random(100000,999999))

	table.insert(lines, indent .. string.format(\"local %s = Instance.new(%s)\", varName, quote(inst.ClassName)))
	table.insert(lines, indent .. string.format(\"%s.Name = %s\", varName, quote(inst.Name)))

	if inst:IsA(\"BasePart\") then
		table.insert(lines, indent .. string.format(\"%s.Size = %s\", varName, vector3Str(inst.Size)))
		table.insert(lines, indent .. string.format(\"%s.Position = %s\", varName, vector3Str(inst.Position)))
		table.insert(lines, indent .. string.format(\"%s.Anchored = %s\", varName, tostring(inst.Anchored)))
		table.insert(lines, indent .. string.format(\"%s.BrickColor = BrickColor.new(%s)\", varName, quote(inst.BrickColor.Name)))
	elseif inst:IsA(\"TextLabel\") or inst:IsA(\"TextButton\") or 