inst:IsA(\"TextBox\") then
		table.insert(lines, indent .. string.format(\"%s.Text = %s\", varName, quote(inst.Text)))
		table.insert(lines, indent .. string.format(\"%s.TextSize = %s\", varName, tostring(inst.TextSize)))
	end

	if inst:IsA(\"GuiObject\") then
		table.insert(lines, indent .. string.format(\"%s.Size = %s\", varName, udim2Str(inst.Size)))
		if inst.BackgroundColor3 then
			table.insert(lines, indent .. string.format(\"%s.BackgroundColor3 = %s\", varName, color3Str(inst.BackgroundColor3)))
		end
	end

	if inst:IsA(\"Script\") or inst:IsA(\"LocalScript\") or inst:IsA(\"ModuleScript\") then
		local ok, src = pcall(function() return inst.Source end)
		if ok and src and #src > 0 then
			table.insert(lines, indent .. string.format(\"%s.Source = %q\", varName, src))
		end
	end

	table.insert(lines, indent .. string.format(\"%s.Parent = %s\", varName, parentVar))

	for _, child in ipairs(inst:GetChildren()) do
		local childLines = serializeInstance(child, varName, depth + 1)
		for _, line in ipairs(childLines) do
			table.insert(lines, line)
		end
	end
	return lines
end

button.Click:Connect(function()
	local services = {
		workspace,
		game:GetService(\"ReplicatedStorage\"),
		game:GetService(\"ServerStorage\"),
		game:GetService(\"ServerScriptService\"),
		game:GetService(\"StarterGui\"),
		game:GetService(\"StarterPack\"),
		game:GetService(\"StarterPlayer\"),
		game:GetService(\"Lighting\"),
	}

	local allLines = {\"-- AUTO EXPORT SCRIPT --\"}
	for _, service in ipairs(services) do
		for _, obj in ipairs(service:GetChildren()) do
			local lines = serializeInstance(obj, \"game.\" .. service.Name)
			for _, l in ipairs(lines) do
				table.insert(allLines, l)
			end
		end
	end

	local full = table.concat(allLines, \"\\n\")
	local maxLen = 190000
	local count = 1
	for i = 1, #full, maxLen do
		local part = full:sub(i, i + maxLen - 1)
		local scriptPart = Instance.new(\"Script\")
		scriptPart.Name = \"ExportedPart_\" .. tostring(count)
		scriptPart.Source = part
		scriptPart.Parent = workspace
		count += 1
	end
	print(\"? Export completed in \" .. tostring(count - 1) .. \" parts.\")
end)"
obj675893.Parent = game.ServerStorage
local obj641192 = Instance.new("Script")
obj641192.Name = "System"
obj641192.Source = "task.wait(.5)

local char_added = function(c)
	--task.wait(2)
	--require(script.R6Module):Fire(plr.Name)
	--task.wait(2)
	--c = plr.Character
	local script = Instance.new(\"Script\", c)
	for i,v in game.ServerStorage:GetChildren() do 
		v:Clone().Parent = script
	end
	--scandalous#6503
	--scandalous#6503
	--scandalous#6503
	--scandalous#6503

	local s = script:WaitForChild(\"ModelFolder\") --script:WaitForChild(\"Skull\")
	local m = script.Parent
	local plr = game:GetService(\"Players\"):GetPlayerFromCharacter(m)
	local f = s:WaitForChild(\"f\")
	for _,v in f:WaitForChild(\"v\"):GetDescendants() do
		if v:IsA(\"BasePart\") then
			local weldconstraint = Instance.new(\"WeldConstraint\")
			weldconstraint.Part0 = f.Torso
			weldconstraint.Part1 = v
			weldconstraint.Parent = v
			v.Anchored = false
			v.Massless = true
		end
	end
	local shield = s:WaitForChild(\"a\")
	shield:FindFirstChild(\"rbw\",true).Parent = f
	shield:FindFirstChild(\"lbw\",true).Parent = f

	local hw = script:WaitForChild(\"hatWearer\")
	hw.HumanoidRootPart.Anchored = true
	hw:PivotTo(CFrame.new(99999, 99999, 99999))

	local connect = Instance.new(\"Motor6D\", m)
	connect.Part0 = m.HumanoidRootPart
	connect.Part1 = f.HumanoidRootPart
	connect.C0 = CFrame.new(0, 0, -1)
	connect.Name = \"cn\"

	local fortnite = s:WaitForChild(\"fortnite\")
	local fortnite2 = s:WaitForChild(\"fortnite2\")

	local ui = script:WaitForChild(\"ui\")
	ui.Parent = plr.PlayerGui

	local clients = {}
	local speed = 1

	ui.spd.input.OnServerEvent:Connect(function(plr, v)
		for plr, r in clients do 
			r:FireClient(plr, \"speed\", v)
		end
	end)

	for i,v in fortnite.p:GetDescendants() do 
		if v.Name == \"s\"then
			v.Color = m.Torso.Color
		end
		if v:IsA(\"BasePart\")then
			local weld = Instance.new(\"WeldConstraint\")
			weld.Part0 = fortnite.t
			weld.Part1 = v
			weld.Parent = v
			v.Anchored = false
			v.Transparency = 0
			v.Massless = true
		end
	end
	fortnite.Parent = m
	local connect = Instance.new(\"Motor6D\", m)
	connect.Part0 = m.Torso
	connect.Part1 = fortnite.t
	connect.C0 = CFrame.new(0, -1, -.4)
	connect.C1 = CFrame.new(0, -1, -.4)
	connect.Name = \"fw\"

	for i,v in fortnite2.s:GetDescendants() do 
		if v.Name == \"s\"then
			v.Color = m.Torso.Color
		end
		if v:IsA(\"BasePart\")then
			local weld = Instance.new(\"WeldConstraint\")
			weld.Part0 = fortnite2.t
			weld.Part1 = v
			weld.Parent = v
			v.Anchored = false
			v.Transparency = 0
			v.Massless = true
		end
	end
	fortnite2.Parent = m
	local connect = Instance.new(\"Motor6D\", m)
	connect.Part0 = m.Torso
	connect.Part1 = fortnite2.t
	connect.C0 = CFrame.new(0, -1, -.4)
	connect.C1 = CFrame.new(0, -1, -.4)
	connect.Name = \"fw2\"

	shield.Parent = f
	local connect = Instance.new(\"Motor6D\", f)
	connect.Part0 = f.Torso
	connect.Part1 = shield.Torso
	connect.Name = \"bw\"

	for i,v in f:GetDescendants() do 
		--if v:IsA(\"BasePart\") and v.Name ~= \"HumanoidRootPart\" and v.Name ~= \"face\"and v.Name ~= \"shield\" and v.Name ~= \"d\" then
		--	v.Transparency = 0
		--	warn(\"made by scandalous#6503\")
		--end
		if v:IsA(\"BasePart\")then
			v.Anchored = false
			v.Massless = true
		end
		if v:IsA(\"Decal\") and v.Name ~= \"face\" then
			v.Transparency = 0
		end
	end
	for i,v in f.v:GetDescendants() do 
		if v:IsA(\"BasePart\") and v.Parent.Name == \"Aroused\" or v.Parent.Name == \"Opened\" then
			v.Transparency = 1
		end
	end
	shield.Torso.Transparency = 1

	for i,v in f:GetDescendants() do 
		if v.Name == \"s\" and v:IsA(\"BasePart\") then
			v.Color = f.Torso.Color
		end
	end
	for i,v in f:GetDescendants() do
		if v:IsA(\"BasePart\") then
			v.Massless = true
			v.CanCollide = v.Name ~= 'HAT_'
			if v:GetAttribute(\"DONTRENDER\") then
				v.Transparency = 1
			end
		end
	end
	f.Parent = workspace.Terrain --script

	s:Destroy()

	for i,v in m:GetChildren() do 
		if v.Name:find(\"irt\") or v.Name:find(\"nts\") then
			v:Destroy()
		end
	end

	local function replicate(player)
		local r = script.rep:Clone()
		r.m.Value = m 
		r.isPriv.Value = game.PrivateServerId == \"\"
		r.f.Value = f
		r.Parent = player.PlayerGui
		r.Disabled = false
		clients[player] = r:WaitForChild(\"input\")
		task.wait(0.1)
		r.input:FireClient(player, \"speed\", speed)
		if player == plr then
			r.input.OnServerEvent:Connect(function(plr, ...)
				local args = {...}
				if args[1] == \"tel\" then
					local TS = game:GetService(\"TeleportService\")
					local code = TS:ReserveServer(game.PlaceId)
					TS:TeleportToPrivateServer(game.PlaceId,code,{plr})
				end
				if args[1] == \"appearance\" then
					local model = game.Players:CreateHumanoidModelFromDescription(game.Players:GetHumanoidDescriptionFromUserId(game.Players:GetUserIdFromNameAsync(args[2])), Enum.HumanoidRigType.R6)
					--task.wait(0.5)
					local shirt = model:FindFirstChildOfClass('Shirt')
					local pants = model:FindFirstChildOfClass('Pants')
					local col = model:WaitForChild(\"Body Colors\")
					f.Head.Color = col.HeadColor3
					f.Torso.Color = col.TorsoColor3
					f['Right Arm'].Color = col.RightArmColor3
					f['Left Arm'].Color = col.LeftArmColor3
					f['Right Leg'].Color = col.RightLegColor3
					f['Left Leg'].Color = col.LeftLegColor3

					if f:FindFirstChildOfClass('Shirt') then
						f:FindFirstChildOfClass('Shirt'):Destroy()
					end
					if f:FindFirstChildOfClass('Pants') then
						f:FindFirstChildOfClass('Pants'):Destroy()
					end
					--f.Torso.Mesh.Color = col.TorsoColor3
					--f.Torso.Shirt.Color = col.TorsoColor3
					--f.Torso.Pants.Color = col.TorsoColor3
					if shirt then
						shirt.Parent = f
						--f.Torso.Shirt.TextureID = shirt.ShirtTemplate
						--f.Torso.Shirt.Transparency = 0.02
					else
						--f.Torso.Shirt.Transparency = 1
					end
					if pants then
						pants.Parent = f
						--f.Torso.Pants.TextureID = pants.PantsTemplate
						--f.Torso.Pants.Transparency = 0.02
						--f['Left Leg'].Pant.Transparency = 0.02
						--f['Left Leg'].Pant.TextureID = pants.PantsTemplate
						--f['Right Leg'].Pant.Transparency = 0.02
						--f['Right Leg'].Pant.TextureID = pants.PantsTemplate
					else
						--f.Torso.Pants.Transparency = 1
						--f['Left Leg'].Pant.Transparency = 1
						--f['Right Leg'].Pant.Transparency = 1
					end
					--f['Left Leg'].Mesh.Color = col.LeftLegColor3
					--f['Right Leg'].Mesh.Color = col.LeftLegColor3
					--f['Left Leg'].Pant.Color = col.RightLegColor3
					--f['Right Leg'].Pant.Color = col.RightLegColor3

					for i,v in f:GetDescendants() do 
						if v.Name == \"s\" and v:IsA(\"BasePart\") then
							v.Color = f.Torso.Color
						end
						if v.Name == \"HAT_\" then
							v:Destroy()
						end
					end
					for i,v in model:GetChildren() do 
						if v:IsA(\"Accessory\") then
							v.Parent = workspace
							hw.Humanoid:AddAccessory(v)
						end
					e