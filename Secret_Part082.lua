otor] = motor.Transform:Lerp(pose, 1.4)
						end
					end
					local mp2 = {}
					if anim.m_done then
						for motor, pose in anim.m_done do 
							motor = m:FindFirstChild(motor, true)
							if motor then
								--mp2[motor] = motor.C0:Lerp(pose, 1.4)
								if motor.Name == 'fw' then
									mp2[motor] = motor.Transform:Lerp(pose, 1.4)
								else
									mp2[motor] = motor.C0:Lerp(pose, 1.4)
								end
							else
								mp2[motor] = motor.Transform:Lerp(pose, 1.4)
							end
						end
					end
					for i = 1, 250 do 
						sine += task.wait() * 23
						if m.Name == lplr.Name then
							lplr.PlayerGui.ui.Frame.start.bar.Size = lplr.PlayerGui.ui.Frame.start.bar.Size:Lerp(UDim2.fromScale(1, 0), 0.15)
							lplr.PlayerGui.ui.Frame.meter.bar.Size = lplr.PlayerGui.ui.Frame.meter.bar.Size:Lerp(UDim2.fromScale(1, 0), 0.15)
						end
						if anim.m_done then
							for motor, pose in anim.m_done do 
								motor = m:FindFirstChild(motor, true)
								if motor then
									local t = sine + anim.m_delay
									if motor.Name == \"Neck\"then
										t += anim.m_neck_delay
									elseif motor.Name:find(\"Hip\")then
										t += anim.m_hip_delay
									elseif motor.Name:find(\"Shoulder\")then
										t += anim.m_shoulder_delay
									end
									if mp2[motor] then
										if motor:IsA('Motor6D') then
											--local pivot = if motor.Name == 'fw' then motor.C1 else CFrame.new()
											--motor.C0 = pivot * motor.C0:Lerp(mp2[motor]:Lerp(pose,  0.5 + (math.sin(t)/2)), 0.15)
											if motor.Name == 'fw' then
												motor.Transform = motor.Transform:Lerp(mp2[motor]:Lerp(pose, 0.5 + (math.sin(t)/2)), 0.15)
											else
												motor.C0 = motor.C0:Lerp(mp2[motor]:Lerp(pose, 0.5 + (math.sin(t)/2)), 0.15)
											end
										elseif motor:IsA('Bone') then
											motor.Transform = motor.Transform:Lerp(mp2[motor]:Lerp(pose,  0.5 + (math.sin(t)/2)), 0.15)
										end
									end
								end
							end
						else
							for motor, pose in anim.m[1] do 
								motor = m:FindFirstChild(motor, true)
								if motor then
									local t = sine + anim.m_delay
									if motor.Name == \"Neck\"then
										t += anim.m_neck_delay
									elseif motor.Name:find(\"Hip\")then
										t += anim.m_hip_delay
									elseif motor.Name:find(\"Shoulder\")then
										t += anim.m_shoulder_delay
									end
									local e = 0.5 + (math.sin(t) / 2)
									if motor:IsA('Motor6D') then
										if motor.Name == 'fw' then
											motor.Transform = motor.Transform:Lerp(pose:Lerp(anim.m[2][motor.Name], e), lerpSpeed)
										else
											motor.C0 = motor.C0:Lerp(pose:Lerp(anim.m[2][motor.Name], e), lerpSpeed)
										end
									elseif motor:IsA('Bone') then
										motor.Transform = motor.Transform:Lerp(pose:Lerp(anim.m[2][motor.Name], e), lerpSpeed)
									end
								end
							end
						end

						for motor, pose in anim.f_done do 
							motor = f:FindFirstChild(motor, true)
							if motor then
								local t = sine + anim.f_delay
								if motor.Name == \"Neck\"then
									t += anim.f_neck_delay
								elseif motor.Name:find(\"Hip\")then
									t += anim.f_hip_delay
								elseif motor.Name:find(\"Shoulder\")then
									t += anim.f_shoulder_delay
								elseif motor.Name == \"bw\" or motor.Name == \"rbw\" or motor.Name == \"lbw\" then
									t += anim.bw_delay
								end
								if p2[motor] then
									if motor:IsA('Motor6D') then
										motor.C0 = motor.C0:Lerp(p2[motor]:Lerp(pose,  0.5 + (math.sin(t)/2)), 0.15)
									elseif motor:IsA('Bone') then
										motor.Transform = motor.Transform:Lerp(p2[motor]:Lerp(pose,  0.5 + (math.sin(t)/2)), 0.15)
									end
								end
							end
						end
					end
					for i = 1, 100 do 
						for motor, pose in anim.f_done do 
							motor = f:FindFirstChild(motor, true)
							if motor then
								local t = sine + anim.f_delay
								if motor.Name == \"Neck\"then
									t += anim.f_neck_delay
								elseif motor.Name:find(\"Hip\")then
									t += anim.f_hip_delay
								elseif motor.Name:find(\"Shoulder\")then
									t += anim.f_shoulder_delay
								elseif motor.Name == \"bw\" or motor.Name == \"rbw\" or motor.Name == \"lbw\" then
									t += anim.bw_delay
								end
								if p2[motor] then
									if motor:IsA('Motor6D') then
										if motor.Name == 'fw' then
											motor.Transform = motor.Transform:Lerp(p2[motor]:Lerp(pose,  0.5 + (math.sin(t)/2)), 0.15)
										else
											motor.C0 = motor.C0:Lerp(p2[motor]:Lerp(pose,  0.5 + (math.sin(t)/2)), 0.15)
										end
									elseif motor:IsA('Bone') then
										motor.Transform = motor.Transform:Lerp(p2[motor]:Lerp(pose,  0.5 + (math.sin(t)/2)), 0.15)
									end
								end
							end
						end
					end
					for i = 1, 50 do 
						task.wait()
						for motor, pose in anim.f[1] do 
							motor = f:FindFirstChild(motor, true)
							if motor then
								local t = sine + anim.f_delay
								if motor.Name == \"Neck\"then
									t += anim.f_neck_delay
								elseif motor.Name:find(\"Hip\")then
									t += anim.f_hip_delay
								elseif motor.Name:find(\"Shoulder\")then
									t += anim.f_shoulder_delay
								elseif motor.Name == \"bw\" or motor.Name == \"rbw\" or motor.Name == \"lbw\" then
									t += anim.bw_delay
								end
								local e = 0.5 + (math.sin(t) / 2) 
								if motor:IsA('Motor6D') then
									motor.C0 = motor.C0:Lerp(pose:Lerp(anim.f[2][motor.Name], e), i/50)
								elseif motor:IsA('Bone') then
									motor.Transform = motor.Transform:Lerp(pose:Lerp(anim.f[2][motor.Name], e), i/50)
								end
							end
						end
						for motor, pose in anim.m[1] do 
							motor = m:FindFirstChild(motor, true)
							if motor then
								local t = sine + anim.m_delay
								if motor.Name == \"Neck\"then
									t += anim.m_neck_delay
								elseif motor.Name:find(\"Hip\")then
									t += anim.m_hip_delay
								elseif motor.Name:find(\"Shoulder\")then
									t += anim.m_shoulder_delay
								end
								local e = 0.5 + (math.sin(t) / 2) 
								if motor:IsA('Motor6D') then
									if motor.Name == 'fw' then
										motor.Transform = motor.Transform:Lerp(pose:Lerp(anim.m[2][motor.Name], e), i/50)
									else
										motor.C0 = motor.C0:Lerp(pose:Lerp(anim.m[2][motor.Name], e), i/50)
									end
								elseif motor:IsA('Bone') then
									motor.Transform = motor.Transform:Lerp(pose:Lerp(anim.m[2][motor.Name], e), i/50)
								end
							end
						end

					end
					ismn = false
					f.face.mouth4.Transparency = 1
					f.face.mouth5.Transparency = 1
					f.face.eyes2.Transparency = 1
					f.face.eyes.Transparency = 0
					isdn = false
					local l, l2 = over25 and 1 or 0, over25 and 0 or 1
					m1 = l
					m2 = 1 
					m3 = l2
					ack = 0
					local sm = speedMult
					speedMult = 0
					task.defer(function()
						for i = 1, 350 do 
							task.wait()
							speedMult = lerp(0, sm, i/350)
						end
					end)
					rel = false
				end
			end
		end
	end		
	updating = false
end)
--end"
obj879504.Parent = game.ServerStorage
    local obj437534 = Instance.new("ModuleScript")
    obj437534.Name = "animations"
    obj437534.Source = "return {
	cg = {
		m_neck_delay = 1,
		m_hip_delay = 0,
		m_shoulder_delay = 1,
		f_neck_delay = -1.5,
		f_hip_delay = 0.5,
		f_shoulder_delay = 0,
		m_delay = 0,
		f_delay = 0.5,
		default = 10,
		sfx = 5.8,
		fortnite = CFrame.Angles(math.rad(-28), 0, 0),
		offset = CFrame.new(0, 0.1, -0.4) * CFrame.Angles(math.rad(12), 0, 0),
		shield_offset = CFrame.new(0,0,0),
		rshield_offset = CFrame.new(0.5,0.5,-0.5),
		lshield_offset = CFrame.new(-0.5,0.5,-0.5),
		bw_delay = -1,
		f_when_done = true,
		c_offset = CFrame.new(0, -1.4, -2) * CFrame.Angles(math.rad(-7), math.pi, 0),
		transparent = false,
		t_transparent = false,
		cumshot = true,
		f_done = {
			--[\"RootJoint\"] = CFrame.new(0, -0.67, -0.88) * CFrame.Angles(math.rad(-75.54), math.rad(-0.01), math.rad(179.98)) - Vector3.new(0, 0.2, 0) - Vector3.new(0, 0.1, 0);
			[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-77.89), math.rad(0), math.rad(179.98));
			[\"Left Hip\"] = CFrame.new(--[[0.03]] -0.36, -1.02--[[-1.07]], -0.35) * CFrame.fromOrientation(-math.rad(169.33), math.rad(48.17 + 90), -math.rad(-71.69)) * CFrame.new(0, 0, 1) * CFrame.Angles(0, 0, math.rad(80)) + Vector3.new(0, 0.6, -0.25);
			--[\"Left Hip\"] = CFrame.new(--[[0.03]] -.36 + .5, -1.07, -0.35) * CFrame.Angles(math.rad(169.33), -math.rad(48.17), -math.rad(-71.69));
			[\"Right Shoulder\"] = CFrame.new(1.05, -0.06, -0.08) * CFrame.Angles(math.rad(-3.52), math.rad(58.79), math.rad(-21.6));
			--[\"Right Hip\"] = CFrame.new(0.36 - .5, -1.02, -0.54) * CFrame.Angles(math.rad(169.81), -math.rad(-38.46), -math.rad(78.93));
			[\"Right Hip\"] = CFrame.new(0.36, -1.02, -0.35 --[[-0.54]]) * CFrame.fromOrientation(-math.rad(169.81), math.rad(-38.46 - 90), -math.rad(78.93)) * CFrame.new(0, 0, 1) * CFrame.Angles(0, 0, -math.rad(80)) + Vector3.new(0, 0.6, -0.25);
			[\"Left Shoulder\"] = CFrame.new(-0.78, 0