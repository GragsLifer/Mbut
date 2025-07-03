bj879504 = Instance.new("LocalScript")
obj879504.Name = "rep"
obj879504.Source = "local animations = require(script:WaitForChild(\"animations\"))
local anim = animations.cg
local animname = \"cg\"
local f = script.f.Value
local m = script.m.Value
local lplr = game:GetService(\"Players\").LocalPlayer
local ready = false
local ack = 0
--local sfx = {9114394387, 9114394933, 9114395812, 9114395606, 9114395414, 9114394397} --{2440889605,2440891382,2440889869,2440888376}
--local sfx2 = {9120643399, 9120643378, 9120643201, 9120643380}
local sfx = {9114455509,9114471507,9114471507,9114455509}
local sfx2 = {9120643399, 9120643378, 9120643201, 9120643380}
local speedMult = 1
local t = 0
local max = 80
local m2, m3, m1 = 0, 1, 1
local ismn = false
local isdn = false
local vT = false 
local function lerp(a, b, t)
	return a + (b - a) * t
end

local rel = false

script.input.OnClientEvent:Connect(function(t, v)
	if t == \"anim\" then
		anim = animations[v]
		animname = v
	end
	if t == \"speed\" then
		speedMult = v
	end
	if t == \"rel\"then
		ack = max - 1
		rel = true
	end
	if t == \"view\" and lplr.Name == m.Name then
		vT = not vT
		if vT then
			workspace.CurrentCamera.CameraSubject = f.Head
		else
			workspace.CurrentCamera.CameraSubject = m.Humanoid
		end
	end
end)

function fsfx(id, pit, vol)
	local sfx = Instance.new(\"Sound\", f.Head)
	sfx.Volume = vol or 0.7
	sfx.PlaybackSpeed = pit or 1
	sfx.SoundId = \"rbxassetid://\"..id 
	sfx:Play()
	task.delay(4, game.Destroy, sfx)
	return sfx
end

local cummodule = game:GetService('ReplicatedStorage'):WaitForChild('Cum')
local newcumshot, cm_ignore = require(cummodule)({f, m})

f.face.brow2.Transparency = 0
f.face.mouth2.Transparency = 1
f.face.mouth3.Transparency = 1
f.face.eyes2.Transparency = 1
f.face.mouth4.Transparency = 1
f.face.mouth5.Transparency = 1
for i,v in f.v:GetDescendants() do 
	if v.Name == \"d\" and v:IsA(\"BasePart\")then
		v.Transparency = 1
	end
end
for i,v in m.fortnite:GetDescendants() do 
	if v.Name == \"d\"and v:IsA(\"BasePart\")then
		v.Transparency = 1
	end
end
local canRun = false
if lplr.Name == m.Name then
	if script.isPriv.Value then
		local function callback(text)
			if text:find(\"Yes\") then
				game.StarterGui:SetCore(\"SendNotification\", 
					{
						Title = \"Teleporting...\";
						Text = \"Run the script again in the private server\";
						Duration = 20;
					}
				)
				script.input:FireServer(\"tel\")
			else 
				canRun = true
			end
		end


		local bindableFunction = Instance.new(\"BindableFunction\")
		bindableFunction.OnInvoke = callback



		game.StarterGui:SetCore(\"SendNotification\", 
			{

				Title = \"[Private Server]\";
				Text = \"Would you like some peace and quiet..~?\";
				Duration = math.huge;
				Callback = bindableFunction;
				Button1 = \"Yes.\";
				Button2 = \"No~?\"
			}
		)
	else 
		canRun = true
	end
	for _, v in m.Humanoid.Animator:GetPlayingAnimationTracks() do 
		v:Stop(0)
	end
	m.Animate:Destroy()
	task.wait(0.1)
	m.Humanoid.Animator:Destroy()
	local uis = game:GetService(\"UserInputService\")
	local camModeToggle = false
	local ui = lplr.PlayerGui.ui
	
	ui.cg.InputBegan:Connect(function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
			if rel then return end
			script.input:FireServer(\"anim\", \"cg\")
		end
	end)
	ui.cy.InputBegan:Connect(function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
			if rel then return end
			script.input:FireServer(\"anim\", \"cy\")
		end
	end)
	ui.dg.InputBegan:Connect(function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
			if rel then return end
			script.input:FireServer(\"anim\", \"dg\")
		end
	end)
	ui.dga.InputBegan:Connect(function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
			if rel then return end
			script.input:FireServer(\"anim\", \"dga\")
		end
	end)
	ui.bj.InputBegan:Connect(function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
			if rel then return end
			script.input:FireServer(\"anim\", \"bj\")
		end
	end)
	ui.bbj.InputBegan:Connect(function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
			if rel then return end
			script.input:FireServer(\"anim\", \"bbj\")
		end
	end)
	ui.anl.InputBegan:Connect(function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
			if rel then return end
			script.input:FireServer(\"anim\", \"acg\")
		end
	end)

	uis.InputBegan:Connect(function(inp, gp)
		if gp then return end
		if inp.KeyCode == Enum.KeyCode.One then
			if rel then return end
			script.input:FireServer(\"anim\", \"cg\")
		end
		if inp.KeyCode == Enum.KeyCode.Two then
			if rel then return end
			script.input:FireServer(\"anim\", \"cy\")
		end
		if inp.KeyCode == Enum.KeyCode.Three then
			if rel then return end
			script.input:FireServer(\"anim\", \"dg\")
		end
		if inp.KeyCode == Enum.KeyCode.Four then
			if rel then return end
			script.input:FireServer(\"anim\", \"bj\")
		end
		if inp.KeyCode == Enum.KeyCode.Five then
			if rel then return end
			script.input:FireServer(\"anim\", \"bbj\")
		end
		if inp.KeyCode == Enum.KeyCode.Six then
			if rel then return end
			script.input:FireServer(\"anim\", \"acg\")
		end
		if inp.KeyCode == Enum.KeyCode.Seven then
			if rel then return end
			script.input:FireServer(\"anim\", \"dga\")
		end
		--[[if inp.KeyCode == Enum.KeyCode.K then
			game.StarterGui:SetCore(\"ChatMakeSystemMessage\", {
				Text = \"Say the username below.\";
				Color = Color3.fromRGB(255, 50, 108);
				Font = Enum.Font.Code
			})	
			local ch
			ch = lplr.Chatted:Connect(function(m)
				ch:Disconnect()
				script.input:FireServer(\"appearance\", m)
				task.wait(0.05)
				game.StarterGui:SetCore(\"ChatMakeSystemMessage\", {
					Text = \"Loading...\";
					Color = Color3.fromRGB(255, 50, 108);
					Font = Enum.Font.Code
				})	
				xpcall(function()
					game.Players:GetUserIdFromNameAsync(m)
				end, function()
					game.StarterGui:SetCore(\"ChatMakeSystemMessage\", {
						Text = \"Unable to find username '\"..m..\"'\";
						Color = Color3.fromRGB(255, 50, 108);
						Font = Enum.Font.Code
					})	
				end)
			end)
		end]]
		if inp.KeyCode == Enum.KeyCode.C then
			camModeToggle = not camModeToggle
			if camModeToggle then
				local ff 
				local fov = 70

				ff = uis.InputChanged:Connect(function(i)
					if i.UserInputType == Enum.UserInputType.MouseWheel then
						fov += i.Position.Z * -15
						fov = math.clamp(fov, 1, 120)
					end
				end)
				
				while camModeToggle do 
					game:GetService(\"RunService\").RenderStepped:Wait()
					if anim.transparent then
						for i, v in m:GetDescendants() do 
							if v:IsA(\"BasePart\") and not v:IsDescendantOf(f)then
								if v.Parent.Name == \"p\" and v:IsA(\"UnionOperation\") then
									v.LocalTransparencyModifier = 1
								elseif v.Parent.Name ~= \"p\" then
									v.LocalTransparencyModifier = 1
								end
							end
						end
					end
					workspace.CurrentCamera.FieldOfView = lerp(workspace.CurrentCamera.FieldOfView, fov, 0.2)
					workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
					workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame:Lerp(f.Torso.CFrame * anim.c_offset, 0.4)
				end
				ff:Disconnect()
				for i, v in m:GetDescendants() do 
					if v:IsA(\"BasePart\")then
						v.LocalTransparencyModifier = 0
					end
				end
 				workspace.CurrentCamera.FieldOfView = 70
				workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
			end
		end
	end)
else 
	canRun = true
	script.Name = \"fakeRep\"
end
repeat task.wait() until canRun
task.defer(function()
	while true do 
		game:GetService(\"RunService\").Stepped:Wait()
		f.face.mouth3.Transparency = m3
		f.face.mouth2.Transparency = m2
		f.face.mouth.Transparency = m1
		for i,v in f:GetDescendants() do 
			if v:IsA(\"BasePart\")then
				v.CanCollide = false
				v.Massless = true
			end
		end
		--f.face.brow2.Transparency = m2
	end
end)

local plap = 0

local updating = false

local vag = f:WaitForChild('v')
local v_opened = vag:WaitForChild('Opened')
local v_aroused = vag:WaitForChild('Aroused')
local v_closed = vag:WaitForChild('Closed')

local cur_type
local set_vag = function(type)
	type = type or 0
	if cur_type == type then
		return
	end
	cur_type = type
	
	for i,v in v_opened:GetChildren() do 
		if v:IsA(\"BasePart\") then
			v.Transparency = 1
		end
	end
	for i,v in v_closed:GetChildren() do 
		if v:IsA(\"BasePart\") then
			v.Transparency = 1
		end
	end
	for i,v in v_aroused:GetChildren() do 
		if v:IsA(\"BasePart\") then
			v.Transparency = 1
		end
	end
	
	if type == 0 then
		for i,v in v_closed:GetChildren() do 
			if v:IsA(\"BasePart\") then
				v.Transparency = 0
			end
		end
	elseif t