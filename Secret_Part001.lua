-- AUTO EXPORT SCRIPT --
local obj636559 = Instance.new("Camera")
obj636559.Name = "Camera"
obj636559.Parent = game.Workspace
local obj430811 = Instance.new("Terrain")
obj430811.Name = "Terrain"
obj430811.Size = Vector3.new(2044, 252, 2044)
obj430811.Position = Vector3.new(0, 0, 0)
obj430811.Anchored = true
obj430811.BrickColor = BrickColor.new("Medium stone grey")
obj430811.Parent = game.Workspace
local obj529986 = Instance.new("ModuleScript")
obj529986.Name = "Cum"
obj529986.Source = [[
local cumshots = {}
local cumgravity = 60

local rng = Random.new()
]]
function newcumshot(cframe, vel, ignore)
	local cum = script.cumshot:Clone()
	local points = {}
	local t0 = 0
	local extravel = Vector3.zero

	cum:ScaleTo(rng:NextNumber(0.03, 0.05))

	local sphere = cum.Sphere
	sphere.CFrame = cframe * CFrame.Angles(math.rad(90), 0, 0)
	sphere.Anchored = true
	sphere.CanCollide = false
	sphere.CanQuery = false
	sphere.CanTouch = false
	sphere.Massless = true

	for i = 1, 8 do
		local v = sphere['Bone.00'..i]
		if v then
			--v.Orientation = Vector3.zero
			points[#points + 1] = {v, 0, t0, v.WorldPosition, vel + extravel, false};
			t0 += i % 2 == 0 and 1 / 60 or 0;
			vel *= rng:NextNumber(0.925, 0.975)
			extravel = rng:NextUnitVector() * .1
			v.Position = Vector3.zero
		end
	end
	points[#points + 1] = {sphere.Bone, 0, t0, sphere.Bone.WorldPosition, vel + extravel, false};
	sphere.Bone.Position = Vector3.zero
	cum.Parent = workspace.CurrentCamera

	sphere.Transparency = 0.5
	cumshots[#cumshots + 1] = {
		cum = cum;
		mainpart = sphere;
		life = rng:NextNumber(5, 6);
		points = points;
		ignore = ignore;
	}
end

game:GetService('RunService').Heartbeat:Connect(function(dt)
	local j = 1
	for i = 1, #cumshots do
		local v = cumshots[i]
		cumshots[i] = nil
		if not v or not v.cum or not v.cum.Parent then
			continue
		end
		
		v.life -= dt
		if v.life <= 0 then
			if v.cum and not v.fading then
				v.fading = true
				game.TweenService:Create(v.mainpart, TweenInfo.new(4), {Transparency = 1}):Play()
				task.delay(4, game.Destroy, v.cum)
			end
		end

		local lastpos
		for x = 1, #v.points do
			local y = v.points[x]
			if y[2] >= y[3] then
				if not y[6] or not y[6].Parent then
					y[6] = nil
					local newvel = y[5] - (Vector3.yAxis * cumgravity * dt)
					local dtvel = (newvel + y[5]) * dt / 2
					y[5] = newvel
					local results = workspace:Raycast(y[1].WorldPosition, dtvel, v.ignore) --v.frames < 3 and v.ignore or nil)
					if results then
						if not v.hit then
							v.hit = results.Instance
							local weld = Instance.new('WeldConstraint')
							weld.Part0 = v.mainpart
							weld.Part1 = results.Instance
							weld.Parent = v.mainpart
							v.mainpart.Anchored = false
						end
						y[6] = results.Instance
						y[1].WorldCFrame = CFrame.new(results.Position, results.Position + results.Normal)
					else
						y[1].WorldPosition += dtvel
					end
				end
			else
				y[2] += dt
			end
			
			if lastpos then
				y[1].Transform = CFrame.fromOrientation(math.pi / 2, 0, 0)
				y[1].WorldCFrame = CFrame.new(lastpos, y[1].WorldPosition) + (y[1].WorldPosition - lastpos)
			elseif y[1].WorldPosition.X ~= y[4].X 
				and y[1].WorldPosition.Y ~= y[4].Y 
				and y[1].WorldPosition.Z ~= y[4].Z 
			then
				y[1].Transform = CFrame.fromOrientation(0, math.pi, 0)
				if typeof(y[4]) == 'CFrame' then
					y[1].WorldCFrame = y[4]
				else
					y[1].WorldCFrame = CFrame.new(y[4], y[1].WorldPosition) + (y[1].WorldPosition - y[4])
				end
			end
			
			if y[6] then
				if not y[7] then
					y[7] = y[6].CFrame:ToObjectSpace(y[1].WorldCFrame)
				end
				y[1].WorldCFrame = y[6].CFrame * y[7]
			end	

			y[4] = y[1].WorldPosition
			lastpos = y[4]
		end
		
		cumshots[j] = v
		j += 1
	end
	j = nil
end)

return function(ignore_list)
	local cm_ignore = RaycastParams.new()
	cm_ignore.FilterDescendantsInstances = ignore_list or {};
	cm_ignore.RespectCanCollide = true
	
	return newcumshot, cm_ignore
...
end]]
obj529986.Parent = game.ReplicatedStorage
    local obj420417 = Instance.new("Model")
    obj420417.Name = "cumshot"
    obj420417.Parent = obj529986
        local obj930887 = Instance.new("Folder")
        obj930887.Name = "InitialPoses"
        obj930887.Parent = obj420417
            local obj442935 = Instance.new("CFrameValue")
            obj442935.Name = "Sphere_Composited"
            obj442935.Parent = obj930887
            local obj571905 = Instance.new("CFrameValue")
            obj571905.Name = "Sphere_Original"
            obj571905.Parent = obj930887
            local obj446330 = Instance.new("CFrameValue")
            obj446330.Name = "Sphere_Initial"
            obj446330.Parent = obj930887
            local obj663272 = Instance.new("CFrameValue")
            obj663272.Name = "Armature_Composited"
            obj663272.Parent = obj930887
            local obj340313 = Instance.new("CFrameValue")
            obj340313.Name = "Armature_Original"
            obj340313.Parent = obj930887
            local obj100694 = Instance.new("CFrameValue")
            obj100694.Name = "Armature_Initial"
            obj100694.Parent = obj930887
            local obj524857 = Instance.new("CFrameValue")
            obj524857.Name = "Bone_Composited"
            obj524857.Parent = obj930887
            local obj906428 = Instance.new("CFrameValue")
            obj906428.Name = "Bone_Original"
            obj906428.Parent = obj930887
            local obj885426 = Instance.new("CFrameValue")
            obj885426.Name = "Bone_Initial"
            obj885426.Parent = obj930887
            local obj593746 = Instance.new("CFrameValue")
            obj593746.Name = "Bone.008_Composited"
            obj593746.Parent = obj930887
            local obj335935 = Instance.new("CFrameValue")
            obj335935.Name = "Bone.008_Original"
            obj335935.Parent = obj930887
            local obj946475 = Instance.new("CFrameValue")
            obj946475.Name = "Bone.008_Initial"
            obj946475.Parent = obj930887
            local obj693919 = Instance.new("CFrameValue")
            obj693919.Name = "Bone.007_Composited"
            obj693919.Parent = obj930887
            local obj572918 = Instance.new("CFrameValue")
            obj572918.Name = "Bone.007_Original"
            obj572918.Parent = obj930887
            local obj607955 = Instance.new("CFrameValue")
            obj607955.Name = "Bone.007_Initial"
            obj607955.Parent = obj930887
            local obj398525 = Instance.new("CFrameValue")
            obj398525.Name = "Bone.006_Composited"
            obj398525.Parent = obj930887
            local obj720755 = Instance.new("CFrameValue")
            obj720755.Name = "Bone.006_Original"
            obj720755.Parent = obj930887
            local obj350790 = Instance.new("CFrameValue")
            obj350790.Name = "Bone.006_Initial"
            obj350790.Parent = obj930887
            local obj151316 = Instance.new("CFrameValue")
            obj151316.Name = "Bone.005_Composited"
            obj151316.Parent = obj930887
            local obj108345 = Instance.new("CFrameValue")
            obj108345.Name = "Bone.005_Original"
            obj108345.Parent = obj930887
            local obj288490 = Instance.new("CFrameValue")
            obj288490.Name = "Bone.005_Initial"
            obj288490.Parent = obj930887
            local obj923456 = Instance.new("CFrameValue")
            obj923456.Name = "Bone.004_Composited"
            obj923456.Parent = obj930887
            local obj999256 = Instance.new("CFrameValue")
            obj999256.Name = "Bone.004_Original"
            obj999256.Parent = obj930887
            local obj460620 = Instance.new("CFrameValue")
            obj460620.Name = "Bone.004_Initial"
            obj460620.Parent = obj930887
            local obj588776 = Instance.new("CFrameValue")
            obj588776.Name = "Bone.003_Composited"
            obj588776.Parent = obj930887
            local obj241897 = Instance.new("CFrameValue")
            obj241897.Name = "Bone.003_Original"
            obj241897.Parent = obj930887
            local obj563182 = Instance.new("CFrameValue")
            obj563182.Name = "Bone.003_Initial"
            obj563182.Parent = obj930887
            local obj361484 = Instance.new("CFrameValue")
            obj361484.Name = "Bone.002_Composited"
            obj361484.Parent = obj930887
            local obj692737 = Instance.new("CFrameValue")
            obj692737.Name = "Bone.002_Original"
            obj692737.Parent = obj930887
            local obj888243 = Instance.new("CFrameValue")
            obj888243.Name = "Bone.002_Initial"
            obj888243.Parent = obj930887
            local obj154559 = Instance.new("CFrameValue")
            obj154559.Name = "Bone.001_Composited"
            obj154559.Parent = obj930887
            local obj413430 = Instance.new("CFrameValue")
            obj413430.Name = "Bone.001_Original"
            obj413430.Parent = obj930887
            local obj879914 = Instance.new("CFrameValue")
            obj879914.Name = "Bone.001_Initial"
         
